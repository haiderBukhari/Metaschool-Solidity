// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;


contract Mapping{
    struct Book{
        string name;
        string author;
    }

    mapping(uint8 => Book) public books;

    mapping(address => mapping(uint8 => Book)) public myBooks;

    function addBook(uint8 _key, string memory _name, string memory _author) public{
        books[_key] = Book(_name, _author);
    }

    function addBookWithAddress(uint8 _key, string memory _name, string memory _author) public{
        myBooks[msg.sender][_key] = Book(_name, _author);
    }

    function getBook(uint8 _key) public view returns(Book memory){
        return books[_key];
    }

    function getBookWithAddress(uint8 _key) public view returns(Book memory){
        return myBooks[msg.sender][_key];
    }

}