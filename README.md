# ATTENDANCE-VERIFICATION
# Blockchain-based Attendance Verification System

This Solidity smart contract allows for decentralized, secure, and tamper-proof attendance verification and rewards distribution using blockchain technology. The contract enables an admin to mark attendance, track attendance records, and distribute rewards in the form of tokens.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Contract Details](#contract-details)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

![image](https://github.com/user-attachments/assets/b49205a4-fb55-47cc-9837-afee21cc5d49)

## Overview

The `Attendance` contract is designed to facilitate the tracking and rewarding of student attendance in an educational environment. It leverages blockchain's transparency and immutability to ensure that attendance records are accurate and cannot be tampered with.

## Features

- **Admin Control**: Only the contract admin (deployer) can mark attendance, reset records, and control rewards.
- **Immutable Attendance Records**: Once marked, attendance cannot be altered, ensuring integrity.
- **Automatic Rewards**: Students are rewarded with tokens each time they attend a class.
- **Attendance Check**: Anyone can view the attendance status and rewards of a student.

## Contract Address :0xA3146357964A86a94aBBA06E42f164e5B4552eC0

### State Variables

- **`admin`**: The address of the contract admin (set to the deployer by default).
- **`attendanceCount`**: Total number of attendance records marked.
- **`rewardAmount`**: Number of tokens awarded per attendance (default is 1).

### Structs

- **`AttendanceRecord`**: Represents each student's attendance with:
  - `attended`: Boolean indicating if the student attended.
  - `timestamp`: The time when the attendance was marked.
  - `rewardsEarned`: Total rewards earned by the student.

### Mappings

- **`attendanceRecords`**: Maps a student's address to their `AttendanceRecord`.

### Events

- **`AttendanceMarked`**: Emitted when a student's attendance is marked, including the student address, timestamp, and rewards earned.

## Installation

1. **Install Solidity**: Ensure you have Solidity installed on your system. You can use the online [Remix IDE](https://remix.ethereum.org/) or install Solidity locally.

2. **Deploy the Contract**: Deploy the `Attendance` contract on an Ethereum-compatible blockchain using your preferred tools (e.g., Remix IDE, Truffle, Hardhat).

## Usage

### Admin Functions

- **`markAttendance(address student)`**: Marks the attendance of a student. Can only be called by the admin.
  
  ```solidity
  markAttendance(0xStudentAddress);

  Name: Hrishikesh Deka
  Email: hrishikeshdeka49@gmail.com
  github:https://github.com/HrishikeshDeka12334
  linkedin:https://www.linkedin.com/in/hrishikesh-deka-8b4056251?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app
  

