//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

contract SimpleStorage {
    uint256 favouriteNumber;
    bool favouriteBool;
    bool favouriteBool2;

    struct People {
        uint256 favouriteNumber;
        string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavouriteNumber;

    // People public person = People({favouriteNumber: 2, name: "Babe"});

    function addPerson(string memory _name, uint256 _favouriteNumber) public {
        // people.push(People({favouriteNumber: _favouriteNumber, name: _name}));
        people.push(People(_favouriteNumber, _name));
        nameToFavouriteNumber[_name] = _favouriteNumber;
    }
}
