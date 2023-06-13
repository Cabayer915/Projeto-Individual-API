var database = require("../database/config")

function obterDados(){
    var instrucao = "select nome, qtdCurtidas from Pokemons order by qtdCurtidas desc limit 5;"
    return database.executar(instrucao)
}

module.exports = {
    obterDados
};