use [Proyecto-Ferreteria]
go

/* Insertar ferreterias */
create procedure insertFerreteria @nombre varchar(10),
								@telefono varchar(10)
as
begin
	begin try
		set xact_abort on

		begin transaction
			insert into HardwareStores(Name, PhoneCentral)
			values(@nombre, @telefono)
		commit transaction
	end try
	begin catch
		if xact_state() <> 0
			rollback transaction
		raiserror('shit', 16, 1)
	end catch
end
go

/* Insertar sucursales */
create procedure insertSucursal @direccion varchar(10),
								@area geography,
								@nombre varchar(50),
								@ferreteria varchar(50)
as
begin
	begin try
		set xact_abort on

		begin transaction
			declare @ferreteriaId as int
			select @ferreteriaId = Id from HardwareStores where Name = @ferreteria

			insert into Branches(AddressPoint, ServiceArea, Name)
			values(@direccion, @area, @nombre)

		commit transaction
	end try
	begin catch
		if xact_state() <> 0
			rollback transaction
		raiserror('shit', 16, 1)
	end catch
end
go

/* Insertar sucursales */
create procedure insertDepartamento @nombre varchar(10),
									@encargadoId int = null,
									@sucursal varchar(50),
									@ferreteria varchar(50)
as
begin
	begin try
		set xact_abort on

		begin transaction
			declare @ferreteriaId as int
			select @ferreteriaId = Id from HardwareStores where Name = @ferreteria

			declare @sucursalId int
			select @sucursalId = B.Id
			from Branches as B inner join HardwareStores as H on H.Id = B.HardwareStore_Id

			insert into Departments(Name, Employee_Id, Branch_Id)
			values(@nombre, @encargadoId, @sucursalId)
			
			declare @departamentoId as int
			select @departamentoId = IDENT_CURRENT('Departamento')

		commit transaction
	end try
	begin catch
		if xact_state() <> 0
			rollback transaction
		raiserror('shit', 16, 1)
	end catch
end
go