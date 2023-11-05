GO

create   proc SaveCarrera

@CarreraId varchar(20),
@Nombre varchar(100),
@Facultad varchar(100)

as

	begin

		declare @resultado as table
		(
		estado int,
		mensaje varchar(500)
		)

		--insercion o actualizacion
		if ISNULL(@CarreraId,0)=0
			begin
				insert dbo.Carrera(ID,NOMBRE,FACULTAD)
				values (@CarreraId,@Nombre,@Facultad)
			end
		else
			begin
				update dbo.Carrera set NOMBRE = @Nombre,FACULTAD = @Facultad
				where ID=@CarreraId
			end

		insert @resultado values (1,'Saved')

		select * from @resultado
	end
GO

GO
CREATE PROCEDURE DeleteCarrera

@CarreraID varchar(20)

AS
BEGIN
	DELETE FROM dbo.Carrera
	WHERE ID=@CarreraID
	SELECT 1 AS ESTADO,'Carrera Deleted' as MENSAJE

END

-- Estudiante

GO

create   proc SaveEstudiante

@Cif varchar(20),
@Nombre varchar(50),
@Apellido varchar(50),
@Carrera varchar(100)

as

	begin

		declare @resultado as table
		(
		estado int,
		mensaje varchar(500)
		)

		--insercion o actualizacion
		if ISNULL(@Cif,0)=0
			begin
				insert dbo.Estudiante(CIF,NOMBRE,APELLIDO,CARRERA)
				values (@Cif,@Nombre,@Apellido,@Carrera)
			end
		else
			begin
				update dbo.Estudiante set NOMBRE = @Nombre,APELLIDO = @Apellido,CARRERA = @Carrera
				where CIF=@Cif
			end

		insert @resultado values (1,'Saved')

		select * from @resultado
	end
GO

GO
CREATE PROCEDURE DeleteEstudiante

@Cif varchar(20)

AS
BEGIN
	DELETE FROM dbo.Estudiante
	WHERE CIF=@Cif
	SELECT 1 AS ESTADO,'Estudiante Deleted' as MENSAJE

END


--Libro

GO

create   proc SaveLibro

@Isbn varchar(20),
@Nombre varchar(100),
@Editorial varchar(100),
@Autor varchar(100)

as

	begin

		declare @resultado as table
		(
		estado int,
		mensaje varchar(500)
		)

		--insercion o actualizacion
		if ISNULL(@Isbn,0)=0
			begin
				insert dbo.Libro(ISBN,NOMBRE,EDITORIAL,AUTOR)
				values (@Isbn,@Nombre,@Editorial,@Autor)
			end
		else
			begin
				update dbo.Libro set NOMBRE = @Nombre,EDITORIAL = @Editorial,AUTOR = @Autor
				where ISBN=@Isbn
			end

		insert @resultado values (1,'Saved')

		select * from @resultado
	end
GO

GO
CREATE PROCEDURE DeleteLibro

@Isbn varchar(20)

AS
BEGIN
	DELETE FROM dbo.Libro
	WHERE ISBN=@Isbn
	SELECT 1 AS ESTADO,'Libro Deleted' as MENSAJE

END

