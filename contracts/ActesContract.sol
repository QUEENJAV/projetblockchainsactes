// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract ActesContract {
    
    struct Acte {
        uint idacte;
        string numacte;
        uint datedeclaration;
        string cnipere;
        string cnimere;
        string cnitemoin1;
        string cnitemoin2;
        uint dateetablissementacte;
        uint idregistre;
        uint idcentre;
        uint idutilisateurs;
    }
    
    mapping(uint => Acte) public actes;
    uint public prochainIdActe = 1;
    
    struct Registre {
        uint idregistre;
    }
    
    struct Centre {
        uint idcentre;
    }
    
    struct Utilisateur {
        uint idutilisateurs;
    }
    
    mapping(uint => Registre) public registres;
    mapping(uint => Centre) public centres;
    mapping(uint => Utilisateur) public utilisateurs;
    
    constructor() {
        // Initialisation du contrat, peut-être ajouter des registres, centres et utilisateurs de base ici
    }
    
    function ajouterActe(
        string memory _numacte,
        uint _datedeclaration,
        string memory _cnipere,
        string memory _cnimere,
        string memory _cnitemoin1,
        string memory _cnitemoin2,
        uint _dateetablissementacte,
        uint _idregistre,
        uint _idcentre,
        uint _idutilisateurs
    ) public {
        actes[prochainIdActe] = Acte(prochainIdActe, _numacte, _datedeclaration, _cnipere, _cnimere, _cnitemoin1, _cnitemoin2, _dateetablissementacte, _idregistre, _idcentre, _idutilisateurs);
        prochainIdActe++;
    }
    
    function getActe(uint _id) public view returns (uint, string memory, uint, string memory, string memory, string memory, string memory, uint, uint, uint, uint) {
        Acte storage acte = actes[_id];
        return (acte.idacte, acte.numacte, acte.datedeclaration, acte.cnipere, acte.cnimere, acte.cnitemoin1, acte.cnitemoin2, acte.dateetablissementacte, acte.idregistre, acte.idcentre, acte.idutilisateurs);
    }

    function lierUtilisateurAActe(uint _idActe, uint _idUtilisateur) public {
        require(utilisateurs[_idUtilisateur].idutilisateurs != 0, "L'utilisateur n'existe pas");
        actes[_idActe].idutilisateurs = _idUtilisateur;
    }

    // Ajouter d'autres fonctions selon les besoins
}