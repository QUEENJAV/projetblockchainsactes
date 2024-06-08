// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract FormationSanitaireContract {

    struct FormationSanitaire {
        bytes32 idFormation;
        string codeFormation;
        string libelle;
    }

    mapping(uint => FormationSanitaire) public formationSanitaires;
    uint public nombreFormationSanitaire;

    constructor(string memory codeFormation, string memory libelle) {
        bytes32 _Id = keccak256(abi.encodePacked(codeFormation, libelle));
        formationSanitaires[nombreFormationSanitaire] = FormationSanitaire(_Id, codeFormation, libelle);
        nombreFormationSanitaire++;
    }

    function ajouterFormationSanitaire(string memory _codeFormation, string memory _libelle) public {
        bytes32 _Id = keccak256(abi.encodePacked(_codeFormation, _libelle));
        formationSanitaires[nombreFormationSanitaire] = FormationSanitaire(_Id, _codeFormation, _libelle);
        nombreFormationSanitaire++;
    }

    function getFormationSanitaire(uint _id) public view returns (bytes32, string memory, string memory) {
        FormationSanitaire storage formationSanitaire = formationSanitaires[_id];
        return (formationSanitaire.idFormation, formationSanitaire.codeFormation, formationSanitaire.libelle);
    }
}