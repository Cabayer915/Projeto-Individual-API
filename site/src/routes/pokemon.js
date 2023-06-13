var express = require("express");
var router = express.Router();

var pokemonController = require("../controllers/pokemonController");

//Recebendo os dados do html e direcionando para a função cadastrar de pokemonController.js
router.post("/curtir", function (req, res) {
    pokemonController.curtir(req, res);
})

router.post("/descurtir", function (req, res) {
    pokemonController.descurtir(req, res);
});


module.exports = router;