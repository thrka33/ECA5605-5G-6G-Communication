Project Title

Simulation of MIMO Communication Performance and OFDMA User Throughput Analysis Using MATLAB

Overview

This project presents a MATLAB simulation that combines Multiple Input Multiple Output (MIMO) communication performance analysis with Orthogonal Frequency Division Multiple Access (OFDMA) throughput evaluation. The simulation analyzes the impact of Signal-to-Noise Ratio (SNR) on Bit Error Rate (BER) and system reliability, while also evaluating user throughput based on allocated Resource Blocks (RBs) and modulation efficiency.

The program generates a single figure containing four graphs and displays the simulation results in the MATLAB Command Window.

Objectives

To evaluate the Bit Error Rate (BER) performance of a 2×2 MIMO system under different SNR values.
To analyze system reliability and noise power variation with increasing SNR.
To calculate user throughput based on Resource Block allocation and modulation efficiency in an OFDMA system.
To compare the relationship between allocated Resource Blocks and achievable throughput.

System Parameters

Parameter	Value
MIMO Configuration	2 × 2
Modulation Scheme	BPSK
SNR Range	0–20 dB
Resource Block Bandwidth	180 kHz
Number of Users	5
Allocated Resource Blocks	10, 12, 8, 15, 5
Modulation Efficiency	2, 4, 6, 4, 2 bits/symbol

Performance Metrics

1. Bit Error Rate (BER)

The Bit Error Rate is evaluated for a 2×2 MIMO communication system using BPSK modulation over different Signal-to-Noise Ratio (SNR) values. Lower BER indicates improved communication quality.

2. System Reliability

Reliability is calculated as:

Reliability=1−BER

Higher reliability values indicate better communication performance.

3. Noise Power

Noise power decreases as the Signal-to-Noise Ratio increases, demonstrating improved channel conditions.

4. User Throughput

The throughput is calculated using:

Throughput= Allocated resource Blocks×Resource Block Bandwidth×Modulation Efficiency/10^6
	​


The result is expressed in Mbps.

5. Resource Blocks vs Throughput

The simulation illustrates how increasing the number of allocated Resource Blocks generally improves user throughput.

MATLAB Outputs

The simulation generates one figure containing four graphs:

BER vs SNR
Reliability and Noise Power vs SNR
User Throughput
Resource Blocks vs Throughput

The MATLAB Command Window displays:

User-wise Resource Block Allocation
Modulation Efficiency
User Throughput (Mbps)
Average BER
Average System Reliability

Expected Results

BER decreases as the Signal-to-Noise Ratio increases.
System reliability improves with higher SNR values.
Noise power decreases as SNR increases.
Users allocated more Resource Blocks achieve higher throughput.
Higher modulation efficiency results in improved data transmission rates.
The combined simulation demonstrates enhanced communication performance through MIMO diversity and efficient OFDMA resource allocation.

Applications

4G LTE Networks
5G New Radio (NR)
Massive MIMO Communication Systems
Wireless Broadband Networks
Mobile Communication Systems
Resource Allocation and Scheduling
Communication Engineering Laboratory Experiments
Academic Research and MATLAB-Based Simulation
Software Requirements
MATLAB R2020a or later
No additional MATLAB toolboxes are required.

Conclusion

This MATLAB simulation integrates MIMO communication performance and OFDMA throughput analysis into a unified framework. By evaluating Bit Error Rate (BER), system reliability, noise power, and user throughput, the simulation demonstrates the benefits of MIMO diversity and efficient OFDMA resource allocation in modern wireless communication systems. The results highlight how higher SNR values reduce BER and improve reliability, while optimized Resource Block allocation enhances user throughput, making the simulation valuable for learning, performance evaluation, and communication system analysis.