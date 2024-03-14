## SMD2PMF
This project will help to calculate Potential Mean Force (PMF) from Steered Molecular dynamics (SMD) simulation trajectories
This Repository is divided into two parts:

## 1. Extraction of Force :
only unix based commands were used, **force.sh** is designed to extract data from multiple log files following a specific pattern (`smd.log`, `smd1.log`, `smd2.log`, etc.), concatenate the extracted data into one output file, and perform certain operations on the combined data.

## Prerequisites

- Bash shell environment
- Log files in the format `smd.log`, `smd1.log`, `smd2.log`, etc.

## Usage

1. Place the script (`force.sh`) in the directory containing the log files.
2. Run the script using the command `./extract_logs.sh`.
3. Follow the prompts to enter the number of additional log files (excluding `smd.log`).

## Output

The script generates an output file named `force.dat` in the same directory, containing the extracted data from all log files. It removes the first 9 lines and lines containing "TS CURRENT_POSITION FORCE" from the combined output file.

## Example
Suppose you have log files named `smd.log`, `smd1.log`, `smd2.log`, and `smd3.log`. Running the script will extract data from each file, concatenate it into `force.dat`, and perform the specified operations on the combined data.

