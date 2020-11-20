CREATE TABLE [dbo].[RegistrationTable] (
    [Id]       INT           NOT NULL,
    [Name]     NVARCHAR (50) NOT NULL,
    [Last Name]    NVARCHAR (50) NOT NULL,
    [Gender] NVARCHAR (50) NOT NULL,
    [DOB] DATE  NOT NULL,
    [Email] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL, 
    [MobileNo] NUMERIC NOT NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([Id] ASC)
);

