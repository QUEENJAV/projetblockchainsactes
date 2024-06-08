// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;



contract UtilisateursContract {
    // Déclaration de la structure Utilisateur
    struct Utilisateur {
        uint idutilisateurs;
        string nom;
        string prenom;
        string email;
        string passwords;
        string roles;
        uint telephone;
    }

    mapping(uint => Utilisateur) public utilisateurs;
    uint public nombreUtilisateurs;
    bytes32 private _Id;

    // Constructeur du contrat
    constructor (string memory nom, string memory prenom, string memory email, string memory passwords, string memory roles, uint telephone) {
        _Id = keccak256(abi.encodePacked(block.timestamp, msg.sender, nom));
        utilisateurs[nombreUtilisateurs] = Utilisateur(nombreUtilisateurs, nom, prenom, email, passwords, roles, telephone);
        nombreUtilisateurs++;
    }

    // Fonction pour ajouter un utilisateur
    function ajouterUtilisateur(string memory _nom, string memory _prenom, string memory _email, string memory _passwords, string memory _roles, uint _telephone) public {
        nombreUtilisateurs++;
        utilisateurs[nombreUtilisateurs] = Utilisateur(nombreUtilisateurs, _nom, _prenom, _email, _passwords, _roles, _telephone);
    }

    // Fonction pour récupérer les données d'un utilisateur
    function getUtilisateur(uint _id) public view returns (uint, string memory, string memory, string memory, string memory, string memory, uint) {
        Utilisateur storage utilisateur = utilisateurs[_id];
        return (utilisateur.idutilisateurs, utilisateur.nom, utilisateur.prenom, utilisateur.email, utilisateur.passwords, utilisateur.roles, utilisateur.telephone);
    }

    function generateId() private view returns (bytes32) {
        return _Id;
    }
}