CREATE TABLE `pokemondb`.`estados` (
  `idEstados` INT NOT NULL,
  `Estado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstados`));
  
  INSERT INTO estados VALUES 
  (1,'Paralizado'),
  (2, 'Quemado'),
  (3,'Envenenado'),
  (4,'GravementeEnvenenado'),
  (5,'Dormido'),
  (6,'Congelado'),
  (7,'Pokerus'),
  (8, 'Debilitado');

CREATE TABLE pokemon (
  `idPokemon` int(11) NOT NULL,
  `Especie` int(11) NOT NULL,
  `Mote` varchar(45) DEFAULT NULL,
  `Nivel` smallint(3) NOT NULL,
  `SaludMax` int(11) NOT NULL,
  `SaludActual` int(11) NOT NULL,
  `Ataque` smallint(3) NOT NULL,
  `Defensa` smallint(3) NOT NULL,
  `AtaqueEspecial` smallint(3) NOT NULL,
  `DefensaEspecial` smallint(3) NOT NULL,
  `Velocidad` smallint(3) NOT NULL,
  `PuntosDeExperiencia` int(11) NOT NULL,
  `ObjetoEquipado` int(11) NOT NULL,
  `Estado` int(11) NOT NULL,
  PRIMARY KEY (`idPokemon`),
  FOREIGN KEY (`Especie`) REFERENCES especies (`idEspecies`),
  FOREIGN KEY (`Estado`) REFERENCES estados (`idEstados`),
  FOREIGN KEY (`ObjetoEquipado`) REFERENCES items (`idItems`)
);


CREATE TABLE `pokemondb`.`ataques` (
  `idAtaques` INT NOT NULL,
  `Pokemon` INT NOT NULL,
  `Movimiento` INT NOT NULL,
  `PPMaximo` INT NOT NULL,
  `PPActual` INT NOT NULL,
  PRIMARY KEY (`idAtaques`),
  FOREIGN KEY (`Pokemon`) REFERENCES pokemon (`idPokemon`),
  FOREIGN KEY (`Movimiento`)REFERENCES  movimientos (`idMovimientos`));
  
INSERT INTO pokemon VALUES
 (1, 283, 'Lippy', 5, 20, 20,12, 8, 12, 11, 13, 152, NULL, NULL),
 (2, 27, 'Pika', 10, 30, 30, 20, 16, 16, 18, 26, 523, 210, NULL),
 (3, 179, 'Unico', 50, 181, 181, 143, 110, 156, 110, 150, 2600, 603, 1), 
 (4, 179, 'Charizard', 20, 181, 181, 143, 110, 156, 110, 150, 2600, 210, NULL),
 (5, 179, 'Blastoise', 30, 182, 182, 144, 110, 156, 110, 150, 2600, 603, 1),
 (6, 179, 'Kakuna', 40, 181, 183, 145, 111, 156, 110, 150, 2601,NULL, NULL),
 (7, 179, 'Rattata', 50, 181, 184, 146, 112, 157, 111, 151, 2602, 603, 1),
 (8, 179, 'Pikachu', 60, 181, 185, 147, 113, 158, 112, 152, 2603, 210, 1),
 (9, 179, 'Vulpix', 70, 181, 186, 148, 114, 159, 113, 153, 2604, NULL, NULL),
 (10, 179, 'Golbat', 80, 181, 187, 149, 115, 160, 114, 154, 2605, 603, NULL),
 (11, 283, 'Venonat', 5, 20, 20,12, 8, 12, 11, 13, 152, NULL, NULL);
 
 INSERT INTO ataques VALUES 
 (1, 1, 1, 35, 35),
 (2, 2, 39, 30, 30),
 (3, 1, 43, 30, 30),
 (4, 3, 94, 10, 10),
 (5, 2, 84,30, 30),
 (6, 1, 71, 25, 25),
 (7, 4, 71, 25, 25),
 (8, 5, 71, 25, 25),
 (9, 6, 71, 25, 25),
 (10, 7, 71, 25, 25),
 (11, 8, 71, 25, 25),
 (12, 9, 71, 25, 25),
 (13, 10, 71, 25, 25),
 (14, 10, 71, 25, 25),
 (15, 11, 71, 25, 25),
 (16, 11, 71, 25, 25),
 (17, 6, 71, 25, 25),
 (18, 7, 71, 25, 25),
 (19, 8, 71, 25, 25),
 (20, 9, 71, 25, 25),
 (21, 5, 71, 25, 25),
 (22, 4, 71, 25, 25),
 (23, 3, 71, 25, 25);
 
  