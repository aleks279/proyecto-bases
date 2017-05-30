
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/30/2016 18:10:45
-- Generated from EDMX file: C:\Users\Saul\Documents\TEC\2016 - Semestre II\Bases de Datos II\Proyecto-Ferreteria\Proyecto_V4\Proyecto_V4\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Proyecto-Ferreteria];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_BranchDepartment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Departments] DROP CONSTRAINT [FK_BranchDepartment];
GO
IF OBJECT_ID(N'[dbo].[FK_HardwareStoreBranch]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Branches] DROP CONSTRAINT [FK_HardwareStoreBranch];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeTruck]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Trucks] DROP CONSTRAINT [FK_EmployeeTruck];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeDepartment]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Departments] DROP CONSTRAINT [FK_EmployeeDepartment];
GO
IF OBJECT_ID(N'[dbo].[FK_ShelfProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_ShelfProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductPicture]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pictures] DROP CONSTRAINT [FK_ProductPicture];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductFeature]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Features] DROP CONSTRAINT [FK_ProductFeature];
GO
IF OBJECT_ID(N'[dbo].[FK_DepartmentAisle]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Aisles] DROP CONSTRAINT [FK_DepartmentAisle];
GO
IF OBJECT_ID(N'[dbo].[FK_AisleShelf]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Shelves] DROP CONSTRAINT [FK_AisleShelf];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderProduct_Order]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderProduct] DROP CONSTRAINT [FK_OrderProduct_Order];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderProduct_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[OrderProduct] DROP CONSTRAINT [FK_OrderProduct_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_ClientOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductPreOrder_Product]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductPreOrder] DROP CONSTRAINT [FK_ProductPreOrder_Product];
GO
IF OBJECT_ID(N'[dbo].[FK_ProductPreOrder_PreOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProductPreOrder] DROP CONSTRAINT [FK_ProductPreOrder_PreOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeePreOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PreOrders] DROP CONSTRAINT [FK_EmployeePreOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Orders] DROP CONSTRAINT [FK_EmployeeOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_OrderDelivery]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Deliveries] DROP CONSTRAINT [FK_OrderDelivery];
GO
IF OBJECT_ID(N'[dbo].[FK_RouteDelivery]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Deliveries] DROP CONSTRAINT [FK_RouteDelivery];
GO
IF OBJECT_ID(N'[dbo].[FK_TruckRoute]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Routes] DROP CONSTRAINT [FK_TruckRoute];
GO
IF OBJECT_ID(N'[dbo].[FK_EmployeeWarning]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Warnings] DROP CONSTRAINT [FK_EmployeeWarning];
GO
IF OBJECT_ID(N'[dbo].[FK_ClientPreOrder]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PreOrders] DROP CONSTRAINT [FK_ClientPreOrder];
GO
IF OBJECT_ID(N'[dbo].[FK_BrandProduct]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Products] DROP CONSTRAINT [FK_BrandProduct];
GO
IF OBJECT_ID(N'[dbo].[FK_BranchEmployee]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Employee] DROP CONSTRAINT [FK_BranchEmployee];
GO
IF OBJECT_ID(N'[dbo].[FK_Employee_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Employee] DROP CONSTRAINT [FK_Employee_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Client_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users_Client] DROP CONSTRAINT [FK_Client_inherits_User];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[HardwareStores]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HardwareStores];
GO
IF OBJECT_ID(N'[dbo].[Branches]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Branches];
GO
IF OBJECT_ID(N'[dbo].[Departments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Departments];
GO
IF OBJECT_ID(N'[dbo].[Trucks]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Trucks];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Shelves]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Shelves];
GO
IF OBJECT_ID(N'[dbo].[Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Products];
GO
IF OBJECT_ID(N'[dbo].[Brands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Brands];
GO
IF OBJECT_ID(N'[dbo].[Pictures]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pictures];
GO
IF OBJECT_ID(N'[dbo].[Features]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Features];
GO
IF OBJECT_ID(N'[dbo].[Aisles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Aisles];
GO
IF OBJECT_ID(N'[dbo].[Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Orders];
GO
IF OBJECT_ID(N'[dbo].[Deliveries]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Deliveries];
GO
IF OBJECT_ID(N'[dbo].[PreOrders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PreOrders];
GO
IF OBJECT_ID(N'[dbo].[Routes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Routes];
GO
IF OBJECT_ID(N'[dbo].[Warnings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Warnings];
GO
IF OBJECT_ID(N'[dbo].[Users_Employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Employee];
GO
IF OBJECT_ID(N'[dbo].[Users_Client]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users_Client];
GO
IF OBJECT_ID(N'[dbo].[OrderProduct]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderProduct];
GO
IF OBJECT_ID(N'[dbo].[ProductPreOrder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProductPreOrder];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'HardwareStores'
CREATE TABLE [dbo].[HardwareStores] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [PhoneCentral] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Branches'
CREATE TABLE [dbo].[Branches] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [ServiceArea] geography  NOT NULL,
    [AddressPoint] geography  NOT NULL,
    [HardwareStore_Id] int  NOT NULL
);
GO

-- Creating table 'Departments'
CREATE TABLE [dbo].[Departments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Branch_Id] int  NOT NULL,
    [Employee_Id] int  NOT NULL
);
GO

-- Creating table 'Trucks'
CREATE TABLE [dbo].[Trucks] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PlateNumber] nvarchar(max)  NOT NULL,
    [WeightCapacity] nvarchar(max)  NOT NULL,
    [Model] nvarchar(max)  NOT NULL,
    [Year] nvarchar(max)  NOT NULL,
    [Mileage] nvarchar(max)  NOT NULL,
    [FuelCapacity] nvarchar(max)  NOT NULL,
    [Employee_Id] int  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Shelves'
CREATE TABLE [dbo].[Shelves] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Aisle_Id] int  NOT NULL
);
GO

-- Creating table 'Products'
CREATE TABLE [dbo].[Products] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Use] nvarchar(max)  NOT NULL,
    [AmountAvailable] int  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [Shelf_Id] int  NOT NULL,
    [Brand_Id] int  NOT NULL
);
GO

-- Creating table 'Brands'
CREATE TABLE [dbo].[Brands] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Pictures'
CREATE TABLE [dbo].[Pictures] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [URL] nvarchar(max)  NOT NULL,
    [Product_Id] int  NOT NULL
);
GO

-- Creating table 'Features'
CREATE TABLE [dbo].[Features] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Product_Id] int  NOT NULL
);
GO

-- Creating table 'Aisles'
CREATE TABLE [dbo].[Aisles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Department_Id] int  NOT NULL
);
GO

-- Creating table 'Orders'
CREATE TABLE [dbo].[Orders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] nvarchar(max)  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [ClientConfirm] bit  NOT NULL,
    [Client_Id] int  NOT NULL,
    [Employee_Id] int  NOT NULL
);
GO

-- Creating table 'Deliveries'
CREATE TABLE [dbo].[Deliveries] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Address] geography  NOT NULL,
    [Date] datetime  NOT NULL,
    [Order_Id] int  NOT NULL,
    [Route_Id] int  NOT NULL
);
GO

-- Creating table 'PreOrders'
CREATE TABLE [dbo].[PreOrders] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Date] datetime  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [Employee_Id] int  NOT NULL,
    [Client_Id] int  NOT NULL
);
GO

-- Creating table 'Routes'
CREATE TABLE [dbo].[Routes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Truck_Id] int  NOT NULL
);
GO

-- Creating table 'Warnings'
CREATE TABLE [dbo].[Warnings] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Date] datetime  NOT NULL,
    [Employee_Id] int  NOT NULL
);
GO

-- Creating table 'Users_Employee'
CREATE TABLE [dbo].[Users_Employee] (
    [HireDate] datetime  NOT NULL,
    [YearlyVacationDays] nvarchar(max)  NOT NULL,
    [Id] int  NOT NULL,
    [Branch_Id] int  NOT NULL
);
GO

-- Creating table 'Users_Client'
CREATE TABLE [dbo].[Users_Client] (
    [Address] geography  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'OrderProduct'
CREATE TABLE [dbo].[OrderProduct] (
    [Orders_Id] int  NOT NULL,
    [Products_Id] int  NOT NULL
);
GO

-- Creating table 'ProductPreOrder'
CREATE TABLE [dbo].[ProductPreOrder] (
    [Products_Id] int  NOT NULL,
    [PreOrders_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'HardwareStores'
ALTER TABLE [dbo].[HardwareStores]
ADD CONSTRAINT [PK_HardwareStores]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Branches'
ALTER TABLE [dbo].[Branches]
ADD CONSTRAINT [PK_Branches]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [PK_Departments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Trucks'
ALTER TABLE [dbo].[Trucks]
ADD CONSTRAINT [PK_Trucks]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Shelves'
ALTER TABLE [dbo].[Shelves]
ADD CONSTRAINT [PK_Shelves]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [PK_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Brands'
ALTER TABLE [dbo].[Brands]
ADD CONSTRAINT [PK_Brands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Pictures'
ALTER TABLE [dbo].[Pictures]
ADD CONSTRAINT [PK_Pictures]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Features'
ALTER TABLE [dbo].[Features]
ADD CONSTRAINT [PK_Features]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Aisles'
ALTER TABLE [dbo].[Aisles]
ADD CONSTRAINT [PK_Aisles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [PK_Orders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Deliveries'
ALTER TABLE [dbo].[Deliveries]
ADD CONSTRAINT [PK_Deliveries]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PreOrders'
ALTER TABLE [dbo].[PreOrders]
ADD CONSTRAINT [PK_PreOrders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [PK_Routes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Warnings'
ALTER TABLE [dbo].[Warnings]
ADD CONSTRAINT [PK_Warnings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Employee'
ALTER TABLE [dbo].[Users_Employee]
ADD CONSTRAINT [PK_Users_Employee]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users_Client'
ALTER TABLE [dbo].[Users_Client]
ADD CONSTRAINT [PK_Users_Client]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Orders_Id], [Products_Id] in table 'OrderProduct'
ALTER TABLE [dbo].[OrderProduct]
ADD CONSTRAINT [PK_OrderProduct]
    PRIMARY KEY CLUSTERED ([Orders_Id], [Products_Id] ASC);
GO

-- Creating primary key on [Products_Id], [PreOrders_Id] in table 'ProductPreOrder'
ALTER TABLE [dbo].[ProductPreOrder]
ADD CONSTRAINT [PK_ProductPreOrder]
    PRIMARY KEY CLUSTERED ([Products_Id], [PreOrders_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Branch_Id] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [FK_BranchDepartment]
    FOREIGN KEY ([Branch_Id])
    REFERENCES [dbo].[Branches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BranchDepartment'
CREATE INDEX [IX_FK_BranchDepartment]
ON [dbo].[Departments]
    ([Branch_Id]);
GO

-- Creating foreign key on [HardwareStore_Id] in table 'Branches'
ALTER TABLE [dbo].[Branches]
ADD CONSTRAINT [FK_HardwareStoreBranch]
    FOREIGN KEY ([HardwareStore_Id])
    REFERENCES [dbo].[HardwareStores]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_HardwareStoreBranch'
CREATE INDEX [IX_FK_HardwareStoreBranch]
ON [dbo].[Branches]
    ([HardwareStore_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'Trucks'
ALTER TABLE [dbo].[Trucks]
ADD CONSTRAINT [FK_EmployeeTruck]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeTruck'
CREATE INDEX [IX_FK_EmployeeTruck]
ON [dbo].[Trucks]
    ([Employee_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'Departments'
ALTER TABLE [dbo].[Departments]
ADD CONSTRAINT [FK_EmployeeDepartment]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeDepartment'
CREATE INDEX [IX_FK_EmployeeDepartment]
ON [dbo].[Departments]
    ([Employee_Id]);
GO

-- Creating foreign key on [Shelf_Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_ShelfProduct]
    FOREIGN KEY ([Shelf_Id])
    REFERENCES [dbo].[Shelves]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ShelfProduct'
CREATE INDEX [IX_FK_ShelfProduct]
ON [dbo].[Products]
    ([Shelf_Id]);
GO

-- Creating foreign key on [Product_Id] in table 'Pictures'
ALTER TABLE [dbo].[Pictures]
ADD CONSTRAINT [FK_ProductPicture]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductPicture'
CREATE INDEX [IX_FK_ProductPicture]
ON [dbo].[Pictures]
    ([Product_Id]);
GO

-- Creating foreign key on [Product_Id] in table 'Features'
ALTER TABLE [dbo].[Features]
ADD CONSTRAINT [FK_ProductFeature]
    FOREIGN KEY ([Product_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductFeature'
CREATE INDEX [IX_FK_ProductFeature]
ON [dbo].[Features]
    ([Product_Id]);
GO

-- Creating foreign key on [Department_Id] in table 'Aisles'
ALTER TABLE [dbo].[Aisles]
ADD CONSTRAINT [FK_DepartmentAisle]
    FOREIGN KEY ([Department_Id])
    REFERENCES [dbo].[Departments]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DepartmentAisle'
CREATE INDEX [IX_FK_DepartmentAisle]
ON [dbo].[Aisles]
    ([Department_Id]);
GO

-- Creating foreign key on [Aisle_Id] in table 'Shelves'
ALTER TABLE [dbo].[Shelves]
ADD CONSTRAINT [FK_AisleShelf]
    FOREIGN KEY ([Aisle_Id])
    REFERENCES [dbo].[Aisles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AisleShelf'
CREATE INDEX [IX_FK_AisleShelf]
ON [dbo].[Shelves]
    ([Aisle_Id]);
GO

-- Creating foreign key on [Orders_Id] in table 'OrderProduct'
ALTER TABLE [dbo].[OrderProduct]
ADD CONSTRAINT [FK_OrderProduct_Order]
    FOREIGN KEY ([Orders_Id])
    REFERENCES [dbo].[Orders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Products_Id] in table 'OrderProduct'
ALTER TABLE [dbo].[OrderProduct]
ADD CONSTRAINT [FK_OrderProduct_Product]
    FOREIGN KEY ([Products_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderProduct_Product'
CREATE INDEX [IX_FK_OrderProduct_Product]
ON [dbo].[OrderProduct]
    ([Products_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_ClientOrder]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Users_Client]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientOrder'
CREATE INDEX [IX_FK_ClientOrder]
ON [dbo].[Orders]
    ([Client_Id]);
GO

-- Creating foreign key on [Products_Id] in table 'ProductPreOrder'
ALTER TABLE [dbo].[ProductPreOrder]
ADD CONSTRAINT [FK_ProductPreOrder_Product]
    FOREIGN KEY ([Products_Id])
    REFERENCES [dbo].[Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [PreOrders_Id] in table 'ProductPreOrder'
ALTER TABLE [dbo].[ProductPreOrder]
ADD CONSTRAINT [FK_ProductPreOrder_PreOrder]
    FOREIGN KEY ([PreOrders_Id])
    REFERENCES [dbo].[PreOrders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductPreOrder_PreOrder'
CREATE INDEX [IX_FK_ProductPreOrder_PreOrder]
ON [dbo].[ProductPreOrder]
    ([PreOrders_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'PreOrders'
ALTER TABLE [dbo].[PreOrders]
ADD CONSTRAINT [FK_EmployeePreOrder]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeePreOrder'
CREATE INDEX [IX_FK_EmployeePreOrder]
ON [dbo].[PreOrders]
    ([Employee_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'Orders'
ALTER TABLE [dbo].[Orders]
ADD CONSTRAINT [FK_EmployeeOrder]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeOrder'
CREATE INDEX [IX_FK_EmployeeOrder]
ON [dbo].[Orders]
    ([Employee_Id]);
GO

-- Creating foreign key on [Order_Id] in table 'Deliveries'
ALTER TABLE [dbo].[Deliveries]
ADD CONSTRAINT [FK_OrderDelivery]
    FOREIGN KEY ([Order_Id])
    REFERENCES [dbo].[Orders]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderDelivery'
CREATE INDEX [IX_FK_OrderDelivery]
ON [dbo].[Deliveries]
    ([Order_Id]);
GO

-- Creating foreign key on [Route_Id] in table 'Deliveries'
ALTER TABLE [dbo].[Deliveries]
ADD CONSTRAINT [FK_RouteDelivery]
    FOREIGN KEY ([Route_Id])
    REFERENCES [dbo].[Routes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RouteDelivery'
CREATE INDEX [IX_FK_RouteDelivery]
ON [dbo].[Deliveries]
    ([Route_Id]);
GO

-- Creating foreign key on [Truck_Id] in table 'Routes'
ALTER TABLE [dbo].[Routes]
ADD CONSTRAINT [FK_TruckRoute]
    FOREIGN KEY ([Truck_Id])
    REFERENCES [dbo].[Trucks]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TruckRoute'
CREATE INDEX [IX_FK_TruckRoute]
ON [dbo].[Routes]
    ([Truck_Id]);
GO

-- Creating foreign key on [Employee_Id] in table 'Warnings'
ALTER TABLE [dbo].[Warnings]
ADD CONSTRAINT [FK_EmployeeWarning]
    FOREIGN KEY ([Employee_Id])
    REFERENCES [dbo].[Users_Employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EmployeeWarning'
CREATE INDEX [IX_FK_EmployeeWarning]
ON [dbo].[Warnings]
    ([Employee_Id]);
GO

-- Creating foreign key on [Client_Id] in table 'PreOrders'
ALTER TABLE [dbo].[PreOrders]
ADD CONSTRAINT [FK_ClientPreOrder]
    FOREIGN KEY ([Client_Id])
    REFERENCES [dbo].[Users_Client]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClientPreOrder'
CREATE INDEX [IX_FK_ClientPreOrder]
ON [dbo].[PreOrders]
    ([Client_Id]);
GO

-- Creating foreign key on [Brand_Id] in table 'Products'
ALTER TABLE [dbo].[Products]
ADD CONSTRAINT [FK_BrandProduct]
    FOREIGN KEY ([Brand_Id])
    REFERENCES [dbo].[Brands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BrandProduct'
CREATE INDEX [IX_FK_BrandProduct]
ON [dbo].[Products]
    ([Brand_Id]);
GO

-- Creating foreign key on [Branch_Id] in table 'Users_Employee'
ALTER TABLE [dbo].[Users_Employee]
ADD CONSTRAINT [FK_BranchEmployee]
    FOREIGN KEY ([Branch_Id])
    REFERENCES [dbo].[Branches]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BranchEmployee'
CREATE INDEX [IX_FK_BranchEmployee]
ON [dbo].[Users_Employee]
    ([Branch_Id]);
GO

-- Creating foreign key on [Id] in table 'Users_Employee'
ALTER TABLE [dbo].[Users_Employee]
ADD CONSTRAINT [FK_Employee_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'Users_Client'
ALTER TABLE [dbo].[Users_Client]
ADD CONSTRAINT [FK_Client_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------