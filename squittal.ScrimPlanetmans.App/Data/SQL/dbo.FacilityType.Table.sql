USE [PlanetmansDbContext]
GO

IF EXISTS ( SELECT *
              FROM INFORMATION_SCHEMA.TABLES
              WHERE TABLE_NAME = N'FacilityType' )
BEGIN
    TRUNCATE TABLE [dbo].[FacilityType];

    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (1, N'Default')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (2, N'Amp Station')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (3, N'Bio Lab')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (4, N'Tech Plant')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (5, N'Large Outpost')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (6, N'Small Outpost')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (7, N'Warpgate')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (8, N'Interlink Facility')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (9, N'Construction Outpost')
    INSERT [dbo].[FacilityType] ([Id], [Description]) VALUES (10, N'Relic Outpost (Desolation)')
END;