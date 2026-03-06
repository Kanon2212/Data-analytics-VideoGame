/*ALTER TABLE dbo.Videojuegos
ADD ReleaseDate DATE;
GO

UPDATE dbo.Videojuegos
SET ReleaseDate = DATEFROMPARTS(Release_Year, 1, 1);
GO*/

/*CREATE TABLE dbo.Videojuegos_Generos (
    IdJuego INT NOT NULL,
    IdGenero INT NOT NULL,
    CONSTRAINT PK_Videojuegos_Generos
        PRIMARY KEY (IdJuego, IdGenero),
    CONSTRAINT FK_VG_Juego
        FOREIGN KEY (IdJuego) REFERENCES dbo.Videojuegos(IdJuego),
    CONSTRAINT FK_VG_Genero
        FOREIGN KEY (IdGenero) REFERENCES dbo.Generos(IdGenero)
);
GO*/
/*INSERT INTO dbo.Videojuegos_Generos (IdJuego, IdGenero)
SELECT IdJuego, IdGenero
FROM dbo.Videojuegos
WHERE IdGenero IS NOT NULL;
GO*/
/*CREATE INDEX IX_Videojuegos_ReleaseDate
ON dbo.Videojuegos (ReleaseDate);
GO

CREATE INDEX IX_VideojuegosGeneros_IdGenero
ON dbo.Videojuegos_Generos (IdGenero);
GO*/
/*UPDATE dbo.Videojuegos
SET ReleaseDate =
    DATEADD(
        DAY,
        ABS(CHECKSUM(NEWID())) % 
        (CASE 
            WHEN Release_Year % 4 = 0 
             AND (Release_Year % 100 <> 0 OR Release_Year % 400 = 0)
                THEN 366 
            ELSE 365 
         END),
        DATEFROMPARTS(Release_Year, 1, 1)
    );*/

