// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Fee {
    
    address public Student;
    uint256 public balance;
    
    constructor() {
        Student = msg.sender;
        balance = 0;
    }
    
    // Function to deposit fee of Student 
    function deposit() public payable {

         // Using require() to ensure the caller is the owner
        require(msg.sender == Student, "Only the Student can access");

        // Using require() to check for a valid deposit amount
        require(msg.value > 0, "Deposit amount must be greater than zero");
        balance += msg.value;
    }
    
    // Function to demonstrate the use of assert()
    function checkInvariant() public view {
        // Using assert() to check an invariant condition like the peending fee of student must be equal or greater than 0
        assert(balance >= 0);
    }
    
    // Function to demonstrate the use of revert() with custom error message
    function resetBalance() public {
        // Only the Student can access all detaails and do transaction
        if (msg.sender != Student) {
            revert("Only the Student can do transaction");
        }
        
        balance = 0;
    }
}
