var express = require("express");
var router = express.Router();

var dashController = require("../controllers/dashController");


router.get("/", function (req, res) {
    res.render("index");
});

router.get("/obterDados", function (req, res) {
    dashController.obterDados(req, res);
});


module.exports = router;