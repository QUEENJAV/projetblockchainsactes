// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "./ActesContract.sol";

// contract NaissanceContract is ActesContract  {
//     //   address acteContractAddress;
//     struct Naissance {
//         uint idnaissance;
//         uint datedeclaration;
//         string sexe;
//         string nomenfant;
//         uint datenaissanceenfant;
//         string lieunaissanceenfant;
//         string nompere;
//         string proffessionpere;
//         string domicileparent;
//         string nomemere;
//         string proffessionmere;
//         string etatparent;
//         uint idformation;
//         uint idcentre;
//         uint idutilisateurs;
//     }

//     mapping(uint => Naissance) public naissances;
//     uint public prochainIdNaissance = 1;

//     constructor(uint256 _idacte, string memory _numacte, uint _datedeclaration, string memory _cnipere, string memory _cnimere, string memory _cnitemoin1, string memory _cnitemoin2, uint _dateetablissementacte, uint _idregistre, uint _idcentre, uint _idutilisateurs) public ActesContract() {
//         // Initialisation des variables et autres actions lors de la création d'un nouveau contrat de mariage
//         Acte(_idacte, _numacte, _datedeclaration, _cnipere, _cnimere, _cnitemoin1, _cnitemoin2, _dateetablissementacte,  _idregistre,  _idcentre,  _idutilisateurs);
//     }

//     // constructor(address _acteContractAddress) ActesContract() {
//     //         // Initialisation des variables et autres actions lors de la création d'un nouveau contrat de mariage
//     //         acteContractAddress =  _acteContractAddress;
//     //     }

//     function ajouterNaissance(
//         uint _datedeclaration,
//         string memory _sexe,
//         string memory _nomenfant,
//         uint _datenaissanceenfant,
//         string memory _lieunaissanceenfant,
//         string memory _nompere,
//         string memory _proffessionpere,
//         string memory _domicileparent,
//         string memory _nomemere,
//         string memory _proffessionmere,
//         string memory _etatparent,
//         uint _idformation,
//         uint _idcentre,
//         uint _idutilisateurs
//     ) public {
      
//         // ajouterActe("NAISSANCE", 0, "", "", "", "", 0, 0, 0, 0);

//         naissances[prochainIdNaissance] = Naissance(prochainIdNaissance, _datedeclaration, _sexe, _nomenfant, _datenaissanceenfant, _lieunaissanceenfant, _nompere, _proffessionpere, _domicileparent, _nomemere, _proffessionmere, _etatparent, _idformation, _idcentre, _idutilisateurs);
//         prochainIdNaissance++;
//     }

//     // function getNaissance(uint _id) public view returns (uint, uint, string memory, string memory, uint, string memory, string memory, string memory, string memory, string memory,string memory, string memory,  uint, uint, uint) {
//     //     Naissance storage naissance = naissances[_id];
//     //     return (naissance.idnaissance, naissance.datedeclaration, naissance.sexe, naissance.nomenfant, naissance.datenaissanceenfant, naissance.lieunaissanceenfant, naissance.nompere, naissance.proffessionpere, naissance.domicileparent, naissance.nomemere, naissance.proffessionmere, naissance.etatparent, naissance.idformation, naissance.idcentre, naissance.idutilisateurs);
//     // }

//     function getNaissance(uint _id) public view returns (uint, uint, string memory, string memory, uint, string memory, string memory, string memory, string memory, string memory,string memory, string memory,  uint, uint, uint) {
//         Naissance storage naissance = naissances[_id];
//         return (naissance.idnaissance, naissance.datedeclaration, naissance.sexe, naissance.nomenfant, naissance.datenaissanceenfant, naissance.lieunaissanceenfant, naissance.nompere, naissance.proffessionpere, naissance.domicileparent, naissance.nomemere, naissance.proffessionmere, naissance.etatparent, naissance.idformation, naissance.idcentre, naissance.idutilisateurs);
//     }

//     // Ajouter d'autres fonctions selon les besoins
// }