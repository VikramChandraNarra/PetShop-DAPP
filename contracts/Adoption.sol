// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;


contract Adoption {
    address[16] public adopters;

    function adopt(uint256 _petId, address sender) external {
        // require(petId >= 0 && petId < adopters.length, "Invalid pet ID");

        address adopter = sender;
        adopters[_petId] = adopter;
    }

    function getAdopters() external view returns (address[16] memory) {
        return adopters;
    }

    function disown(uint256 _petId) external {
        // require(petId >= 0 && petId < adopters.length, "Invalid pet ID");

        adopters[_petId] = address(0);
    }

    function getAdopter(uint256 _petId) external view returns (address) {
        require(_petId >= 0 && _petId < adopters.length, "Invalid pet ID");
        return adopters[_petId];
    }
}
