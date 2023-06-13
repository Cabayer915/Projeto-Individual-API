var database = require("../database/config")
var usuarioModel = require("./usuarioModel")

// Coloque os mesmos parâmetros aqui. Vá para a var instrucao
function curtir(pokemonId) {
    var instrucao = `
    update Pokemons
    SET qtdCurtidas = qtdCurtidas + 1
    WHERE idPokemons = ${pokemonId}`;
    console.log("Executando a instrução SQL: \n" + instrucao);
    // var userAtual =  database.executar(`select idUsuario from usuarios where email = ${usuarioModel.emailUsuar()}`)

    var associativa = `insert into curtidas values ((select idUsuario from usuarios 
        where email = '${usuarioModel.emailUsuar()}'), ${pokemonId});`
    database.executar(associativa)
    return database.executar(instrucao);
}

function descurtir(pokemonId) {
    var instrucao = `
    update Pokemons
    SET qtdCurtidas = qtdCurtidas - 1
    WHERE idPokemons = ${pokemonId}`;
    console.log("Executando a instrução SQL: \n" + instrucao);
    var deletar = `delete from Curtidas where fk_usuarios = (select idUsuario from usuarios 
        where email = '${usuarioModel.emailUsuar()}') and fk_pokemons = ${pokemonId};`
    database.executar(deletar)
    return database.executar(instrucao);
}

module.exports = {
    curtir,
    descurtir
};