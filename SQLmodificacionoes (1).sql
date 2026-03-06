/*select * from Videojuegos
where Release_Year < 2020;*/

/*select * from Videojuegos
where Release_Year = 2019 and IdDificultad = 1;*/

/*select * from Videojuegos
where IdJuego <10 order by IdJuego desc;*/

/*select 
v.Titulo,
g.Nombre
from Generos g
join Videojuegos v
ON v.IdJuego = g.IdGenero;*/

/*select
v.Team_Size,
v.idJuego,
v.titulo,
c.IdClasificacion,
c.Nombre
from Videojuegos v   join Clasificaciones c ON v.Team_Size = c.IdClasificacion;*/


/*select 
SUM ([IdGenero]) over(
order by[idJuego])as [sanguchito]
from Videojuegos*/

/*SELECT
    d.IdDificultad,
    d.Nombre,
	g.IdGenero,
	g.Nombre,
    COUNT(v.idJuego) AS CantidadJuegos
FROM Dificultades d
LEFT JOIN Videojuegos v
    ON v.IdDificultad = d.IdDificultad
left join Generos g
ON v.IdGenero = g.IdGenero
GROUP BY
    d.IdDificultad,
    d.Nombre,
	g.IdGenero,
	g.Nombre;*/

/*SELECT
    d.IdDificultad,
    d.Nombre,
	g.IdGenero,
	g.Nombre,
    COUNT(v.idJuego) AS CantidadJuegos
FROM Dificultades d
LEFT JOIN Videojuegos v
    ON v.IdDificultad = d.IdDificultad
left join Generos g
ON v.IdGenero = g.IdGenero
GROUP BY
    d.IdDificultad,
    d.Nombre,
	g.IdGenero,
	g.Nombre
having count(v.IdJuego) >= 1;*/

 /*select idJuego, titulo, release_year
 from Videojuegos
 where Release_Year between 2018 AND 2025
 order by Release_Year;*/