// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract RegistreContract{
    
    struct Registre {
        uint idregistre;
        bytes4 libelle;
        bytes4 annee;
        uint idutilisateurs;
    }
    
    mapping(uint => Registre) public registres;
    uint public prochainIdRegistre = 1;
    
    struct Utilisateur {
        uint idutilisateurs;
    }
    
    mapping(uint => Utilisateur) public utilisateurs;
    
    constructor() {
        // Initialisation du contrat, des utilisateurs de base peuvent être ajoutés ici
    }
    
    function ajouterRegistre(bytes4 _libelle, bytes4 _annee, uint _idutilisateurs) public {
        registres[prochainIdRegistre] = Registre(prochainIdRegistre, _libelle, _annee, _idutilisateurs);
        prochainIdRegistre++;
    }
    
    function getRegistre(uint _id) public view returns (uint, bytes4, bytes4, uint) {
        Registre storage registre = registres[_id];
        return (registre.idregistre, registre.libelle, registre.annee, registre.idutilisateurs);
    }
    
    function lienUtilisateurARegistre(uint _idRegistre, uint _idUtilisateur) public {
        require(utilisateurs[_idUtilisateur].idutilisateurs != 0, "L'utilisateur n'existe pas");
        registres[_idRegistre].idutilisateurs = _idUtilisateur;
    }
}