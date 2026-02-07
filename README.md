# FMCW Radar Simulation (MATLAB)

## 📡 Project Overview

This project demonstrates the **working principle of Frequency Modulated Continuous Wave (FMCW) Radar** using MATLAB simulation. FMCW radar is widely used in applications such as **automotive radar, altimeters, navigation systems, and defense radar** because of its ability to measure target **range and velocity** accurately.

The project generates a **linear frequency-modulated (chirp) signal**, simulates target reflection with time delay, performs mixing (beat signal generation), and estimates the **target distance** from the beat frequency.

---

## 🎯 Objectives

* To understand the principle of FMCW radar
* To generate transmit and receive chirp signals
* To estimate target range using beat frequency
* To visualize FMCW radar signals using MATLAB

---

## ⚙️ Methodology

1. Generate FMCW transmit chirp signal
2. Simulate target echo with time delay
3. Mix transmitted and received signals
4. Obtain beat frequency
5. Calculate target range using radar equations

---

## 📐 Key Equations

* **Chirp slope:**
  S = B / T

* **Time delay:**
τ = 2R / c

* **Beat frequency:**
  f_b = S × τ

* **Target range:**
  R = (c × f_b) / (2S)

where:

* ( B ) = Bandwidth
* ( T ) = Chirp time
* ( c ) = Speed of light
* ( R ) = Target range

---

## 🧪 Simulation Details

* Platform: **MATLAB (without toolboxes)**
* Target distance: **100 meters (example)**
* Output includes time-domain signals and beat frequency plot

---

## 📊 Output

The simulation successfully estimates the **actual target distance**, matching the expected theoretical value. Output plots are saved as image files.

---

## 📁 Files Included

* `FMCW.m` – MATLAB source code
* `FMCW_output_fig.png` – Output waveform/plot
* `README.md` – Project documentation

---

## 🚀 Applications

* Automotive radar systems
* Airborne radar and altimeters
* Defense and surveillance
* Navigation and obstacle detection

---

## ✨ Author

Manyam Lohitha

