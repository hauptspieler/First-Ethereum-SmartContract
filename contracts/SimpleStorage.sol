// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract  SimpleStorage{
 
    uint256 numeroFavorito;
    
    struct Pessoas {
        uint256 numeroFavorito;
        string nome;
    }
    
    // creates empty array
    Pessoas[] public pessoa;
    // **1 - retrieve favorite number by name 
    mapping(string => uint256) public nameToFavoriteNumber;
    
    
    // stores number into numeroFavorito
    function store(uint256 _numeroFavorito) public {
        numeroFavorito = _numeroFavorito;
    }
    
    
    // retrieves stored number 
    function retrieve() public view returns (uint256){
        return numeroFavorito;
    }
    
    function addPerson(string memory _nome, uint256 _numeroFavorito) public {
        // pushes pessoa into Pessoas array
        pessoa.push(Pessoas(_numeroFavorito, _nome));
        // **2 - configures mapping to retrieve favorite number from name
        nameToFavoriteNumber[_nome] = _numeroFavorito;
    }
 
 
 
 
 
 
 
 
    
}