// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract smartContract {
    uint256 public x = 5;
    address payable public owner;

    constructor() {
        owner = payable(msg.sender);
    }

    function addX(uint256 y) public view returns (uint256) {
        return x + y;
    }

    function add(uint256 i, uint256 j) public pure returns (uint256) {
        return i + j;
    }

    function deposit() public payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract DerivedContract is smartContract {
    function sumX(uint256 y) public view returns (uint256) {
        return addX(y);
    }

    function sum(uint256 i, uint256 j) public pure returns (uint256) {
        return add(i, j);
    }

    function depositEther() public payable {
        deposit();
    }

    function checkBalance() public view returns (uint256) {
        return getBalance();
    }
}
