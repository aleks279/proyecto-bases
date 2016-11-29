use [Proyecto-Ferreteria]
go

--Retorna el empleado que vendio mas cosas

create procedure obtenerEmpleadoGanador @FerreteriaId int
as
begin
	declare @SucursalGanadoraId as int;

	declare @EmpleadoConMasOrdenes as int;

	select @EmpleadoConMasOrdenes = x.Employee_Id
		from (
			select O.Employee_Id, count(*) as cuenta, rank() over (order by count(*) desc) as rank
			from Orders as O
			group by O.Employee_Id
		) as x inner join Departments as D on x.Employee_Id = D.Employee_Id
			inner join Branches as B on D.Branch_Id = B.Id inner join HardwareStores as H
			on H.Id = B.HardwareStore_Id and H.Id = @FerreteriaId
		where x.rank = 1;

	return @EmpleadoConMasOrdenes;
end
go

--Ajustar vacaiones de empleados
create procedure ajustarVacaciones
as
begin
	begin try
		set xact_abort on

		begin transaction
			update Users_Employee
			set YearlyVacationDays = YearlyVacationDays + 2
			where year(HireDate - SYSDATETIME()) > 5 and year(HireDate - SYSDATETIME()) < 8

			update Users_Employee
			set YearlyVacationDays = YearlyVacationDays + 4
			where year(HireDate - SYSDATETIME()) > 9 and year(HireDate - SYSDATETIME()) < 12

			update Users_Employee
			set YearlyVacationDays = YearlyVacationDays + 6
			where year(HireDate - SYSDATETIME()) > 12
		commit transaction

	end try
	begin catch
		if xact_state() <> 0
			rollback transaction
		raiserror('shit', 16, 1)
	end catch
end
go