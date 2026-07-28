README
MATLAB Simulation of Propagation Loss Characteristics in Wireless Communication Systems
Project Title

Analysis of Propagation Loss Characteristics of Sub-1 GHz, Mid-band, and mmWave Frequency Bands Using MATLAB

Overview

This project presents a MATLAB simulation to analyze the propagation loss characteristics of three major wireless communication frequency bands: Sub-1 GHz (900 MHz), Mid-band (3.5 GHz), and mmWave (28 GHz). The simulation is based on the Free Space Path Loss (FSPL) model and evaluates how propagation loss varies with operating frequency and communication distance.

The generated plots help visualize signal attenuation, making it easier to compare coverage performance among different spectrum bands used in modern wireless communication systems such as 4G, 5G, and future 6G networks.

Objectives
Compute the Propagation Loss (dB) for Sub-1 GHz, Mid-band, and mmWave frequency ranges using the Free Space Path Loss (FSPL) model.
Evaluate the impact of different operating frequencies on signal attenuation and coverage performance.
Analyze how communication distance affects propagation loss across different wireless spectrum bands.
Path Loss Model

The simulation uses the Free Space Path Loss (FSPL) equation:

FSPL (dB)=32.44+20log10(f)+20log10(d)

where:

f = Frequency (MHz)
d = Distance (km)

Simulation Parameters
Parameter	Value
Sub-1 GHz Frequency	900 MHz
Mid-band Frequency	3500 MHz
mmWave Frequency	28000 MHz
Distance Range	0.1–5 km
Fixed Distance	2 km
Path Loss Model	Free Space Path Loss (FSPL)

MATLAB Outputs

The program generates the following graphs:

Propagation Loss vs Communication Distance
Propagation Loss vs Frequency (at 1 km)
Propagation Loss vs Operating Frequency
Comparison of Propagation Loss Across Frequency Bands (Bar Chart)
Band-wise Propagation Loss Comparison (Line Plot)
Numerical display of propagation loss values at a fixed distance (2 km)

Expected Results
Propagation loss increases with communication distance.
Higher operating frequencies experience greater signal attenuation.
Sub-1 GHz provides the largest coverage area with the lowest propagation loss.
Mid-band offers a balance between coverage and data rate.
mmWave provides very high bandwidth but suffers from significant propagation loss, making it suitable for short-range, high-capacity communication.

Applications
4G LTE Network Planning
5G NR Deployment
6G Research
Wireless Communication System Design
Cellular Network Coverage Analysis
RF Propagation Studies
Academic and Laboratory Experiments
Software Requirements
MATLAB R2020a or later
No additional toolboxes are required.

Conclusion

This MATLAB simulation demonstrates the influence of operating frequency and communication distance on wireless signal propagation. The results show that Sub-1 GHz frequencies provide superior coverage, Mid-band frequencies achieve a balance between coverage and capacity, and mmWave frequencies deliver the highest data rates but require dense deployment due to increased propagation loss. These observations are consistent with the frequency allocation strategies used in modern 5G and emerging 6G wireless communication systems.