IF OBJECT_ID('tempdb..##tmpHoliday') IS NOT NULL
    DROP TABLE ##tmpHoliday
CREATE TABLE ##tmpHoliday(
	[Id] [int] NOT NULL,
	[Holiday] [varchar](100) NULL,
	[Dated] [varchar](100) NULL,
	[Day] [varchar](100) NULL
) ON [PRIMARY]
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (1, N'New Year''s Day', N'2022-01-01', N'Saturday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (2, N'Martin Luther King Jr. Day', N'2022-01-17', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (3, N'Valentine''s Day', N'2022-02-14', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (4, N'Washington''s Birthday', N'2022-02-21', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (5, N'Tax Day', N'2022-04-18', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (6, N'Administrative Professionals Day', N'2022-04-27', N'Wednesday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (7, N'Mother''s Day', N'2022-05-08', N'Sunday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (8, N'Memorial Day', N'2022-05-30', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (9, N'Father''s Day', N'2022-06-19', N'Sunday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (10, N'Independence Day', N'2022-07-04', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (11, N'Labor Day', N'2022-09-05', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (12, N'Columbus Day', N'2022-10-10', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (13, N'Halloween', N'2022-10-31', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (14, N'Veterans Day', N'2022-11-11', N'Friday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (15, N'Thanksgiving Day', N'2022-11-24', N'Thursday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (16, N'Day after Thanksgiving Day', N'2022-11-25', N'Friday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (17, N'Christmas Eve', N'2022-12-24', N'Saturday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (18, N'Christmas Day', N'2022-12-25', N'Sunday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (19, N'Christmas Day (substitute day)', N'2022-12-26', N'Monday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (20, N'New Year''s Eve', N'2022-12-31', N'Saturday')
GO
INSERT ##tmpHoliday ([Id], [Holiday], [Dated], [Day]) VALUES (22, N'test holiday', N'2022-02-22', N'Tuesday')
GO
