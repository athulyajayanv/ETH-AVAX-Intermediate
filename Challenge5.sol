// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract arithmeticOp{
    uint256 public storedNum;

    function setNum(uint256 newValue) public {
        storedNum = newValue;
    }

    function add(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 sum = a + b;
        return sum;
    }

    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 sub = a - b;
        return sub;
    }

    function multiple(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 mul = a * b;
        return mul;
    }
}
