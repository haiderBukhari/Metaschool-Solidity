// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;


contract ConditionalsAndLoops{

    uint8[] private numbers = [1, 2, 3, 4, 5, 6, 7, 8];
    address public owner;
    
    constructor(){
        owner = msg.sender;
    }

    function checkEven(uint8 _number) public pure returns(bool){
        if(_number%2==0){
            return true;
        }
        else{
            return false;
        }
    }

    function countPrimeNumbers() public view returns(uint8){
        uint8 count = 0;
        for(uint8 i = 0; i<numbers.length; i++){
            if(checkEven(numbers[i])) count++;
        }
        return count;
    }


    function isOwner() public view returns(bool){
        return(msg.sender == owner);
    }
}