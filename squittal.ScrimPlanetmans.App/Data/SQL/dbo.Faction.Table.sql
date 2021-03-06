USE [PlanetmansDbContext]
GO

IF EXISTS ( SELECT *
              FROM INFORMATION_SCHEMA.TABLES
              WHERE TABLE_NAME = N'Faction' )
BEGIN
    TRUNCATE TABLE [dbo].[Faction];

    INSERT [dbo].[Faction] ([Id], [Name], [ImageId], [CodeTag], [UserSelectable]) VALUES (0, N'None', 0, N'None', 0)
    INSERT [dbo].[Faction] ([Id], [Name], [ImageId], [CodeTag], [UserSelectable]) VALUES (1, N'Vanu Sovereignty', 94, N'VS', 1)
    INSERT [dbo].[Faction] ([Id], [Name], [ImageId], [CodeTag], [UserSelectable]) VALUES (2, N'New Conglomerate', 12, N'NC', 1)
    INSERT [dbo].[Faction] ([Id], [Name], [ImageId], [CodeTag], [UserSelectable]) VALUES (3, N'Terran Republic', 18, N'TR', 1)
    INSERT [dbo].[Faction] ([Id], [Name], [ImageId], [CodeTag], [UserSelectable]) VALUES (4, N'NS Operatives', 0, N'NSO', 1)
END;