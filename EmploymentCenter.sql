Create database EmploymentCenter
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/04/2023 23:09:47
-- Generated from EDMX file: C:\Users\я\Desktop\Курсовая работа\Паламарчук\EmploymentCenter\Model\Model1.edmx
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

IF OBJECT_ID(N'[dbo].[FK_Вакансия_Работодатель]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Вакансия] DROP CONSTRAINT [FK_Вакансия_Работодатель];
GO
IF OBJECT_ID(N'[dbo].[FK_Вакансия_Специальности]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Вакансия] DROP CONSTRAINT [FK_Вакансия_Специальности];
GO
IF OBJECT_ID(N'[dbo].[FK_Отклик_Вакансия]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Отклик] DROP CONSTRAINT [FK_Отклик_Вакансия];
GO
IF OBJECT_ID(N'[dbo].[FK_Отклик_Пользователь]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Отклик] DROP CONSTRAINT [FK_Отклик_Пользователь];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[sysdiagrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[sysdiagrams];
GO
IF OBJECT_ID(N'[dbo].[Вакансия]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Вакансия];
GO
IF OBJECT_ID(N'[dbo].[Отклик]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Отклик];
GO
IF OBJECT_ID(N'[dbo].[Пользователь]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Пользователь];
GO
IF OBJECT_ID(N'[dbo].[Работодатель]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Работодатель];
GO
IF OBJECT_ID(N'[dbo].[Специалист]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Специалист];
GO
IF OBJECT_ID(N'[dbo].[Специальности]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Специальности];
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

-- Creating table 'Специалист'
CREATE TABLE [dbo].[Специалист] (
    [Код] int IDENTITY(1,1) NOT NULL,
    [Фио] nvarchar(50)  NULL,
    [Телефон] nvarchar(50)  NULL,
    [Пароль] nvarchar(50)  NULL
);
GO

-- Creating table 'Специальности'
CREATE TABLE [dbo].[Специальности] (
    [Код] int IDENTITY(1,1) NOT NULL,
    [Имя] nvarchar(50)  NULL
);
GO

-- Creating table 'Вакансия'
CREATE TABLE [dbo].[Вакансия] (
    [Код] int IDENTITY(1,1) NOT NULL,
    [КодСпециальности] int  NULL,
    [КодРаботодателя] int  NULL,
    [Название] nvarchar(50)  NULL,
    [Описание] nvarchar(max)  NULL,
    [Статус] bit  NULL,
    [Дата] datetime  NULL,
    [Опыт] int  NULL,
    [Зарплата] nvarchar(20)  NULL
);
GO

-- Creating table 'Отклик'
CREATE TABLE [dbo].[Отклик] (
    [Код] int IDENTITY(1,1) NOT NULL,
    [КодВакансии] int  NOT NULL,
    [КодПользователя] int  NOT NULL,
    [ДатаОтправки] datetime  NOT NULL,
    [Статус] int  NOT NULL
);
GO

-- Creating table 'Пользователь'
CREATE TABLE [dbo].[Пользователь] (
    [Код] int IDENTITY(1,1) NOT NULL,
    [Фио] nvarchar(50)  NULL,
    [Телефон] nvarchar(50)  NULL,
    [Пароль] nvarchar(50)  NULL,
    [Резюме] nvarchar(max)  NULL,
    [Почта] nvarchar(50)  NULL
);
GO

-- Creating table 'Работодатель'
CREATE TABLE [dbo].[Работодатель] (
    [Код] int IDENTITY(1,1) NOT NULL,
    [Фио] nvarchar(50)  NULL,
    [Телефон] nvarchar(50)  NULL,
    [Пароль] nvarchar(50)  NULL,
    [НаименованиеКомпании] nvarchar(50)  NULL,
    [Почта] nvarchar(50)  NULL
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

-- Creating primary key on [Код] in table 'Специалист'
ALTER TABLE [dbo].[Специалист]
ADD CONSTRAINT [PK_Специалист]
    PRIMARY KEY CLUSTERED ([Код] ASC);
GO

-- Creating primary key on [Код] in table 'Специальности'
ALTER TABLE [dbo].[Специальности]
ADD CONSTRAINT [PK_Специальности]
    PRIMARY KEY CLUSTERED ([Код] ASC);
GO

-- Creating primary key on [Код] in table 'Вакансия'
ALTER TABLE [dbo].[Вакансия]
ADD CONSTRAINT [PK_Вакансия]
    PRIMARY KEY CLUSTERED ([Код] ASC);
GO

-- Creating primary key on [Код] in table 'Отклик'
ALTER TABLE [dbo].[Отклик]
ADD CONSTRAINT [PK_Отклик]
    PRIMARY KEY CLUSTERED ([Код] ASC);
GO

-- Creating primary key on [Код] in table 'Пользователь'
ALTER TABLE [dbo].[Пользователь]
ADD CONSTRAINT [PK_Пользователь]
    PRIMARY KEY CLUSTERED ([Код] ASC);
GO

-- Creating primary key on [Код] in table 'Работодатель'
ALTER TABLE [dbo].[Работодатель]
ADD CONSTRAINT [PK_Работодатель]
    PRIMARY KEY CLUSTERED ([Код] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [КодРаботодателя] in table 'Вакансия'
ALTER TABLE [dbo].[Вакансия]
ADD CONSTRAINT [FK_Вакансия_Работодатель]
    FOREIGN KEY ([КодРаботодателя])
    REFERENCES [dbo].[Работодатель]
        ([Код])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Вакансия_Работодатель'
CREATE INDEX [IX_FK_Вакансия_Работодатель]
ON [dbo].[Вакансия]
    ([КодРаботодателя]);
GO

-- Creating foreign key on [КодСпециальности] in table 'Вакансия'
ALTER TABLE [dbo].[Вакансия]
ADD CONSTRAINT [FK_Вакансия_Специальности]
    FOREIGN KEY ([КодСпециальности])
    REFERENCES [dbo].[Специальности]
        ([Код])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Вакансия_Специальности'
CREATE INDEX [IX_FK_Вакансия_Специальности]
ON [dbo].[Вакансия]
    ([КодСпециальности]);
GO

-- Creating foreign key on [КодВакансии] in table 'Отклик'
ALTER TABLE [dbo].[Отклик]
ADD CONSTRAINT [FK_Отклик_Вакансия]
    FOREIGN KEY ([КодВакансии])
    REFERENCES [dbo].[Вакансия]
        ([Код])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Отклик_Вакансия'
CREATE INDEX [IX_FK_Отклик_Вакансия]
ON [dbo].[Отклик]
    ([КодВакансии]);
GO

-- Creating foreign key on [КодПользователя] in table 'Отклик'
ALTER TABLE [dbo].[Отклик]
ADD CONSTRAINT [FK_Отклик_Пользователь]
    FOREIGN KEY ([КодПользователя])
    REFERENCES [dbo].[Пользователь]
        ([Код])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Отклик_Пользователь'
CREATE INDEX [IX_FK_Отклик_Пользователь]
ON [dbo].[Отклик]
    ([КодПользователя]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------