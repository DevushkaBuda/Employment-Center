Create database EmploymentCenter
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/04/2023 23:09:47
-- Generated from EDMX file: C:\Users\�\Desktop\�������� ������\����������\EmploymentCenter\Model\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EmploymentCenter];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_��������_������������]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[��������] DROP CONSTRAINT [FK_��������_������������];
GO
IF OBJECT_ID(N'[dbo].[FK_��������_�������������]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[��������] DROP CONSTRAINT [FK_��������_�������������];
GO
IF OBJECT_ID(N'[dbo].[FK_������_��������]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[������] DROP CONSTRAINT [FK_������_��������];
GO
IF OBJECT_ID(N'[dbo].[FK_������_������������]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[������] DROP CONSTRAINT [FK_������_������������];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[��������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[��������];
GO
IF OBJECT_ID(N'[dbo].[������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[������];
GO
IF OBJECT_ID(N'[dbo].[������������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[������������];
GO
IF OBJECT_ID(N'[dbo].[������������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[������������];
GO
IF OBJECT_ID(N'[dbo].[����������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[����������];
GO
IF OBJECT_ID(N'[dbo].[�������������]', 'U') IS NOT NULL
    DROP TABLE [dbo].[�������������];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'sysdiagrams'
CREATE TABLE [dbo].[sysdiagrams] (
    [name] nvarchar(128)  NOT NULL,
    [principal_id] int  NOT NULL,
    [diagram_id] int IDENTITY(1,1) NOT NULL,
    [version] int  NULL,
    [definition] varbinary(max)  NULL
);
GO

-- Creating table '����������'
CREATE TABLE [dbo].[����������] (
    [���] int IDENTITY(1,1) NOT NULL,
    [���] nvarchar(50)  NULL,
    [�������] nvarchar(50)  NULL,
    [������] nvarchar(50)  NULL
);
GO

-- Creating table '�������������'
CREATE TABLE [dbo].[�������������] (
    [���] int IDENTITY(1,1) NOT NULL,
    [���] nvarchar(50)  NULL
);
GO

-- Creating table '��������'
CREATE TABLE [dbo].[��������] (
    [���] int IDENTITY(1,1) NOT NULL,
    [����������������] int  NULL,
    [���������������] int  NULL,
    [��������] nvarchar(50)  NULL,
    [��������] nvarchar(max)  NULL,
    [������] bit  NULL,
    [����] datetime  NULL,
    [����] int  NULL,
    [��������] nvarchar(20)  NULL
);
GO

-- Creating table '������'
CREATE TABLE [dbo].[������] (
    [���] int IDENTITY(1,1) NOT NULL,
    [�����������] int  NOT NULL,
    [���������������] int  NOT NULL,
    [������������] datetime  NOT NULL,
    [������] int  NOT NULL
);
GO

-- Creating table '������������'
CREATE TABLE [dbo].[������������] (
    [���] int IDENTITY(1,1) NOT NULL,
    [���] nvarchar(50)  NULL,
    [�������] nvarchar(50)  NULL,
    [������] nvarchar(50)  NULL,
    [������] nvarchar(max)  NULL,
    [�����] nvarchar(50)  NULL
);
GO

-- Creating table '������������'
CREATE TABLE [dbo].[������������] (
    [���] int IDENTITY(1,1) NOT NULL,
    [���] nvarchar(50)  NULL,
    [�������] nvarchar(50)  NULL,
    [������] nvarchar(50)  NULL,
    [��������������������] nvarchar(50)  NULL,
    [�����] nvarchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [diagram_id] in table 'sysdiagrams'
ALTER TABLE [dbo].[sysdiagrams]
ADD CONSTRAINT [PK_sysdiagrams]
    PRIMARY KEY CLUSTERED ([diagram_id] ASC);
GO

-- Creating primary key on [���] in table '����������'
ALTER TABLE [dbo].[����������]
ADD CONSTRAINT [PK_����������]
    PRIMARY KEY CLUSTERED ([���] ASC);
GO

-- Creating primary key on [���] in table '�������������'
ALTER TABLE [dbo].[�������������]
ADD CONSTRAINT [PK_�������������]
    PRIMARY KEY CLUSTERED ([���] ASC);
GO

-- Creating primary key on [���] in table '��������'
ALTER TABLE [dbo].[��������]
ADD CONSTRAINT [PK_��������]
    PRIMARY KEY CLUSTERED ([���] ASC);
GO

-- Creating primary key on [���] in table '������'
ALTER TABLE [dbo].[������]
ADD CONSTRAINT [PK_������]
    PRIMARY KEY CLUSTERED ([���] ASC);
GO

-- Creating primary key on [���] in table '������������'
ALTER TABLE [dbo].[������������]
ADD CONSTRAINT [PK_������������]
    PRIMARY KEY CLUSTERED ([���] ASC);
GO

-- Creating primary key on [���] in table '������������'
ALTER TABLE [dbo].[������������]
ADD CONSTRAINT [PK_������������]
    PRIMARY KEY CLUSTERED ([���] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [���������������] in table '��������'
ALTER TABLE [dbo].[��������]
ADD CONSTRAINT [FK_��������_������������]
    FOREIGN KEY ([���������������])
    REFERENCES [dbo].[������������]
        ([���])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_��������_������������'
CREATE INDEX [IX_FK_��������_������������]
ON [dbo].[��������]
    ([���������������]);
GO

-- Creating foreign key on [����������������] in table '��������'
ALTER TABLE [dbo].[��������]
ADD CONSTRAINT [FK_��������_�������������]
    FOREIGN KEY ([����������������])
    REFERENCES [dbo].[�������������]
        ([���])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_��������_�������������'
CREATE INDEX [IX_FK_��������_�������������]
ON [dbo].[��������]
    ([����������������]);
GO

-- Creating foreign key on [�����������] in table '������'
ALTER TABLE [dbo].[������]
ADD CONSTRAINT [FK_������_��������]
    FOREIGN KEY ([�����������])
    REFERENCES [dbo].[��������]
        ([���])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_������_��������'
CREATE INDEX [IX_FK_������_��������]
ON [dbo].[������]
    ([�����������]);
GO

-- Creating foreign key on [���������������] in table '������'
ALTER TABLE [dbo].[������]
ADD CONSTRAINT [FK_������_������������]
    FOREIGN KEY ([���������������])
    REFERENCES [dbo].[������������]
        ([���])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_������_������������'
CREATE INDEX [IX_FK_������_������������]
ON [dbo].[������]
    ([���������������]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------