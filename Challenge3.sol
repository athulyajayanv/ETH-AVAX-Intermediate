// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Event {
    event messLog(address indexed sender, string message);
    event messLog2(address indexed _sender, uint256 _value);
    event messLog3(address indexed from, bytes32 indexed id, uint256 value);
    event messLog4(address indexed _from, string _message);

    function test() public {
        emit messLog(msg.sender, "Hello World!");
        emit messLog2(msg.sender, 10);
        emit messLog4(msg.sender, "Hello!");
    }

    function logs(bytes32 id) public payable {
        emit messLog3(msg.sender, id, msg.value);
    }
}
