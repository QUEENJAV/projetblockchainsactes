// Connexion à un nœud Ethereum en utilisant Web3.js
let web3 = new Web3(Web3.givenProvider);

// Adresse du contrat UtilisateursContract et son ABI
const contractAddress = 'YOUR_CONTRACT_ADDRESS';
const contractABI = [
    // Inclure l'ABI du contrat ici
];

// Objet du contrat UtilisateursContract
let utilisateursContract = new web3.eth.Contract(contractABI, contractAddress);

// Fonction pour ajouter un utilisateur
function ajouterUtilisateur() {
    utilisateursContract.methods.ajouterUtilisateur(
        "John",
        "Doe",
        "john.doe@example.com",
        "password123",
        "admin",
        123456789
    ).send({ from: web3.eth.defaultAccount })
    .on('receipt', function(receipt){
        alert("Utilisateur ajouté avec succès !");
    });
}

// Fonction pour récupérer les données d'un utilisateur
function getUtilisateur() {
    let userId = 1; // ID de l'utilisateur à récupérer
    utilisateursContract.methods.getUtilisateur(userId).call()
    .then(function(result) {
        console.log(result);
        // Traiter les données de l'utilisateur récupéré ici
    });
}