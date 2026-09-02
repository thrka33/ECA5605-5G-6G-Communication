# Industrial 5G/6G Network Design and Validation

## ECA5605 – 5G/6G Communication Systems

### Project Title

**Design and Performance Evaluation of a Private 5G Network for Smart Factory and Connected Transportation Using MATLAB**

---

## 1. Project Overview

This project presents the design and performance evaluation of a private 5G wireless communication network for a smart manufacturing factory integrated with an automated material-handling and connected transportation zone.

The proposed network supports industrial robots, Automated Guided Vehicles (AGVs), machine-monitoring sensors, surveillance systems and other connected industrial devices. The architecture combines private 5G, Massive MIMO, beamforming, network slicing and Multi-access Edge Computing (MEC) to satisfy different industrial communication requirements.

Three major 5G service categories are considered:

* **URLLC** – Industrial robot and AGV control
* **eMBB** – High-data-rate video and monitoring
* **mMTC** – Large-scale industrial IoT sensors

MATLAB is used to simulate and evaluate the proposed network under different distances, device densities and traffic loads.

---

## 2. Problem Statement

Modern smart factories require reliable, low-latency and scalable wireless communication for connecting machines, vehicles, robots and sensors. Conventional wireless networks may experience performance degradation when the number of devices and traffic load increase.

This project addresses these challenges by designing a private 5G network capable of supporting critical industrial communication, high-throughput applications and massive IoT connectivity. The proposed system is evaluated using measurable performance parameters including SINR, BER, throughput, spectral efficiency, latency, reliability, coverage and energy efficiency.

---

## 3. Objectives

The main objectives of this project are:

1. To design a private 5G network for a smart factory.
2. To select a suitable spectrum band for industrial communication.
3. To design a 5G NR RAN using Massive MIMO and beamforming.
4. To implement URLLC, eMBB and mMTC network slices.
5. To select a suitable waveform and numerology.
6. To design an efficient multiple-access and resource-allocation strategy.
7. To evaluate the proposed network using MATLAB.
8. To analyze SINR, BER, throughput, spectral efficiency, latency, reliability and coverage.
9. To evaluate network performance under different device densities and traffic loads.
10. To compare a conventional 5G design with the proposed industrial 5G design.
11. To apply AI/ML for industrial network traffic prediction.
12. To analyze an industrial 5G security threat and mitigation strategy.
13. To evaluate the migration path from private 5G toward 6G technologies.

---

## 4. Proposed System

The proposed system uses a private 5G network deployed within a smart factory.

### Industrial Devices

* Automated Guided Vehicles (AGVs)
* Industrial robots
* Machine sensors
* Industrial controllers
* Surveillance cameras
* Connected transportation systems

### Network Components

* 5G User Equipment (UE)
* Private 5G gNB
* Massive MIMO antenna array
* Beamforming system
* 5G Core
* Network slices
* MEC server
* Industrial cloud

---

## 5. System Architecture

```text
                         SMART FACTORY
                              |
          +-------------------+-------------------+
          |                   |                   |
         AGVs              ROBOTS             SENSORS
          |                   |                   |
          +-------------------+-------------------+
                              |
                              v
                       5G USER DEVICES
                              |
                              v
                  +-----------------------+
                  |      PRIVATE 5G       |
                  |         gNB           |
                  |                       |
                  |    Massive MIMO       |
                  |    Beamforming        |
                  |    Scheduler          |
                  +-----------+-----------+
                              |
               +--------------+--------------+
               |              |              |
             URLLC          eMBB           mMTC
               |              |              |
          AGV/Robot        Video          Sensors
           Control       Monitoring
               |              |              |
               +--------------+--------------+
                              |
                              v
                     +----------------+
                     |    5G CORE     |
                     +--------+-------+
                              |
                              v
                     +----------------+
                     |      MEC       |
                     |   Edge AI      |
                     | Monitoring     |
                     | Control        |
                     +--------+-------+
                              |
                              v
                     INDUSTRIAL CLOUD
```

---

## 6. Spectrum Design

A representative **3.5 GHz-class mid-band** is selected as the primary spectrum for the proposed private 5G network.

The mid-band provides a suitable balance between coverage, propagation characteristics and capacity for industrial environments.

A complementary mmWave layer can be deployed in high-capacity areas such as:

* Video monitoring zones
* Warehouse hotspots
* High-speed data-transfer areas

mmWave is not selected as the only network layer because its propagation is more sensitive to distance and blockage.

---

## 7. 5G RAN Design

The proposed RAN incorporates:

### Massive MIMO

Massive MIMO uses a large number of antenna elements to improve spatial multiplexing and increase network capacity.

### Beamforming

Beamforming directs radio energy toward the intended device. It improves received signal strength and helps reduce interference.

### Dynamic Resource Allocation

Radio resources are dynamically assigned based on:

* Device requirements
* Traffic load
* Channel quality
* Service priority
* Network slice

---

## 8. Network Slicing

Three logical network slices are proposed.

| Slice | Application           | Priority  |
| ----- | --------------------- | --------- |
| URLLC | AGV and robot control | Very High |
| eMBB  | CCTV and video        | High      |
| mMTC  | Industrial sensors    | Medium    |

### URLLC

Used for safety-critical and time-sensitive industrial communication.

### eMBB

Used for high-data-rate applications such as video monitoring and large industrial data transfers.

### mMTC

Used to connect large numbers of low-data-rate industrial sensors.

---

## 9. Waveform and Numerology

The proposed network uses:

* Waveform: **CP-OFDM**
* Multiple access: **OFDMA**
* Subcarrier spacing: **30 kHz**
* Numerology: **μ = 1**
* Bandwidth: **100 MHz**

Dynamic resource allocation is used to efficiently distribute time-frequency resources between industrial devices.

URLLC traffic receives high scheduling priority, while eMBB and mMTC traffic are allocated resources according to their requirements.

---

## 10. Simulation Methodology

MATLAB is used to evaluate the proposed network.

### Simulation Parameters

| Parameter         |          Value |
| ----------------- | -------------: |
| Carrier Frequency |        3.5 GHz |
| Bandwidth         |        100 MHz |
| Transmit Power    |         30 dBm |
| Distance          |       10–200 m |
| Device Density    | 50–500 devices |
| Traffic Load      |        20–100% |
| Conventional MIMO |            2×2 |
| Proposed MIMO     |   Massive MIMO |
| Proposed Antennas |   64 TX / 8 RX |
| Noise Figure      |           7 dB |

---

## 11. Alternative Designs

Two designs are evaluated.

### Design A – Conventional 5G

* 2×2 MIMO
* No beamforming
* Conventional resource allocation
* Lower implementation complexity

### Design B – Proposed Industrial 5G

* Massive MIMO
* Beamforming
* Dynamic resource allocation
* Industrial network slicing
* MEC support

The two designs are compared in terms of performance, scalability, latency, reliability, coverage and complexity.

---

## 12. Performance Parameters

The MATLAB simulation evaluates the following parameters:

### SINR

Signal-to-Interference-plus-Noise Ratio is used to measure wireless link quality.

### BER

Bit Error Rate represents the probability of incorrectly received bits.

### Throughput

Throughput represents the amount of useful data transmitted per second.

### Spectral Efficiency

Spectral efficiency represents the amount of information transmitted per unit bandwidth.

### Latency

Latency represents the communication delay experienced by industrial traffic.

### Reliability

Reliability represents the ability of the network to successfully deliver industrial communication.

### Coverage

Coverage is evaluated using an SINR threshold.

### Energy Efficiency

Energy efficiency evaluates the amount of useful data delivered for the energy consumed.

---

## 13. MATLAB Simulation Files

The MATLAB simulation is provided in:

```text
MATLAB/
│
├── industrial_5g_simulation.m
├── industrial_5G_results.csv
└── industrial_5G_results.mat
```

The MATLAB program generates performance graphs for:

* SINR vs Distance
* BER vs Distance
* Throughput vs Distance
* Spectral Efficiency vs Distance
* Latency vs Distance
* Throughput vs Device Density
* Latency vs Device Density
* Reliability vs Device Density
* Throughput vs Traffic Load
* Latency vs Traffic Load

---

## 14. AI/ML Module

A lightweight AI/ML module based on **linear regression** is implemented for industrial traffic prediction.

Historical traffic-load data is used to train a regression model. The model predicts future traffic demand and can assist the network scheduler in proactively allocating radio resources.

### AI/ML Objective

The predicted traffic information can be used to:

* Detect increasing network demand
* Predict congestion
* Allocate resources proactively
* Improve network utilization
* Support intelligent network management

The AI/ML implementation is provided in:

```text
AI_ML/
│
├── traffic_prediction.m
└── AI_Traffic_Prediction.csv
```

---

## 15. Security Analysis

Industrial 5G networks connect critical machines, vehicles and control systems. Unauthorized access to industrial devices or network slices can result in data leakage or disruption of industrial operations.

The proposed mitigation mechanisms include:

* Strong device authentication
* Encryption
* Role-based access control
* Network-slice isolation
* Continuous network monitoring
* Anomaly detection
* Secure MEC communication

Critical URLLC traffic should be logically isolated from less critical services to reduce the impact of security incidents.

---

## 16. 6G Readiness

The proposed private 5G architecture provides a foundation for future 6G migration.

Potential technologies include:

### AI-Native Networking

AI can automatically optimize:

* Resource allocation
* Traffic management
* Beamforming
* Network slicing
* Anomaly detection

### Sub-THz Communication

Future sub-THz systems can provide extremely high data rates for advanced industrial applications.

### Reconfigurable Intelligent Surfaces

RIS can intelligently control radio propagation and improve coverage in difficult industrial environments.

### Integrated Sensing and Communication

ISAC allows communication infrastructure to simultaneously provide sensing and communication capabilities, enabling applications such as positioning, object detection and industrial monitoring.

---

## 17. Expected Results

The proposed Massive-MIMO and beamforming architecture is expected to provide:

* Higher SINR
* Lower BER
* Higher throughput
* Improved spectral efficiency
* Lower latency
* Higher reliability
* Better scalability
* Improved coverage
* Better performance under high device density

The actual numerical results are obtained from the MATLAB simulation.

---

## 18. Project Structure

```text
Industrial-5G-Network-Design/
│
├── README.md
│
├── MATLAB/
│   ├── industrial_5g_simulation.m
│   ├── industrial_5G_results.csv
│   └── industrial_5G_results.mat
│
├── AI_ML/
│   ├── traffic_prediction.m
│   └── AI_Traffic_Prediction.csv
│
├── ARCHITECTURE/
│   └── private_5G_architecture.png
│
├── FIGURES/
│   ├── SINR_vs_Distance.png
│   ├── BER_vs_Distance.png
│   ├── Throughput_vs_Distance.png
│   ├── Spectral_Efficiency.png
│   ├── Latency_vs_Distance.png
│   ├── Throughput_vs_Device_Density.png
│   ├── Latency_vs_Device_Density.png
│   ├── Reliability_vs_Device_Density.png
│   ├── Throughput_vs_Traffic_Load.png
│   └── Latency_vs_Traffic_Load.png
│
└── REPORT/
    └── Industrial_5G_Network_Design_and_Validation.pdf
```

---

## 19. Technologies Used

* MATLAB
* MATLAB/5G communication concepts
* CP-OFDM
* OFDMA
* Massive MIMO
* Beamforming
* Private 5G
* Network Slicing
* MEC
* Linear Regression
* AI/ML

---

## 20. Course Outcome Mapping

### CO3

The project applies waveform generation, numerology, multiple access and resource allocation concepts for efficient wireless transmission.

### CO4

The project develops a private 5G-enabled industrial communication architecture using MEC and IoT connectivity for smart-factory applications.

### CO5

The project evaluates advanced technologies including industrial communication, connected vehicles, AI-based optimization, security mechanisms and future 6G technologies.

---

## 21. SDG Mapping

### SDG 9 – Industry, Innovation and Infrastructure

The project supports intelligent industrial infrastructure through private 5G connectivity, automation, edge computing and advanced wireless technologies.

### SDG 11 – Sustainable Cities and Communities

Connected transportation and intelligent communication infrastructure can support safer, more efficient and connected industrial and transportation environments.

---

## 22. Applications

The proposed system can be applied to:

* Smart manufacturing
* Industrial automation
* AGV communication
* Robot control
* Predictive maintenance
* Industrial IoT
* Warehouse automation
* Connected transportation
* Video surveillance
* Edge AI
* Machine monitoring

---

## 23. Advantages

* Low-latency industrial communication
* High reliability
* High data throughput
* Scalable device connectivity
* Improved interference management
* Dedicated network slices
* Local MEC processing
* Support for mobile industrial devices
* AI-assisted network optimization
* 6G migration capability

---

## 24. Limitations

The MATLAB simulation uses an analytical engineering model and representative system parameters. Real industrial deployments may experience additional effects such as multipath propagation, blockage, antenna characteristics, hardware impairments, synchronization errors and complex interference conditions.

Future work can incorporate detailed 3GPP channel models, real industrial measurement data and hardware-based validation.

---

## 25. Future Enhancements

Future development can include:

1. Real-time industrial traffic prediction using LSTM.
2. Reinforcement-learning-based resource allocation.
3. Detailed 3GPP channel modelling.
4. Hardware-based private 5G testing.
5. mmWave industrial hotspot simulation.
6. RIS-assisted factory coverage.
7. ISAC-based industrial sensing.
8. Digital-twin-based network optimization.
9. Advanced cybersecurity monitoring.
10. Migration toward AI-native 6G networks.

---

## 26. Conclusion

This project develops a private 5G network architecture for a smart factory and connected transportation environment. The proposed solution combines Massive MIMO, beamforming, network slicing, MEC, suitable waveform and dynamic resource allocation to support diverse industrial communication requirements.

MATLAB-based simulation is used to evaluate the network under different distances, device densities and traffic loads. The performance comparison between conventional 5G and the proposed industrial 5G design provides quantitative evidence for the engineering decisions.

The addition of AI-based traffic prediction enables proactive network optimization, while the security analysis addresses the protection of critical industrial communication. Finally, the integration of AI-native networking, sub-THz communication, RIS and ISAC provides a roadmap for future migration toward industrial 6G systems.

---

## 27. References

The final report should include authoritative references from:

* 3GPP specifications
* ITU-R recommendations and reports
* IEEE standards
* IEC/TSN-related standards
* Relevant 5G/6G research papers
* MATLAB documentation

The references should be formatted according to the citation style specified by the institution.

---

## 28. Author

**Course:** ECA5605 – 5G/6G Communication Systems
**Assignment:** Industrial 5G/6G Network Design and Validation
**Project:** Design and Performance Evaluation of a Private 5G Network for Smart Factory and Connected Transportation Using MATLAB
