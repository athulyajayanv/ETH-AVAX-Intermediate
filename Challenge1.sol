// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract adminAccess{
    address public admin;

    constructor(){
        admin = msg.sender;
    }

    modifier onlyAdmin(){
        require (admin == msg.sender, "Only admin can access");
        _;
    }

    function add(uint256 a, uint256 b) public view onlyAdmin returns (uint256) {
       return a + b;
    }

    function sub(uint256 c, uint d) public view onlyAdmin returns (uint256){
        return c - d;
    }
}
