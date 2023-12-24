// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
    uint count; // unsigned integer
    string name;

    constructor() {
        count = 0;
        name = "Shubham";
    }

    function getCount() public view returns(uint) {
        return count;
    }

    function incrementCount() public returns (uint newCount) {
        count++;
        return count;
    }

    function decrementCount() public returns (uint newCount) {
        count--;
        return count;
    }

    function getName() public view returns(string memory currentName){
        return name;
    }

    function setName(string memory _newName) public returns (string memory newName) {
        name = _newName;
        return name;
    }
}