# Beamforming Performance Analysis using MATLAB

## Overview
This MATLAB project demonstrates the basic performance characteristics of beamforming for antenna arrays. The simulation analyzes how increasing the number of antenna elements improves beamforming gain, narrows the beam width, and illustrates the main lobe direction using a polar plot.

## Objectives

1. Analyze Beamforming Gain for different antenna array sizes.
2. Study Beam Width variation with increasing antenna elements.
3. Visualize the Main Lobe Direction in Analog Beamforming.

## Performance Metrics

### 1. Beamforming Gain
- Beamforming gain increases as the number of antenna elements increases.
- Gain is calculated using:

\[Gain = 10\log_{10}(N)\]

where **N** is the number of antenna elements.

### 2. Beam Width
- Beam width decreases as the antenna array size increases.
- Narrower beam width improves directional transmission and reduces interference.

### 3. Main Lobe Direction
- Displays the steering direction of the antenna array using a polar plot.
- Demonstrates directional signal transmission.

## Parameters Used

| Parameter | Value |
|-----------|-------|
| Antenna Elements | 2, 4, 8, 16, 32 |
| Beamforming Gain | 10log10(N) |
| Beam Width | 90°, 45°, 22.5°, 11.25°, 5.625° |
| Main Lobe Angles | -60°, -30°, 0°, 30°, 60° |

## Output Graphs

The program generates three plots:

1. Beamforming Gain vs Number of Antenna Elements
2. Beam Width vs Number of Antenna Elements
3. Main Lobe Direction (Polar Plot)

## Expected Results

- Beamforming gain increases with antenna array size.
- Beam width decreases as more antenna elements are added.
- The polar plot illustrates the beam steering directions.

## Applications

- 5G NR Massive MIMO
- 6G Wireless Communication
- Satellite Communication
- Radar Systems
- Smart Antenna Systems
- Wireless Sensor Networks

## Software Requirements

- MATLAB R2020a or later

## Conclusion

The simulation demonstrates the fundamental principles of beamforming. Increasing the number of antenna elements improves beamforming gain while reducing beam width, resulting in better signal directivity, higher coverage, and improved communication performance. The main lobe visualization further illustrates directional transmission, which is essential for modern wireless systems such as 5G and future 6G networks.