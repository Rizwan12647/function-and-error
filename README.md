# Functions and Errors


This Solidity program  is made for showing the use of different function and error handling ways.

## Getting Started

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. 

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```// SPDX-License-Identifier: MIT
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
```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compilefuncanderror.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.And  then click on the "Deploy" button.

Once the contract is deployed, you can interact with it and use different ways by function and error handling in solidity by using revert(),asser(),require().


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
