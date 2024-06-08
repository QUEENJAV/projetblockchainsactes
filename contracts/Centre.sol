// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract CentreContract {

    struct Centre {
        bytes32 idCentre;
        string nomCentre;
        string region;
        string departement;
        string arrondissement;
    }

    mapping(uint => Centre) public centres;
    uint public nombreCentre;

    constructor(string memory nomCentre, string memory region, string memory departement, string memory arrondissement) {
        bytes32 _Id = keccak256(abi.encodePacked(nomCentre, region, departement, arrondissement));
        centres[nombreCentre] = Centre(_Id, nomCentre, region, departement, arrondissement);
        nombreCentre++;
    }

    function ajouterCentre(string memory _nomCentre, string memory _region, string memory _departement, string memory _arrondissement) public {
        bytes32 _Id = keccak256(abi.encodePacked(_nomCentre, _region, _departement, _arrondissement));
        centres[nombreCentre] = Centre(_Id, _nomCentre, _region, _departement, _arrondissement);
        nombreCentre++;
    }

    function getCentre(uint _id) public view returns (bytes32, string memory, string memory, string memory, string memory) {
        Centre storage centre = centres[_id];
        return (centre.idCentre, centre.nomCentre, centre.region, centre.departement, centre.arrondissement);
    }
}