// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "./ActesContract.sol";
//  // Déclaration du contrat de Mariage

// contract MariageContract is ActesContract  {
//     // Contenu du contrat Mariage

//      struct Mariage {
//         uint idmariage;
//         uint datedeclaration;
//         string cniepoux;
//         string cniepouse;
//         string nomepoux;
//         uint datenaissanceepoux;
//         string lieunaissanceepoux;
//         string professionepoux;
//         string domicileepoux;
//         string nationaliteepoux;
//         string situationmatrimonialeepoux;
//         string nomepouse;
//         uint datenaissanceepouse;
//         string lieunaissanceepouse;
//         string professionepouse;
//         string domicileepouse;
//         string nationaliteepouse;
//         string situationmatrimonialeepouse;
//         string regimeMatrimonial;
//         uint idcentre;
//         uint idutilisateurs;
//     }
//     constructor(uint256 _idacte, string memory _numacte, uint _datedeclaration, string memory _cnipere, string memory _cnimere, string memory _cnitemoin1, string memory _cnitemoin2, uint _dateetablissementacte, uint _idregistre, uint _idcentre, uint _idutilisateurs) public ActesContract() {
//         // Initialisation des variables et autres actions lors de la création d'un nouveau contrat de mariage
//         Acte(_idacte, _numacte, _datedeclaration, _cnipere, _cnimere, _cnitemoin1, _cnitemoin2, _dateetablissementacte,  _idregistre,  _idcentre,  _idutilisateurs);
//     }
    

//     mapping(uint => Mariage) public mariages;
//     uint public prochainIdMariage = 1;

//     // constructor(address _acteContractAddress) ActesContract() {
//     //         // Initialisation des variables et autres actions lors de la création d'un nouveau contrat de mariage
//     // }
   

//     function ajouterMariage(
//         uint _datedeclaration,
//         string memory _cniepoux,
//         string memory _cniepouse,
//         string memory _nomepoux,
//         uint _datenaissanceepoux,
//         string memory _lieunaissanceepoux,
//         string memory _professionepoux,
//         string memory _domicileepoux,
//         string memory _nationaliteepoux,
//         string memory _situationmatrimonialeepoux,
//         string memory _nomepouse,
//         uint _datenaissanceepouse,
//         string memory _lieunaissanceepouse,
//         string memory _professionepouse,
//         string memory _domicileepouse,
//         string memory _nationaliteepouse,
//         string memory _situationmatrimonialeepouse,
//         string memory _regimeMatrimonial,
//         uint _idcentre,
//         uint _idutilisateurs
//     ) public {

     

//        // Acte(uint256 _idacte, string memory _numacte, Date memory _datedeclaration, string memory _cnipere, string memory _cnimere, string memory _cnitemoin1, string memory _cnitemoin2) Acte(_idacte, _numacte, _datedeclaration, _cnipere, _cnimere, _cnitemoin1, _cnitemoin2) {}
//     // uint _idacte = 0;
//     // uint _numacte = 0;

//     // ajouterActe("MARIAGE", 0, "", "", "", "", 0, 0, 0, 0);

//     mariages[prochainIdMariage] = Mariage(prochainIdMariage, _datedeclaration, _cniepoux, _cniepouse, _nomepoux, _datenaissanceepoux, _lieunaissanceepoux, _professionepoux, _domicileepoux, _nationaliteepoux, _situationmatrimonialeepoux, _nomepouse, _datenaissanceepouse, _lieunaissanceepouse, _professionepouse, _domicileepouse, _nationaliteepouse, _situationmatrimonialeepouse, _regimeMatrimonial, _idcentre, _idutilisateurs);
//     prochainIdMariage++;
// }

//     function getMariage(uint _id) public view returns (uint, uint, string memory, string memory, string memory, uint, string memory, string memory, string memory, string memory, string memory, string memory, uint, string memory, string memory, string memory, string memory, string memory, string memory, uint, uint) {
//         Mariage storage mariage = mariages[_id];
//         return (mariage.idmariage, mariage.datedeclaration, mariage.cniepoux, mariage.cniepouse, mariage.nomepoux, mariage.datenaissanceepoux, mariage.lieunaissanceepoux, mariage.professionepoux, mariage.domicileepoux, mariage.nationaliteepoux, mariage.situationmatrimonialeepoux, mariage.nomepouse, mariage.datenaissanceepouse, mariage.lieunaissanceepouse, mariage.professionepouse, mariage.domicileepouse, mariage.nationaliteepouse, mariage.situationmatrimonialeepouse, mariage.regimeMatrimonial, mariage.idcentre, mariage.idutilisateurs);
//     }

//     // Ajouter d'autres fonctions selon les besoins
// }