# Smart Car Parking System

## Project Overview
The "Smart Car Parking System" addresses urban parking challenges by combining modern technology with digital system design. This system incorporates motion sensors, keypads, servo motors, magnetic sensors, and LED indicators to streamline parking management. Its primary goal is to enhance parking efficiency, reduce time spent searching for slots, and improve security.

### Key Features:
1. **Vehicle Detection:** Motion sensors identify vehicles approaching the parking entrance.
2. **Access Control:** A 3-digit keypad enables users to input a password for access. Correct entries open the gate via a servo motor.
3. **Slot Monitoring:** Magnetic sensors and LEDs indicate slot occupancy (green for vacant, red for occupied).
4. **Integrated Management:** Real-time slot availability updates optimize parking operations.

## How It Works

1. **Entry Process:**
    - A motion sensor detects a vehicle.
    - The system activates a keypad for password input.
    - If the correct password is entered, the servo motor opens the gate.

2. **Parking Slot Monitoring:**
    - Each slot is equipped with a magnetic sensor.
    - Occupancy data updates an LED display for user convenience.

3. **Exit Process:**
    - The system verifies the exit password.
    - The servo motor opens the gate upon successful verification.

## References
For a detailed technical explanation, including design architecture, FSM diagrams, hardware implementation, and simulation results, refer to the [full project report](https://github.com/dn3ndra/smart-parking-system-verilog/blob/bf351f2e481c81f2fd5ced01d63a0a7716a93ad3/FullReport-Kelompok%20Wirus-SmartCarParkingSystemVerilog.pdf).
