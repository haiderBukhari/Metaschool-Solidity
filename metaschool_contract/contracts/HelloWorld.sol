//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;


contract HelloWorld{
    string public previousOwner;
    event nameChange(string prevOwner, string newOwner);

    constructor(string memory _Owner){
        previousOwner = _Owner;
    }
    function getCurrentOwner() public view returns(string memory){
        return previousOwner;
    }

    function changeName(string memory _newOwner) public {
        emit nameChange(previousOwner, _newOwner);
        previousOwner = _newOwner;
    }
}