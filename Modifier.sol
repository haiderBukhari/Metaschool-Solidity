// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;


contract Modifier{
    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner(){
        require(owner == msg.sender, "Only Owner can call this function");
        _;
    }

    modifier validateAddress(address _addr){
        require(_addr != address(0), "Not valid address");
        _;
    }

    function changeOwner(address _addr) public onlyOwner validateAddress(_addr){
        owner = _addr;
    }

}