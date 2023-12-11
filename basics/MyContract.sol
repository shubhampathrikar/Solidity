// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract{
    //State Variables
    int256 myInt = 1 ;
    uint public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = "Hello World!";
    bytes32 public myBytes32 = "Hello, World";

    address public  myAddress = 0x71C7656EC7ab88b098defB751B7401B5f6d8976F;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public  myStruct = MyStruct(1,"Hello");

    //Local Variables
    function getValue() public pure returns (uint){
        uint value = 1;
        return value;
    }
}