Title

Simulation of 5G NR Numerology Parameters Using MATLAB

Objective

To simulate and analyze the relationship between numerology index, subcarrier spacing, OFDM symbols per slot, and slot duration in a 5G New Radio (NR) system using MATLAB.

Description

This MATLAB program demonstrates the fundamental numerology concept of 5G NR. It visualizes how subcarrier spacing changes with numerology index, verifies the number of OFDM symbols per slot, and illustrates the reduction in slot duration as subcarrier spacing increases. The results help in understanding the flexible frame structure of 5G NR.

Parameters Used

Numerology Index (μ): 0, 1, 2, 3, 4
Subcarrier Spacing: 15, 30, 60, 120, 240 kHz
OFDM Symbols per Slot: 14
Slot Duration: 1, 0.5, 0.25, 0.125, 0.0625 ms

Software Requirements

MATLAB 

Steps to Run

Open MATLAB.
Create a new script and paste the provided MATLAB code.
Save the file (e.g., NR_Numerology_Analysis.m).
Click Run or type the filename in the MATLAB Command Window.
Observe the generated figure containing three subplots.

Output

The program generates a single figure with three plots:

Subcarrier Spacing vs. Numerology Index
OFDM Symbols per Slot vs. Subcarrier Spacing
Slot Duration vs. Subcarrier Spacing
Result

The simulation demonstrates that:

Subcarrier spacing doubles with each increase in numerology index.
Each slot contains 14 OFDM symbols for normal cyclic prefix.
Slot duration decreases as subcarrier spacing increases, enabling lower latency communication in 5G NR.

Applications

5G NR Physical Layer Analysis
Wireless Communication Laboratories
OFDM System Study
5G Network Performance Analysis
Academic and Research Projects

Conclusion

The MATLAB simulation successfully illustrates the flexible numerology structure of 5G NR. The results show how increasing subcarrier spacing reduces slot duration while maintaining a constant number of OFDM symbols per slot, highlighting the adaptability of 5G NR for diverse communication scenarios.