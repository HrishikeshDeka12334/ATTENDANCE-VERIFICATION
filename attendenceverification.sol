// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attendance {
    address public admin;
    uint public attendanceCount = 0;
    uint public rewardAmount = 1;  // 1 token reward per attendance

    // A structure to represent each student's attendance
    struct AttendanceRecord {
        bool attended;
        uint timestamp;
        uint rewardsEarned;
    }

    // Mapping from student address to their attendance record
    mapping(address => AttendanceRecord) public attendanceRecords;

    // Event to emit when attendance is marked
    event AttendanceMarked(address student, uint timestamp, uint rewardsEarned);

    constructor() {
        admin = msg.sender; // Contract deployer is the admin
    }

    // Modifier to restrict function access to admin only
    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action.");
        _;
    }

    // Function to mark attendance for a student
    function markAttendance(address student) public onlyAdmin {
        require(!attendanceRecords[student].attended, "Attendance already marked.");

        attendanceRecords[student].attended = true;
        attendanceRecords[student].timestamp = block.timestamp;
        attendanceRecords[student].rewardsEarned += rewardAmount;
        attendanceCount += 1;

        emit AttendanceMarked(student, block.timestamp, rewardAmount);
    }

    // Function to check a student's attendance
    function checkAttendance(address student) public view returns (bool attended, uint timestamp, uint rewards) {
        AttendanceRecord memory record = attendanceRecords[student];
        return (record.attended, record.timestamp, record.rewardsEarned);
    }

    // Function to reset attendance for a new class or session
    function resetAttendance(address student) public onlyAdmin {
        attendanceRecords[student].attended = false;
        attendanceRecords[student].timestamp = 0;
    }
}
