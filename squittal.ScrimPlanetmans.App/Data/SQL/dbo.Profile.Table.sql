USE [PlanetmansDbContext]
GO

IF EXISTS ( SELECT *
              FROM INFORMATION_SCHEMA.TABLES
              WHERE TABLE_NAME = N'Profile' )
BEGIN
    TRUNCATE TABLE [dbo].[Profile];

    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (2, 1, 2, N'Infiltrator', 204)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (4, 3, 2, N'Light Assault', 62)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (5, 4, 2, N'Combat Medic', 65)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (6, 5, 2, N'Engineer', 201)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (7, 6, 2, N'Heavy Assault', 59)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (8, 7, 2, N'MAX', 207)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (10, 1, 3, N'Infiltrator', 204)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (12, 3, 3, N'Light Assault', 62)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (13, 4, 3, N'Combat Medic', 65)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (14, 5, 3, N'Engineer', 201)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (15, 6, 3, N'Heavy Assault', 59)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (16, 7, 3, N'MAX', 207)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (17, 1, 1, N'Infiltrator', 204)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (19, 3, 1, N'Light Assault', 62)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (20, 4, 1, N'Combat Medic', 65)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (21, 5, 1, N'Engineer', 201)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (22, 6, 1, N'Heavy Assault', 59)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (23, 7, 1, N'MAX', 207)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (190, 1, 4, N'Infiltrator', 204)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (191, 3, 4, N'Light Assault', 62)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (192, 4, 4, N'Combat Medic', 65)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (193, 5, 4, N'Engineer', 201)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (194, 6, 4, N'Heavy Assault', 59)
    INSERT [dbo].[Profile] ([Id], [ProfileTypeId], [FactionId], [Name], [ImageId]) VALUES (252, 7, 4, N'Defector', 207)
END;