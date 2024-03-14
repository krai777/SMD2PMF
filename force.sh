######### Bash script for extracting force data from multiple log file #########
#####author: Kunal Rai #########
#####for more detail follow README######

#!/bin/bash

# Number of additional log files
read -p "Enter the number of additional log files (excluding smd.log): " num_files

# Define the output file
output_file="force.dat"

# Process the first file (smd.log)
awk '/SMD/ {for(i=2; i<=NF; i++) printf "%s ", $i; printf "\n"}' smd.log > "$output_file"

# Loop through additional log files (smd1.log, smd2.log, etc.)
for ((i=1; i<=$num_files; i++)); do
    logfile="smd${i}.log"
    # Extract data using awk and append to the output file
    awk '/SMD/ {for(i=2; i<=NF; i++) printf "%s ", $i; printf "\n"}' "$logfile" >> "$output_file"
done

# Remove the first 9 lines from the output file
sed -i '1,9d' "$output_file"

# Remove lines containing "TS POSITION" from the output file
sed -i '/TS CURRENT_POSITION FORCE/d' "$output_file"
sed -i '/SMD/d' "$output_file"

