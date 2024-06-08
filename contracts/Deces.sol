// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// import "./ActesContract.sol";

// contract DecesContract is ActesContract  {

//     struct Deces {
//         uint iddeces;
//         uint datedeclaration;
//         string nomdeclarant;
//         string professiondeclarant;
//         string domicileddeclarant;
//         string qualitedeclarant;
//         string nomdefunc;
//         uint datenaissance;
//         string lieunaissance;
//         string profession;
//         string domiciledefunc;
//         string nationalitedefunc;
//         uint datedeces;
//         string lieudeces;
//         string circonstancesdeces;
//         uint idformation;
//         uint idcentre;
//         uint idutilisateurs;
//     }

//     mapping(uint => Deces) public deces;
//     uint public prochainIdDeces = 1;

//     constructor(address _acteContractAddress) ActesContract() {
//         // Code de construction du contrat ici
//     }

//     function ajouterDeces(
//         uint _datedeclaration,
//         string memory _nomdeclarant,
//         string memory _professiondeclarant,
//         string memory _domicileddeclarant,
//         string memory _qualitedeclarant,
//         string memory _nomdefunc,
//         uint _datenaissance,
//         string memory _lieunaissance,
//         string memory _profession,
//         string memory _domiciledefunc,
//         string memory _nationalitedefunc,
//         uint _datedeces,
//         string memory _lieudeces,
//         string memory _circonstancesdeces,
//         uint _idformation,
//         uint _idcentre,
//         uint _idutilisateurs
//     ) public {
//         ajouterActe("DECES", 0, "", "", "", "", 0, 0, 0, 0);

//         deces[prochainIdDeces] = Deces(prochainIdDeces, _datedeclaration, _nomdeclarant, _professiondeclarant, _domicileddeclarant, _qualitedeclarant, _nomdefunc, _datenaissance, _lieunaissance, _profession, _domiciledefunc, _nationalitedefunc, _datedeces, _lieudeces, _circonstancesdeces, _idformation, _idcentre, _idutilisateurs);
//         prochainIdDeces++;
//     }

//     function getDeces(uint _id) public view returns (uint, uint, string memory, string memory, string memory, string memory, string memory, uint, string memory, string memory, string memory, string memory, uint, string memory, string memory,  uint, uint, uint) {
//         Deces storage decesInfo = deces[_id];
//         return (decesInfo.iddeces, decesInfo.datedeclaration, decesInfo.nomdeclarant, decesInfo.professiondeclarant, decesInfo.domicileddeclarant, decesInfo.qualitedeclarant, decesInfo.nomdefunc, decesInfo.datenaissance, decesInfo.lieunaissance, decesInfo.profession, decesInfo.domiciledefunc, decesInfo.nationalitedefunc, decesInfo.datedeces, decesInfo.lieudeces, decesInfo.circonstancesdeces, decesInfo.idformation,  decesInfo.idcentre, decesInfo.idutilisateurs);
//     }

//     // Ajouter d'autres fonctions selon les besoins
    
// }