// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom{
    // Ether payments
    // Modifiers
    // Visibility
    // Events
    // Enums

    enum Statuses { Vacant, Occupied }
    Statuses currentStatus;

    address payable public owner;

    constructor(){
        owner = payable (msg.sender);
        currentStatus = Statuses.Vacant;
    }


    function book() public payable {
        owner.transfer(msg.value);
        currentStatus = Statuses.Occupied;
    }
}