// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // version

contract SimpleStorage {
    
    uint256 myFavoriteNumber; // 0

    // uint256[] listOfFavoriteNumbers; // [0, 11, 13, 15]

    struct Person{ 
        uint256 favoriteNumber;  
        string name;   
    }
    
    // dynamic array
    Person[] public listOfPeople; // []

    // davin => 5 (mapping)
    mapping(string => uint256) public nameToFavoriteNumber;
    
    // store myfavoritenumber
    function store(uint256 _favoriteNumber) public visual {
        myFavoriteNumber = _favoriteNumber;
    }

    // show myfavoritenumber
    function retrieve() public view returns(uint256){
        return myFavoriteNumber;
    }   

    // calldata, memory, storage
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push( Person(_favoriteNumber, _name) );
        nameToFavoriteNumber[_name] = _favoriteNumber; // <-- mapping
    }
}
