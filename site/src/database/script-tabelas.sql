Create database PokemonXS;

use PokemonXS;

CREATE TABLE usuarios (
    idUsuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    dtNasc DATE NOT NULL,
    genero VARCHAR(10) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha CHAR(20) NOT NULL
);

-- Criação da tabela "pokemons"
CREATE TABLE pokemons (
    idPokemons INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    qtdCurtidas INT DEFAULT 0
);

-- Criação da tabela de votos
CREATE TABLE curtidas (
    fk_usuarios INT,
    fk_pokemons INT,
    PRIMARY KEY (fk_usuarios, fk_pokemons),
    FOREIGN KEY (fk_usuarios) REFERENCES usuarios(idUsuario),
    FOREIGN KEY (fk_pokemons) REFERENCES pokemons(idPokemons)
);

CREATE TABLE Comentarios(
idComentarios int primary key auto_increment,
titulo varchar(50),
analise varchar(25),
comentario varchar(400),
fk_usuarios int,
FOREIGN KEY (fk_usuarios) REFERENCES usuarios(idUsuario),
    CONSTRAINT unico_comentario_por_usuario UNIQUE (fk_usuarios)
);

drop table Usuarios;
drop table Pokemons;
drop table Curtidas;
drop table Comentarios;

INSERT INTO Usuarios VALUES
(null, 'Kyan Maloka Pokemaniaco','2000-05-06','Masculino','kyanmaloka@gmail.com','blabluble123');

INSERT INTO Curtidas VALUES
(1,1);

INSERT INTO Pokemons VALUES
(null, 'Pantheon', 'Sombrio', 0),
(null, 'Pantheleon', 'Sombrio', 0),
(null, 'Panthelord', 'Sombrio', 0),
(null, 'Erukilava', 'Fogo', 0),
(null, 'Mandralava', 'Fogo', 0),
(null, 'Cinccilava', 'Fogo/Dragão', 0),
(null, 'Bufo', 'Planta', 0),
(null, 'Regulari', 'Planta', 0),
(null, 'Buforegulari', 'Planta', 0),
(null, 'Kapi', 'Água', 0),
(null, 'Capivara', 'Água', 0),
(null, 'Capivarias', 'Água', 0),
(null, 'Goli', 'Pedra', 0),
(null, 'Golemita', 'Pedra', 0),
(null, 'Golem-de-Nióbio', 'Pedra', 0),
(null, 'Plantacco', 'Planta', 0),
(null, 'Cannabola', 'Planta/Psíquico', 0),
(null, 'Cannabright', 'Planta/Psíquico', 0),
(null, 'Blu', 'Voador', 0),
(null, 'Zarara', 'Voador', 0),
(null, 'Mordecai', 'Voador', 0),
(null, 'Turguiti', 'Água', 0),
(null, 'Turtilion', 'Água', 0),
(null, 'Aquatron', 'Água', 0),
(null, 'Tuca', 'Voador', 0),
(null, 'Tucanon', 'Voador', 0),
(null, 'Titi', 'Normal/Veneno', 0),
(null, 'Lepto', 'Normal/Veneno', 0),
(null, 'Oneevil', 'Elétrico', 0),
(null, 'Antient', 'Normal', 0),
(null, 'Antienne', 'Normal', 0),
(null, 'Antiox', 'Normal', 0),
(null, 'Azumi', 'Água', 0),
(null, 'Azumar', 'Água', 0),
(null, 'Azumarilion', 'Água', 0),
(null, 'Bizori', 'Inseto', 0),
(null, 'Bizu', 'Inseto', 0),
(null, 'Bizz', 'Inseto', 0),
(null, 'Angelwool', 'Fada', 0),
(null, 'Favelha', 'Fada', 0),
(null, 'Draco', 'Dragão/Sombrio', 0),
(null, 'Draconight', 'Dragão/Sombrio', 0),
(null, 'Botozul', 'Água', 0),
(null, 'Botoshark', 'Água', 0),
(null, 'Botolodon', 'Água/Dragão', 0),
(null, 'Denguelarva', 'Inseto', 0),
(null, 'Chicungunyat', 'Inseto', 0),
(null, 'Zikatron', 'Inseto/Metal', 0),
(null, 'Yudi', 'Psíquico', 0),
(null, 'Mestre Yudi', 'Lutador/Psíquico', 0),
(null, 'Quatino', 'Normal', 0),
(null, 'Quatizap', 'Normal', 0),
(null, 'Arirania', 'Água', 0),
(null, 'Ararenea', 'Água', 0),
(null, 'Bongo Bongo', 'Veneno/Metal', 0),
(null, 'Girestrike', 'Elétrico', 0),
(null, 'Gireletrico', 'Elétrico', 0),
(null, 'Casosaur', 'Voador/Lutador', 0),
(null, 'Casosaurus', 'Voador/Lutador', 0),
(null, 'Pikazul', 'Elétrico', 0),
(null, 'Caipix', 'Fogo', 0),
(null, 'Campori', 'Fogo', 0),
(null, 'Beta', 'Água', 0),
(null, 'Sigma', 'Água', 0),
(null, 'Pedri', 'Pedra', 0),
(null, 'Pedrini', 'Pedra/Lutador', 0),
(null, 'Pedronco', 'Pedra/Lutador', 0),
(null, 'Antalus', 'Normal', 0),
(null, 'Tapyro', 'Fogo', 0),
(null, 'Ossorror', 'Fantasma', 0),
(null, 'Aquatinny', 'Água', 0),
(null, 'Aquatinna', 'Água', 0),
(null, 'Aquatindra', 'Água', 0),
(null, 'Baconius', 'Normal', 0),
(null, 'Porkchomp', 'Normal', 0),
(null, 'Skunkbloom', 'Sombrio/Planta', 0),
(null, 'Bulbix', 'Planta', 0),
(null, 'Bulbal', 'Planta', 0),
(null, 'Bulbassalto', 'Planta', 0),
(null, 'Glaciala', 'Gelo', 0),
(null, 'Cachogo', 'Fogo', 0),
(null, 'Lofogo', 'Fogo', 0),
(null, 'Lolava', 'Fogo', 0),
(null, 'Gaspar', 'Fantasma', 0),
(null, 'Gasfear', 'Fantasma', 0),
(null, 'Espectraria', 'Psíquico', 0),
(null, 'Igniberos', 'Fogo/Dragão', 0),
(null, 'Mana', 'Água', 0),
(null, 'Manati', 'Água', 0),
(null, 'Manation', 'Água', 0),
(null, 'Caramello', 'Normal', 0),
(null, 'Caramellado', 'Normal', 0),
(null, 'Caspor', 'Lutador', 0),
(null, 'Caspoeira', 'Lutador', 0),
(null, 'Swamplord', 'Terra/Veneno', 0),
(null, 'Pira', 'Água', 0),
(null, 'Pira-Pira', 'Água', 0),
(null, 'Dragonvin', 'Dragão/Planta', 0),
(null, 'Dragonsipó', 'Dragão/Planta', 0),
(null, 'Dragondoso', 'Dragão/Planta', 0),
(null, 'Mimico', 'Psíquico', 0),
(null, 'Lacrosta', 'Água', 0),
(null, 'Lacrocos', 'Água', 0),
(null, 'Croconite', 'Água/Sombrio', 0),
(null, 'Cori', 'Veneno', 0),
(null, 'Corali', 'Dragão/Veneno', 0),
(null, 'Coralion', 'Dragão/Veneno', 0),
(null, 'Chinchigode', 'Fada', 0),
(null, 'Lobito', 'Sombrio', 0),
(null, 'Lobuspidon', 'Sombrio', 0),
(null, 'Camoubush', 'Planta', 0),
(null, 'Gamber', 'Psíquico', 0),
(null, 'Gainex', 'Psíquico', 0),
(null, 'Gambolonux', 'Psíquico/Fada', 0),
(null, 'Loro', 'Voador', 0),
(null, 'José', 'Voador', 0),
(null, 'Mimaco', 'Normal', 0),
(null, 'Mamico', 'Normal', 0),
(null, 'Mamaco', 'Lutador', 0),
(null, 'Pondaor', 'Normal', 0),
(null, 'Phantasma', 'Fantasma', 0),
(null, 'Aimary', 'Água', 0),
(null, 'Aimoon', 'Gelo', 0),
(null, 'Rhymal', 'Metal', 0),
(null, 'Rhythorn', 'Metal', 0),
(null, 'Pombion', 'Voador', 0),
(null, 'Pombiot', 'Voador', 0),
(null, 'Pombiotto', 'Voador', 0),
(null, 'Sayury', 'Água/Psíquico', 0),
(null, 'Geoshark', 'Água/Pedra', 0),
(null, 'Litiodactyl', 'Pedra/Dragão', 0),
(null, 'Piuky', 'Fada/Água', 0),
(null, 'Piukynox', 'Fada/Água', 0),
(null, 'Benjamor', 'Elétrico', 0),
(null, 'Benjavarios', 'Elétrico', 0),
(null, 'Hitmanchete', 'Lutador', 0),
(null, 'Bandeirogo', 'Fogo/Voador', 0),
(null, 'Arraiatico', 'Fogo/Voador', 0),
(null, 'Pacaflora', 'Planta', 0),
(null, 'Noctowl de São Paulo', 'Voador', 0),
(null, 'Querodart', 'Voador', 0),
(null, 'Querocaos', 'Voador', 0),
(null, 'Kof Kof', 'Veneno', 0),
(null, 'Solarigator', 'Elétrico', 0),
(null, 'Sloty', 'Normal', 0),
(null, 'Slothking', 'Normal', 0),
(null, 'Meowstic', 'Fada/Dragão', 0),
(null, 'Leviatan', 'Água/Fada', 0),
(null, 'Phantasmal', 'Fantasma', 0),
(null, 'Borbosia', 'Voador/Inseto', 0),
(null, 'Metano', 'Metal', 0),
(null, 'Metanon', 'Metal', 0),
(null, 'Metalord', 'Metal', 0),
(null, 'Seabird', 'Voador/Água', 0),
(null, 'Metallica', 'Metal', 0),
(null, 'CompuGPTech', 'Elétrico', 0),
(null, 'Pastudo', 'Lutador', 0),
(null, 'Araucagélido', 'Gelo', 0),
(null, 'Tatucs', 'Terra', 0),
(null, 'Tatum', 'Terra', 0),
(null, 'Crustaconcha', 'Água', 0),
(null, 'Crustaking', 'Água', 0),
(null, 'Crustalion', 'Água', 0),
(null, 'Ariadinarak', 'Inseto', 0),
(null, 'Ariana Del Rey', 'Inseto', 0),
(null, 'Cobroca', 'Pedra', 0),
(null, 'Brocomonstro', 'Pedra', 0),
(null, 'Moojitsu', 'Normal/Lutador', 0),
(null, 'Mooaythai', 'Normal/Lutador', 0),
(null, 'Aquaraptor', 'Água', 0),
(null, 'Furton', 'Lutador', 0),
(null, 'Guaramite', 'Planta', 0),
(null, 'Guaradião', 'Planta', 0),
(null, 'Gaille', 'Lutador', 0),
(null, 'Gallos', 'Lutador', 0),
(null, 'Rocktorr', 'Pedra', 0),
(null, 'Electrobola', 'Elétrico', 0),
(null, 'Voltobola', 'Elétrico', 0),
(null, 'Colotinho', 'Normal', 0),
(null, 'Tourogo', 'Fogo/Elétrico', 0),
(null, 'Flamullyn', 'Fogo', 0),
(null, 'Mozilla', 'Fogo', 0),
(null, 'Firefox', 'Fogo', 0),
(null, 'Loirinea', 'Fantasma', 0),
(null, 'Godzalla', 'Dragão', 0),
(null, 'Nymphiara', 'Água', 0),
(null, 'Botorosa', 'Água', 0),
(null, 'Cerberontres', 'Fogo', 0),
(null, 'Espiritauls', 'Fantasma', 0),
(null, 'Polimacho', 'Lutador', 0),
(null, 'Nebulost', 'Metal', 0),
(null, 'Necrofox', 'Sombrio', 0),
(null, 'Verdecaos', 'Planta', 0),
(null, 'Harpycuno', 'Voador', 0),
(null, 'Mantialos', 'Água', 0),
(null, 'Kurupasso', 'Planta', 0),
(null, 'Tornasci', 'Terra', 0),
(null, 'Nyxtwo', 'Psíquico', 0),
(null, 'Zephy', 'Voador', 0),
(null, 'Solaris', 'Desconhecido', 0);

insert into Comentarios values
(null, 'AMEI', 'Positiva', 'Amei muito o jogo', 1),
(null, 'AMEI', 'Positiva', 'Amei muito o jogoooo', 2);

truncate table Comentarios;

select * from Usuarios;
select idUsuario from usuarios where email = 'a';
select idUsuario from usuarios where email = 'a';
insert into curtidas values ((select idUsuario from usuarios where email = 'a'), 1);
select * from Pokemons;
select * from Curtidas;

delete from Curtidas where fk_usuarios = (select idUsuario from usuarios where email = 'a') and fk_pokemons = 34;
truncate table Curtidas;
select * from Comentarios;
select nome, qtdCurtidas from Pokemons order by qtdCurtidas desc limit 5;
update Pokemons
SET qtdCurtidas = qtdCurtidas + 1
WHERE idPokemons = 12;


update Pokemons
SET qtdCurtidas = qtdCurtidas - 1
WHERE idPokemons = 34;