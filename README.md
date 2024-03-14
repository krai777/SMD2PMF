## SMD2PMF
This project will help to calculate Potential Mean Force (PMF) from Steered Molecular dynamics (SMD) simulation trajectories.
Steered molecular dynamics (SMD) is known for applying external steering forces in the right direction to accelerate the process, othervise due to energy barriers processes are too slow. SMD simulations steers a system by applying a constraint (e.g., a harmonic potential) that moves along a prescribed path in the configuration space.
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

## 2. Calculation of PMF (Potential Mean Force)
The potential mean force (PMF) is defined as free enrgy profile along the reaction coordinate and is determined through the Boltzmann-weighted averag over all degrees of freedom other than reaction coordinate. PMF not only captures the energetics of the process studied, but also provides an essential ingredient for fruther modeling of the process,  with all other degrees averaged out, the motion along the reaction coordinate is well approximated as a diffusive motion on the effective potential identifed as PMF. 
