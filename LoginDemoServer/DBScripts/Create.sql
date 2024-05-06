Create Database LoginDemoDB
Go
USE LoginDemoDB
gO


Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go
Create Table Grades (
id int identity(1000,1) PRIMARY KEY,
TestDate datetime not null,
[Subject] nvarchar(20) NOT NULL,
Grade int  not null,
Email nvarchar(100) NOT NULL FOREIGN KEY REFERENCES Users(Email)





)

INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
Go

insert into dbo.Grades( TestDate ,[Subject],Grade,Email) values('1-11-2023','English',98,'ofer@ofer.com')
insert into dbo.Grades( TestDate ,[Subject],Grade,Email) values('1-11-2023','Math',67,'ofer@ofer.com')
insert into dbo.Grades( TestDate ,[Subject],Grade,Email) values('1-1-2023','SPORT',7,'ofer@ofer.com')

select*from dbo.Grades
--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force