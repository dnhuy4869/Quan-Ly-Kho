CREATE DATABASE QuanLyKho
GO

USE QuanLyKho
GO

CREATE TABLE Unit
(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max)
)
GO 

CREATE TABLE Supplier
(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	Address NVARCHAR(max),
	Phone NVARCHAR(max),
	Email NVARCHAR(max),
	MoreInfo NVARCHAR(max),
	ContractDate DATETIME
)
GO 

CREATE TABLE Customer
(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	Address NVARCHAR(max),
	Phone NVARCHAR(max),
	Email NVARCHAR(max),
	MoreInfo NVARCHAR(max),
	ContractDate DATETIME
)
GO

CREATE TABLE Object
(
	Id NVARCHAR(128) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	IdUnit INT NOT NULL,
	IdSupplier INT NOT NULL,
	QRCode NVARCHAR(max),
	BarCode NVARCHAR(max),

	FOREIGN KEY(IdUnit) REFERENCES dbo.Unit(Id),
	FOREIGN KEY(IdSupplier) REFERENCES dbo.Supplier(Id)
)
GO 

CREATE TABLE UserRole
(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
)
GO 

CREATE TABLE Users
(
	Id INT IDENTITY(1, 1) PRIMARY KEY,
	DisplayName NVARCHAR(max),
	UserName NVARCHAR(max),
	Password NVARCHAR(max),
	IdRole INT NOT NULL,

	FOREIGN KEY(IdRole) REFERENCES dbo.UserRole(Id)
)
GO 

CREATE TABLE Input
(
	Id NVARCHAR(128) PRIMARY KEY,
	DateInput DATETIME
)
GO 

CREATE TABLE InputInfo
(
	Id NVARCHAR(128) PRIMARY KEY,
	IdObject NVARCHAR(128) NOT NULL,
	IdInput NVARCHAR(128) NOT NULL,
	Count INT,
	InputPrice FLOAT DEFAULT 0,
	OutputPirce FLOAT DEFAULT 0,
	Status NVARCHAR(max),

	FOREIGN KEY(IdObject) REFERENCES dbo.Object(Id),
	FOREIGN KEY(IdInput) REFERENCES dbo.Input(Id)
)
GO 

CREATE TABLE Output
(
	Id NVARCHAR(128) PRIMARY KEY,
	DateOutput DATETIME
)
GO 

CREATE TABLE OutputInfo
(
	Id NVARCHAR(128) PRIMARY KEY,
	IdObject NVARCHAR(128) NOT NULL,
	IdOutputInfo NVARCHAR(128) NOT NULL,
	IdCustomer int NOT NULL,
	Count INT,
	Status NVARCHAR(max),

	FOREIGN KEY(IdObject) REFERENCES dbo.Object(Id),
	FOREIGN KEY(Id) REFERENCES dbo.Output(Id),
	FOREIGN KEY(IdCustomer) REFERENCES dbo.Customer(Id)
)
GO 

INSERT dbo.UserRole (DisplayName)
VALUES (N'Admin'),
		(N'Staff'),
		(N'Guest')
GO

INSERT dbo.Users (DisplayName, UserName, Password, IdRole)
VALUES (N'Huy', N'1', N'cdd96d3cc73d1dbdaffa03cc6cd7339b', 1),
		(N'HuyStaff', N'2', N'0b7e7dee87b1c3b98e72131173dfbbbf', 2)
GO 

INSERT dbo.Unit (DisplayName)
VALUES (N'Kg'),
		(N'Thùng'),
		(N'Bao')
GO 

INSERT dbo.Supplier (DisplayName, Address, Phone, Email, MoreInfo, ContractDate)
VALUES (N'Nhà cung cấp 1', N'Bình Dương', N'0987345678', N'email1@gmail.com', N'', GETDATE())
GO

INSERT dbo.Object (Id, DisplayName, IdUnit, IdSupplier, QRCode, BarCode)
VALUES (N'1', N'Xi măng', 3, 1, N'', N''),
		(N'2', N'Gạch', 1, 1, N'', N'')
GO

INSERT dbo.Input (Id, DateInput)
VALUES (N'1', GETDATE()),
		(N'2', GETDATE())
GO

INSERT dbo.InputInfo (Id, IdObject, IdInput, Count, InputPrice, OutputPirce, Status)
VALUES (N'1', N'1', N'1', 50, 5000000, 8000000, N''),
		(N'2', N'2', N'1', 30, 6000000, 12000000, N'')
GO

INSERT dbo.Customer (DisplayName, Address, Phone, Email, MoreInfo, ContractDate)
VALUES (N'Khách hàng 1', N'Phú Yên', N'0923487654', N'kktsd23@gmail.com', N'', GETDATE()),
		(N'Khách hàng 2', N'Hà Nội', N'7426643356', N'fdgdfg23@gmail.com', N'', GETDATE())
GO

INSERT dbo.Output (Id, DateOutput)
VALUES (N'1', GETDATE()),
		(N'2', GETDATE())
GO

INSERT dbo.OutputInfo (Id, IdObject, IdOutputInfo, IdCustomer, Count, Status)
VALUES (N'1', N'1', N'1', 1, 10, N''),
		(N'2', N'2', N'1', 1, 5, N'')
GO



