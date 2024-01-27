// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

contract MyContract{
    struct UserData{
        uint8 age;
        string name;
    }
    UserData[] public AllUser;

    function addUserInfo(uint8 _age, string memory _name) public returns(string memory){
        AllUser.push(UserData(_age, _name));
        return "registerd";
    }
    function getUserData(uint8 _index) public view returns(UserData memory){
        return AllUser[_index];
    }
    UserData public currentUser = UserData(1, "Haider");
}