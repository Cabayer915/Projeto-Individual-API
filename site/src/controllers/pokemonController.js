var pokemonModel = require("../models/pokemonModel");

function curtir(req, res){
    var curtida = req.body.idCurtidaServer

    if(curtida == undefined){
        res.status(400).send("Sua curtida está undefined!");
    }else{
        pokemonModel.curtir(curtida)
            .then(
                function (resultado){
                    console.log(`\nResultados encontrados: ${resultado.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if(resultado.length == 1){
                        res.json(resultado);
                    }else if (resultado == 0){
                        res.status(403).send("Curtida inválida");
                    }else{
                        res.status(403).send("Error duplicate like!");
                    }
                }
            ).catch(
                function (erro){
                    console.log(erro)
                    console.log("\n Erro ao realizar curtida")
                    res.status(500).send(erro.sqlMessage);
                }
            );
    }
}

function descurtir(req, res){
    var curtida = req.body.idCurtidaServer

    if(curtida == undefined){
        res.status(400).send("Sua curtida está undefined!");
    }else{
        pokemonModel.descurtir(curtida)
            .then(
                function (resultado){
                    console.log(`\nResultados encontrados: ${resultado.length}`);
                    console.log(`Resultados: ${JSON.stringify(resultado)}`); // transforma JSON em String

                    if(resultado.length == 1){
                        res.json(resultado);
                    }else if (resultado == 0){
                        res.status(403).send("Curtida inválida");
                    }else{
                        res.status(403).send("Error duplicate like!");
                    }
                }
            ).catch(
                function (erro){
                    console.log(erro)
                    console.log("\n Erro ao realizar curtida")
                    res.status(500).send(erro.sqlMessage);
                }
            );
    }

}


module.exports = {
    curtir,
    descurtir
}
