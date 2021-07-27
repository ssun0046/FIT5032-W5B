Create TABLE [dbo].[Students] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[FirstName] nvarchar (max) NOT NULL,
	[LastName] nvarchar (max) NOT NULL,
	[UserId] nvarchar (max) NOT NULL
	Primary key(Id)
);
GO

Create TABLE [dbo].[Units] (
	[Id] int IDENTITY (1,1) NOT NULL,
	[Name] nvarchar (max) NOT NULL,
	[Description] nvarchar (max) NOT NULL,
	[StudentId] int NOT NULL
	Primary key(Id)
	Foreign key (StudentId) REFERENCES Students(Id)
);
GO
