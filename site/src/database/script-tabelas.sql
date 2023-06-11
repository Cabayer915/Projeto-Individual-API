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
    tipo VARCHAR(20) NOT NULL
);

-- Criação da tabela de votos
CREATE TABLE curtidas (
    idCurtidas INT AUTO_INCREMENT,
    fk_usuarios INT,
    fk_pokemons INT,
    qtdCurtidas INT DEFAULT 0,
    PRIMARY KEY (idCurtidas, fk_usuarios, fk_pokemons),
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

INSERT INTO Pokemons VALUES
(null, 'Pantheon', 'Sombrio');

INSERT INTO Curtidas VALUES
(null,1,1,7);

update Curtidas
SET qtdCurtidas = qtdCurtidas + 1
WHERE idCurtidas = 1;

update Curtidas
SET qtdCurtidas = qtdCurtidas - 1
WHERE idCurtidas = 1;

INSERT INTO Pokemons VALUES
(null, 'Pantheleon', 'Sombrio');

INSERT INTO Pokemons VALUES
(null, 'Panthelord', 'Sombrio'),
(null, 'Erukilava', 'Fogo'),
(null, 'Mandralava', 'Fogo'),
(null, 'Cinccilava', 'Fogo/Dragão'),
(null, 'Bufo', 'Planta'),
(null, 'Regulari', 'Planta'),
(null, 'Buforegulari', 'Planta'),
(null, 'Kapi', 'Água'),
(null, 'Capivara', 'Água'),
(null, 'Capivarias', 'Água'),
(null, 'Goli', 'Pedra'),
(null, 'Golemita', 'Pedra'),
(null, 'Golem-de-Nióbio', 'Pedra'),
(null, 'Plantacco', 'Planta'),
(null, 'Cannabola', 'Planta/Psíquico'),
(null, 'Cannabright', 'Planta/Psíquico'),
(null, 'Blu', 'Voador'),
(null, 'Zarara', 'Voador'),
(null, 'Mordecai', 'Voador'),
(null, 'Turguiti', 'Água'),
(null, 'Turtilion', 'Água'),
(null, 'Aquatron', 'Água'),
(null, 'Tuca', 'Voador'),
(null, 'Tucanon', 'Voador'),
(null, 'Titi', 'Normal/Veneno'),
(null, 'Lepto', 'Normal/Veneno'),
(null, 'Oneevil', 'Elétrico'),
(null, 'Antient', 'Normal'),
(null, 'Antienne', 'Normal'),
(null, 'Antiox', 'Normal'),
(null, 'Azumi', 'Água'),
(null, 'Azumar', 'Água'),
(null, 'Azumarilion', 'Água'),
(null, 'Bizori', 'Inseto'),
(null, 'Bizu', 'Inseto'),
(null, 'Bizz', 'Inseto'),
(null, 'Angelwool', 'Fada'),
(null, 'Favelha', 'Fada'),
(null, 'Draco', 'Dragão/Sombrio'),
(null, 'Draconight', 'Dragão/Sombrio'),
(null, 'Botozul', 'Água'),
(null, 'Botoshark', 'Água'),
(null, 'Botolodon', 'Água/Dragão'),
(null, 'Denguelarva', 'Inseto'),
(null, 'Chicungunyat', 'Inseto'),
(null, 'Zikatron', 'Inseto/Metal'),
(null, 'Yudi', 'Psíquico'),
(null, 'Mestre Yudi', 'Lutador/Psíquico'),
(null, 'Quatino', 'Normal'),
(null, 'Quatizap', 'Normal'),
(null, 'Arirania', 'Água'),
(null, 'Ararenea', 'Água'),
(null, 'Bongo Bongo', 'Veneno/Metal'),
(null, 'Girestrike', 'Elétrico'),
(null, 'Gireletrico', 'Elétrico'),
(null, 'Casosaur', 'Voador/Lutador'),
(null, 'Casosaurus', 'Voador/Lutador'),
(null, 'Pikazul', 'Elétrico'),
(null, 'Caipix', 'Fogo'),
(null, 'Campori', 'Fogo'),
(null, 'Beta', 'Água'),
(null, 'Sigma', 'Água'),
(null, 'Pedri', 'Pedra'),
(null, 'Pedrini', 'Pedra/Lutador'),
(null, 'Pedronco', 'Pedra/Lutador'),
(null, 'Antalus', 'Normal'),
(null, 'Tapyro', 'Fogo'),
(null, 'Ossorror', 'Fantasma'),
(null, 'Aquatinny', 'Água'),
(null, 'Aquatinna', 'Água'),
(null, 'Aquatindra', 'Água'),
(null, 'Baconius', 'Normal'),
(null, 'Porkchomp', 'Normal'),
(null, 'Skunkbloom', 'Sombrio/Planta'),
(null, 'Bulbix', 'Planta'),
(null, 'Bulbal', 'Planta'),
(null, 'Bulbassalto', 'Planta'),
(null, 'Glaciala', 'Gelo'),
(null, 'Cachogo', 'Fogo'),
(null, 'Lofogo', 'Fogo'),
(null, 'Lolava', 'Fogo'),
(null, 'Gaspar', 'Fantasma'),
(null, 'Gasfear', 'Fantasma'),
(null, 'Espectraria', 'Psíquico'),
(null, 'Igniberos', 'Fogo/Dragão'),
(null, 'Mana', 'Água'),
(null, 'Manati', 'Água'),
(null, 'Manation', 'Água'),
(null, 'Caramello', 'Normal'),
(null, 'Caramellado', 'Normal'),
(null, 'Caspor', 'Lutador'),
(null, 'Caspoeira', 'Lutador'),
(null, 'Swamplord', 'Terra/Veneno'),
(null, 'Pira', 'Água'),
(null, 'Pira-Pira', 'Água'),
(null, 'Dragonvin', 'Dragão/Planta'),
(null, 'Dragonsipó', 'Dragão/Planta'),
(null, 'Dragondoso', 'Dragão/Planta'),
(null, 'Mimico', 'Psíquico'),
(null, 'Lacrosta', 'Água'),
(null, 'Lacrocos', 'Água'),
(null, 'Croconite', 'Água/Sombrio'),
(null, 'Cori', 'Veneno'),
(null, 'Corali', 'Dragão/Veneno'),
(null, 'Coralion', 'Dragão/Veneno'),
(null, 'Chinchigode', 'Fada'),
(null, 'Lobito', 'Sombrio'),
(null, 'Lobuspidon', 'Sombrio'),
(null, 'Camoubush', 'Planta'),
(null, 'Gamber', 'Psíquico'),
(null, 'Gainex', 'Psíquico'),
(null, 'Gambolonux', 'Psíquico/Fada'),
(null, 'Loro', 'Voador'),
(null, 'José', 'Voador'),
(null, 'Mimaco', 'Normal'),
(null, 'Mamico', 'Normal'),
(null, 'Mamaco', 'Lutador'),
(null, 'Pondaor', 'Normal'),
(null, 'Phantasma', 'Fantasma'),
(null, 'Aimary', 'Água'),
(null, 'Aimoon', 'Gelo'),
(null, 'Rhymal', 'Metal'),
(null, 'Rhythorn', 'Metal'),
(null, 'Pombion', 'Voador'),
(null, 'Pombiot', 'Voador'),
(null, 'Pombiotto', 'Voador'),
(null, 'Sayury', 'Água/Psíquico'),
(null, 'Geoshark', 'Água/Pedra'),
(null, 'Litiodactyl', 'Pedra/Dragão'),
(null, 'Piuky', 'Fada/Água'),
(null, 'Piukynox', 'Fada/Água'),
(null, 'Benjamor', 'Elétrico'),
(null, 'Benjavarios', 'Elétrico'),
(null, 'Hitmanchete', 'Lutador'),
(null, 'Bandeirogo', 'Fogo/Voador'),
(null, 'Arraiatico', 'Fogo/Voador'),
(null, 'Pacaflora', 'Planta'),
(null, 'Noctowl de São Paulo', 'Voador'),
(null, 'Querodart', 'Voador'),
(null, 'Querocaos', 'Voador'),
(null, 'Kof Kof', 'Veneno'),
(null, 'Solarigator', 'Elétrico'),
(null, 'Sloty', 'Normal'),
(null, 'Slothking', 'Normal'),
(null, 'Meowstic', 'Fada/Dragão'),
(null, 'Leviatan', 'Água/Fada'),
(null, 'Phantasmal', 'Fantasma'),
(null, 'Borbosia', 'Voador/Inseto'),
(null, 'Metano', 'Metal'),
(null, 'Metanon', 'Metal'),
(null, 'Metalord', 'Metal'),
(null, 'Seabird', 'Voador/Água'),
(null, 'Metallica', 'Metal'),
(null, 'CompuGPTech', 'Elétrico'),
(null, 'Pastudo', 'Lutador'),
(null, 'Araucagélido', 'Gelo'),
(null, 'Tatucs', 'Terra'),
(null, 'Tatum', 'Terra'),
(null, 'Crustaconcha', 'Água'),
(null, 'Crustaking', 'Água'),
(null, 'Crustalion', 'Água'),
(null, 'Ariadinarak', 'Inseto'),
(null, 'Ariana Del Rey', 'Inseto'),
(null, 'Cobroca', 'Pedra'),
(null, 'Brocomonstro', 'Pedra'),
(null, 'Moojitsu', 'Normal/Lutador'),
(null, 'Mooaythai', 'Normal/Lutador'),
(null, 'Aquaraptor', 'Água'),
(null, 'Furton', 'Lutador'),
(null, 'Guaramite', 'Planta'),
(null, 'Guaradião', 'Planta'),
(null, 'Gaille', 'Lutador'),
(null, 'Gallos', 'Lutador'),
(null, 'Rocktorr', 'Pedra'),
(null, 'Electrobola', 'Elétrico'),
(null, 'Voltobola', 'Elétrico'),
(null, 'Colotinho', 'Normal'),
(null, 'Tourogo', 'Fogo/Elétrico'),
(null, 'Flamullyn', 'Fogo'),
(null, 'Mozilla', 'Fogo'),
(null, 'Firefox', 'Fogo'),
(null, 'Loirinea', 'Fantasma'),
(null, 'Godzalla', 'Dragão'),
(null, 'Nymphiara', 'Água'),
(null, 'Botorosa', 'Água'),
(null, 'Cerberontres', 'Fogo'),
(null, 'Espiritauls', 'Fantasma'),
(null, 'Polimacho', 'Lutador'),
(null, 'Nebulost', 'Metal'),
(null, 'Necrofox', 'Sombrio'),
(null, 'Verdecaos', 'Planta'),
(null, 'Harpycuno', 'Voador'),
(null, 'Mantialos', 'Água'),
(null, 'Kurupasso', 'Planta'),
(null, 'Tornasci', 'Terra'),
(null, 'Nyxtwo', 'Psíquico'),
(null, 'Zephy', 'Voador'),
(null, 'Solaris', 'Desconhecido');

insert into Comentarios values
(null, 'AMEI', 'Positiva', 'Amei muito o jogo', 1),
(null, 'AMEI', 'Positiva', 'Amei muito o jogoooo', 2);

truncate table Comentarios;

select * from Usuarios;
select * from Pokemons;
select * from Curtidas;
select * from Comentarios;