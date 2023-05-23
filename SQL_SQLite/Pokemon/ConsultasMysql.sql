-- Consulta 1
SELECT especies.Nombre, pokemon.Mote, pokemon.Nivel
FROM especies, pokemon
WHERE especies.idEspecies = pokemon.Especie;

-- Consulta 2
SELECT especies.Nombre AS Especie, pokemon.Mote AS Mote, movimientos.Nombre AS Ataque ,ataques.PPActual AS PPActual
FROM especies, pokemon, ataques, movimientos
WHERE Pokemon.idPokemon = ataques.Pokemon
AND especies.idEspecies = pokemon.Especie  
AND movimientos.idMovimientos = ataques.Movimiento
ORDER BY pokemon.idPokemon;

-- Consulta 3
SELECT especies.Nombre AS Especie, pokemon.Mote AS Mote,
movimientos.Nombre AS Ataque,
ataques.PPActual AS PPActual,
estados.Estado AS Estado
FROM especies, pokemon, ataques, movimientos, estados
WHERE Pokemon.idPokemon = ataques.Pokemon
AND especies.idEspecies = pokemon.Especie  
AND movimientos.idMovimientos = ataques.Movimiento
AND pokemon.Estado = estados.idEstados
ORDER BY pokemon.idPokemon;

-- Consulta 4
SELECT especies.Nombre AS Especie, pokemon.Mote As Mote, tipos.Nombre AS Tipo
FROM especies, pokemon, tipos
WHERE especies.idEspecies = pokemon.Especie
AND especies.Tipo1 = tipos.idTipos;

-- Consulta 5
SELECT especies.Nombre AS Especie,
	(SELECT tipos.Nombre FROM tipos WHERE especies.Tipo1 = tipos.idTipos) AS Tipo1,
    (SELECT tipos.Nombre FROM tipos WHERE especies.Tipo2 = tipos.idTipos)AS Tipo2
FROM especies Where especies.Tipo2 IS NOT NULL
ORDER BY especies.Nombre;

SELECT especies.Nombre AS Especie, tipos.Nombre AS Tipo1, TipoAux.Nombre As Tipo2
FROM especies, tipos, tipos TipoAux
Where especies.Tipo1 = tipos.idTipos 
AND especies.Tipo2 = TipoAux.idTipos
ORDER BY especies.Nombre;

-- Consulta 6: para obtener la cantidad por cada tipo1.
SELECT tipos.Nombre, COUNT(*) AS cantidad
FROM especies, tipos
WHERE especies.Tipo1 = tipos.idTipos
GROUP BY tipos.Nombre;

-- Consulta 7: Conssultas para cada tipo de evolucion 

SELECT especies.nombre As Pokemon, evolucionpornivel.Nivel As Nivel
FROM especies, evolucionpornivel
WHERE evolucionpornivel.Preevolucion = especies.idEspecies 
OR evolucionpornivel.Evolucion =  especies.idEspecies;


SELECT DISTINCT
	(SELECT especies.nombre FROM especies WHERE evolucionpornivel.Preevolucion = especies.idEspecies ) AS Pokemon,
    (SELECT especies.nombre FROM especies WHERE evolucionpornivel.Evolucion =  especies.idEspecies)AS Evolucion,
    evolucionpornivel.Nivel AS Nivel
	FROM especies,evolucionpornivel
   
    