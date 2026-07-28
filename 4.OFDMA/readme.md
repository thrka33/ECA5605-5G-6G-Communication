Project Title

Simulation of Orthogonal Frequency Division Multiple Access (OFDMA) Resource Block Allocation, Utilization, and Throughput Analysis Using MATLAB

Overview

This project presents a MATLAB simulation of Orthogonal Frequency Division Multiple Access (OFDMA), a multiple access technique widely used in modern wireless communication systems such as 4G LTE and 5G NR. The simulation demonstrates how available Resource Blocks (RBs) are allocated among multiple users and evaluates system performance through Resource Block Utilization and User Throughput.

The program combines all objectives into a single figure containing four graphs and displays the simulation results in the MATLAB Command Window.

Objectives

To simulate OFDMA Resource Block (RB) allocation among multiple users.
To calculate Resource Block Utilization for each user.
To evaluate user throughput based on allocated Resource Blocks and modulation efficiency.
To analyze the relationship between allocated Resource Blocks and achievable throughput.

System Parameters

Parameter	Value
System Bandwidth	10 MHz
Resource Block Bandwidth	180 kHz
Total Resource Blocks	55
Number of Users	5
Allocated RBs	12, 10, 9, 8, 11
Modulation Efficiency	2, 4, 6, 4, 2 bits/symbol

Performance Metrics

1. Resource Block Allocation

The available Resource Blocks are assigned to multiple users based on system requirements. This demonstrates efficient bandwidth sharing among users.

2. Resource Block Utilization

The utilization percentage is calculated using:

Utilization (%)=
Total RBs/Allocated RBs×100

This indicates how effectively the available radio resources are utilized by each user.

3. User Throughput

The throughput is calculated using:

Throughput=Allocated RBs×RB Bandwidth×Modulation Efficiency/10^6
	​


The result is expressed in Mbps.

4. Resource Blocks vs Throughput

The simulation compares allocated Resource Blocks with user throughput, illustrating that throughput generally increases as more Resource Blocks are assigned.

MATLAB Outputs

The simulation generates one figure containing four graphs:

Resource Block Allocation per User
Resource Block Utilization (%)
User Throughput (Mbps)
Resource Block Allocation vs Throughput

Additionally, the MATLAB Command Window displays:

Total System Bandwidth
Resource Block Bandwidth
Total Resource Blocks
User-wise Resource Block Allocation
Resource Utilization
User Throughput

Expected Results

Resource Blocks are distributed among multiple users.
Users with more allocated Resource Blocks achieve higher throughput.
Resource utilization varies according to the number of Resource Blocks assigned.
Higher modulation efficiency further improves user throughput.
The simulation demonstrates efficient spectrum utilization using OFDMA.

Applications

4G LTE Networks
5G New Radio (NR)
Wireless Broadband Communication
Mobile Communication Systems
Resource Scheduling Algorithms
Spectrum Management Studies
Communication Engineering Laboratory Experiments
Academic Research and Simulation
Software Requirements
MATLAB R2020a or later
No additional MATLAB toolboxes are required.

Conclusion

This MATLAB simulation demonstrates the fundamental concepts of Orthogonal Frequency Division Multiple Access (OFDMA) by analyzing Resource Block Allocation, Resource Utilization, and User Throughput. The results show how efficient allocation of Resource Blocks and appropriate modulation schemes improve overall network performance and spectrum efficiency. The simulation provides a practical platform for understanding OFDMA resource management and serves as an effective educational tool for wireless communication studies.