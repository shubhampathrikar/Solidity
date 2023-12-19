// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable{
    address owner;
    
    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }
    constructor() {
        owner = msg.sender;
    }
}

contract SmartVault{
    string secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns(string memory){
        return secret;
    }
}

contract BasicContract is Ownable{
    
    address smartVault;

    constructor(string memory _secret) {
        SmartVault _smartVault = new SmartVault(_secret);
        smartVault = address(_smartVault);
        super;
    }

    function getSecret() public view onlyOwner returns(string memory){
        return SmartVault(smartVault).getSecret();
    }
}