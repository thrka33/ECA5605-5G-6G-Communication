Project Title

Simulation of NB-IoT Performance Under Coverage, Delay, Power Consumption, Throughput, and Packet Loss Using MATLAB

Overview

This project presents a MATLAB-based simulation to evaluate the performance of Narrowband Internet of Things (NB-IoT) communication over varying transmission distances. The simulation analyzes five key performance metrics—Coverage, Communication Delay, Power Consumption, Throughput, and Packet Loss—to understand the behavior of NB-IoT networks under different deployment conditions.

The program generates a single combined graph that compares all performance metrics with respect to communication distance and also displays the numerical results in a tabular format.

Objectives
To evaluate the coverage performance of NB-IoT over increasing communication distances.
To analyze the communication delay experienced by NB-IoT devices.
To study the power consumption characteristics of NB-IoT nodes.
To measure the throughput performance under varying distances.
To analyze packet loss and evaluate communication reliability.

Simulation Parameters

Parameter	Value

Communication Distance	-0.5–10 km
Number of Devices	-100
Coverage Range	-60–100 %
Delay	Distance-dependent
Power Consumption	Distance-dependent
Throughput	-40–220 kbps
Packet Loss	Distance-dependent

Performance Metrics

Coverage (%)

Represents the percentage of successful network coverage provided to NB-IoT devices. Coverage decreases gradually as the communication distance increases.

Communication Delay (ms)

Represents the transmission latency between the NB-IoT device and the base station. Delay increases with distance due to propagation and network overhead.

Power Consumption (mW)

Indicates the energy consumed by the NB-IoT device during communication. Power consumption increases slightly with transmission distance.

Throughput (kbps)

Represents the effective data transmission rate of the NB-IoT network. Throughput decreases as communication distance increases because of higher signal attenuation.

Packet Loss (%)

Represents the percentage of transmitted packets that fail to reach the receiver successfully. Packet loss increases with communication distance.

MATLAB Output

The simulation provides:

Combined performance graph showing all five metrics
Numerical results displayed in a MATLAB table
Comparative analysis of network performance over different communication distances
Expected Results
Coverage decreases as communication distance increases.
Communication delay increases with distance.
Power consumption gradually increases due to higher transmission requirements.
Throughput decreases with increasing distance.
Packet loss increases, reducing communication reliability over longer distances.

Applications

NB-IoT Network Performance Evaluation
Smart City Applications
Smart Metering Systems
Industrial Internet of Things (IIoT)
Environmental Monitoring
Precision Agriculture
Healthcare Monitoring Systems
Wireless Sensor Networks
Academic Research and Laboratory Experiments
Software Requirements
MATLAB R2020a or later
No additional MATLAB toolboxes are required.

Conclusion

This MATLAB simulation demonstrates the performance characteristics of NB-IoT communication under varying transmission distances. The results indicate that increasing communication distance leads to reduced coverage and throughput, while communication delay, power consumption, and packet loss increase. These observations highlight the trade-offs involved in designing reliable and energy-efficient NB-IoT networks, making the simulation useful for studying and optimizing IoT communication systems.
