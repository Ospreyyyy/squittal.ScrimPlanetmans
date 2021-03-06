USE [PlanetmansDbContext]
GO

IF EXISTS ( SELECT *
              FROM INFORMATION_SCHEMA.TABLES
              WHERE TABLE_NAME = N'World' )
BEGIN
    TRUNCATE TABLE [dbo].[World];

    INSERT [dbo].[World] ([Id], [Name]) VALUES (1, N'Connery')
    INSERT [dbo].[World] ([Id], [Name]) VALUES (10, N'Miller')
    INSERT [dbo].[World] ([Id], [Name]) VALUES (13, N'Cobalt')
    INSERT [dbo].[World] ([Id], [Name]) VALUES (17, N'Emerald')
    INSERT [dbo].[World] ([Id], [Name]) VALUES (19, N'Jaeger')
    INSERT [dbo].[World] ([Id], [Name]) VALUES (25, N'Briggs')
    INSERT [dbo].[World] ([Id], [Name]) VALUES (40, N'SolTech')
END;