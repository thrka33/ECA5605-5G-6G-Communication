# Remote Patient Monitoring Communication Architecture using MATLAB

## Project Overview

This project simulates a **Remote Patient Monitoring (RPM) Communication Architecture** using MATLAB. The system models multiple patient nodes transmitting healthcare data to a monitoring center through a wireless communication network. The simulation evaluates the communication performance by analyzing key Quality of Service (QoS) metrics such as coverage, throughput, Bit Error Rate (BER), packet loss, delay, battery consumption, and packet delivery ratio.

---

## Objective

- Design a communication architecture for Remote Patient Monitoring.
- Simulate wireless communication between patient nodes and a healthcare server.
- Analyze network performance under different communication conditions.
- Evaluate QoS parameters for reliable healthcare data transmission.

---

## Features

- Random deployment of patient nodes.
- Coverage analysis with respect to communication distance.
- Throughput performance over simulation time.
- BER analysis for different Signal-to-Noise Ratio (SNR) values.
- Packet loss analysis with increasing number of patients.
- Network delay analysis.
- Battery level monitoring over time.
- Performance summary including:
  - Packet Delivery Ratio (PDR)
  - Packet Loss
  - Average Throughput
  - Average Delay
  - Average BER

---

## Simulation Parameters

| Parameter | Value |
|-----------|-------|
| Number of Patients | 100 |
| Simulation Area | 500 × 500 m |
| Simulation Time | 100 s |
| Packet Size | 1024 bits |
| Packet Rate | 1 packet/s |
| Transmit Power | 20 dBm |
| Bandwidth | 20 MHz |
| SNR Range | 0–20 dB |

---

## Performance Metrics

The MATLAB simulation evaluates the following parameters:

- Patient Node Deployment
- Coverage vs Distance
- Throughput vs Time
- BER vs SNR
- Packet Loss vs Number of Patients
- Delay vs Number of Patients
- Battery Level vs Time
- Packet Delivery Ratio (PDR)

---

## Expected Output

The program generates the following graphs:

1. Patient Node Deployment
2. Coverage vs Distance
3. Throughput vs Time
4. BER vs SNR
5. Packet Loss vs Number of Patients
6. Delay vs Number of Patients
7. Battery Level vs Time

The Command Window displays:

- Number of Patients
- Packet Delivery Ratio
- Packet Loss
- Average Throughput
- Average Delay
- Average BER

---

## MATLAB Functions Used

- rand()
- scatter()
- plot()
- semilogy()
- linspace()
- mean()
- erfc()
- fprintf()

---

## Working Principle

1. Patient nodes are randomly deployed inside the monitoring area.
2. Each patient periodically transmits health data packets.
3. Coverage is analyzed as communication distance increases.
4. Throughput is calculated during the simulation.
5. BER is computed for different SNR values.
6. Packet loss and network delay are evaluated as the number of patients increases.
7. Battery consumption is monitored throughout the simulation.
8. Overall communication performance is summarized using QoS metrics.

---

## Applications

- Smart Healthcare
- Remote Patient Monitoring
- Internet of Medical Things (IoMT)
- Telemedicine
- Hospital Monitoring Systems
- Home Healthcare Monitoring

---

## Requirements

- MATLAB R2020a or later
- Signal Processing Toolbox (optional)

---

## How to Run

1. Open MATLAB.
2. Copy the MATLAB code into a new script.
3. Save the file (for example: `RPM_Communication.m`).
4. Click **Run** or type:

```matlab
RPM_Communication
```

5. Observe the generated graphs and the performance summary in the Command Window.

---

## Expected Performance

- High Packet Delivery Ratio (~95%)
- Low Packet Loss
- Stable Throughput
- Low BER at higher SNR values
- Moderate Network Delay
- Gradual Battery Consumption

---

## Conclusion

The MATLAB simulation demonstrates an efficient Remote Patient Monitoring communication architecture capable of supporting multiple patient nodes with reliable wireless data transmission. The evaluated QoS metrics indicate that the system achieves high packet delivery, acceptable throughput, low bit error rate, and manageable delay, making it suitable for real-time healthcare monitoring applications.

---
**Author:** Tharika S  
**Course:** 5G/6G Communication Systems  
**Tool Used:** MATLAB