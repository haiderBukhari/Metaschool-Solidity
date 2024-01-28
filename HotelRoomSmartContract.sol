// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract HotelRoom{
    address payable public owner;

    enum AvailabilityStatus{
        Occupied, 
        Vacant
    }

    AvailabilityStatus public isRoomAvailable;
    
    constructor(){
        owner = payable(msg.sender);
        isRoomAvailable = AvailabilityStatus.Vacant;
    }

    modifier checkEther(uint _ether){
        require(msg.value >= _ether, "Not Enough ether provided.");
        _;
    }
    modifier checkAvailability(){
        require(isRoomAvailable == AvailabilityStatus.Vacant, "Room already occupied");
        _;
    }
    function bookRoom() public payable checkAvailability checkEther(2 ether){
        owner.transfer(msg.value);
        isRoomAvailable = AvailabilityStatus.Occupied;
    }

    function changeOwner(address _add) public verifyOwner{
        owner = payable(_add);
    }

    modifier verifyOwner(){
        require(msg.sender == owner, "Only owner");
        _;
    }
}