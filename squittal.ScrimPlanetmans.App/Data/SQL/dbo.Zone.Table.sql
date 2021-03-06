USE [PlanetmansDbContext]
GO

IF EXISTS ( SELECT *
              FROM INFORMATION_SCHEMA.TABLES
              WHERE TABLE_NAME = N'Zone' )
BEGIN
    TRUNCATE TABLE [dbo].[Zone];
    
    INSERT [dbo].[Zone] ([Id], [Name], [Description], [Code], [HexSize]) VALUES (2, N'Indar', N'The arid continent of Indar is home to multiple biomes, providing unique challenges for its combatants.', N'Indar', 200)
    INSERT [dbo].[Zone] ([Id], [Name], [Description], [Code], [HexSize]) VALUES (4, N'Hossin', N'Hossin''s dense mangrove and willow forests provide air cover along its many swamps and highlands.', N'Hossin', 200)
    INSERT [dbo].[Zone] ([Id], [Name], [Description], [Code], [HexSize]) VALUES (6, N'Amerish', N'Amerish''s lush groves and rocky outcroppings provide ample cover between its rolling plains and mountain passes.', N'Amerish', 200)
    INSERT [dbo].[Zone] ([Id], [Name], [Description], [Code], [HexSize]) VALUES (8, N'Esamir', N'Esamir''s expanses of frigid tundra and craggy mountains provide little cover from airborne threats.', N'Esamir', 200)
    INSERT [dbo].[Zone] ([Id], [Name], [Description], [Code], [HexSize]) VALUES (96, N'VR Training', N'Experiment with all weapons, vehicles and attachments in your empire''s own VR Training simulator.', N'VR training zone (NC)', 335)
    INSERT [dbo].[Zone] ([Id], [Name], [Description], [Code], [HexSize]) VALUES (97, N'VR Training', N'Experiment with all weapons, vehicles and attachments in your empire''s own VR Training simulator.', N'VR training zone (TR)', 335)
    INSERT [dbo].[Zone] ([Id], [Name], [Description], [Code], [HexSize]) VALUES (98, N'VR Training', N'Experiment with all weapons, vehicles and attachments in your empire''s own VR Training simulator.', N'VR training zone (VS)', 335)
END