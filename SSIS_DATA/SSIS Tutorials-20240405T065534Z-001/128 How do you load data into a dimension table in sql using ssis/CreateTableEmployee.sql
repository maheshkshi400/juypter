SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[IsPermittedToLogon] [bit] NOT NULL,
	[LogonName] [nvarchar](50) NULL,
	[IsSalesperson] [bit] NOT NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[FaxNumber] [nvarchar](20) NULL,
	[Email] [nvarchar](256) NULL,
	[ValidFrom] [datetime2](7) NOT NULL,
	[ValidTo] [datetime2](7) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (1, N'Nicole', N'Bartlett', 1, N'NicoleBartlett', 1, N'074-414-6739', N'346865-3386', N'qdvd16@dbjinr.net', CAST(N'2007-06-19T15:51:38.0261517' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (2, N'Christine', N'Rubio', 1, N'ChristineRubio', 0, N'855-5084806', N'2257223534', N'xyako.fdpfehhw@wrbytk.com', CAST(N'2017-07-07T07:22:29.8253068' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (3, N'Pablo', N'Werner', 0, N'PabloWerner', 1, N'748-2378489', N'088009-1094', N'pablo@gmail.com', CAST(N'2015-09-06T21:08:50.9807000' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (4, N'Darnell', N'Calderon', 0, N'DarnellCalderon', 1, N'757-913-9872', N'168-3950280', N'wqztrdn52@dzxiqn.org', CAST(N'2000-11-07T07:19:28.3660212' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (5, N'Desiree', N'Farmer', 0, N'DesireeFarmer', 0, N'331452-2325', N'331452-2325', N'gisfspwd7@czicypij.-t-p-p.com', CAST(N'2011-04-06T18:09:33.3363293' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (6, N'Holly', N'Fernandez', 1, N'HollyFernandez', 0, N'1288165130', N'727-768-1320', N'qiefpih.oriy@pia-of.net', CAST(N'2005-08-18T07:21:54.2093260' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (7, N'Chadwick', N'Tom', 1, N'ChadwickTrevino', 0, N'3557618522', N'818-7825466', N'sukh.cogpcbkaa@-nzaqa.net', CAST(N'2014-04-09T11:19:13.5084408' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (8, N'Julie', N'Moreno', 0, N'JulieMoreno', 0, N'0447994421', N'060848-7592', N'hjhzpyby42@iwzksvu.ohnins.net', CAST(N'2013-01-01T22:07:17.1743574' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (9, N'Daphne', N'Dudley', 1, N'DaphneDudley', 1, N'950-931-4030', N'1311409907', N'btlc.vpqqb@ophprgdbg.bjeuzk.org', CAST(N'2014-10-23T13:31:36.6550205' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (10, N'Jean', N'Trevino', 0, N'JeanTrevino', 0, N'3831773553', N'391-432-3237', N'jfllrt.mbjtcu@asftwl.com', CAST(N'2003-09-09T22:55:54.0692192' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (11, N'Sonya', N'Ryan', 0, N'SonyaRyan', 1, N'3303507225', N'2901286611', N'ulis814@wqcxo.ztarlf.org', CAST(N'2006-05-18T09:55:26.1604505' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (12, N'Lindsay', N'Conner', 1, N'LindsayConner', 0, N'6695032714', N'8407367173', N'ftgem.qoqg@gkffjwcu.yurawr.com', CAST(N'2018-01-08T09:05:06.1532129' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (13, N'Katina', N'Archer', 0, N'KatinaArcher', 1, N'388104-8773', N'8039910154', N'ifazghpa.vgbmrd@jwmdj.xvvllk.net', CAST(N'2014-09-02T17:52:28.1980147' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (14, N'Wendi', N'Hanson', 0, N'WendiHanson', 0, N'951-768-2032', N'821-9189316', N'cjibkfzd.kdgohldoo@rsevublm.on-pcs.org', CAST(N'2017-01-10T09:16:40.2859600' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (15, N'Kari', N'Hunter', 0, N'KariHunter', 1, N'536-8436166', N'0445218246', N'tgtfg2@niixvn.net', CAST(N'2001-01-04T15:43:58.4907643' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (16, N'Chadwick', N'Velazquez', 1, N'ChadwickVelazquez', 0, N'729-759-6941', N'571-5036277', N'qdgpeo.pxdqkpi@hibkkl.com', CAST(N'2003-01-22T05:35:55.1557038' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (17, N'Seth', N'Gordon', 0, N'SethGordon', 1, N'162414-4136', N'574-566-5055', N'sxctr.tsbajdc@ssvciy.avbnet.org', CAST(N'2001-10-11T13:48:48.7683927' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (18, N'Warren', N'West', 0, N'WarrenWest', 0, N'502-902-9327', N'671219-0182', N'rqvlrot.qxsohdrfe@sqlltz.org', CAST(N'2008-08-31T17:47:34.9230815' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (19, N'Bernard', N'Rowe', 1, N'BernardRowe', 0, N'902-998-5791', N'3541808170', N'odhz.jtiqn@tplkfj.net', CAST(N'2012-03-20T12:27:03.1766523' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (20, N'Shelby', N'Bradford', 0, N'ShelbyBradford', 0, N'523-561-0479', N'548901-4726', N'libfh.ejsrnwjbjx@yjiopn.net', CAST(N'2005-08-31T15:35:17.1407052' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (21, N'Devon', N'Henry', 1, N'DevonHenry', 0, N'087-490-6115', N'473-956-8720', N'aaam.fdvgtkii@ywlbjn.org', CAST(N'2001-05-17T13:07:24.4367852' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (22, N'Tonia', N'Houston', 0, N'ToniaHouston', 1, N'211-7012828', N'049-631-2334', N'gruict5@dheafq.org', CAST(N'2005-05-09T15:08:07.3537690' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (23, N'Janet', N'Fitzgerald', 0, N'JanetFitzgerald', 0, N'519705-6217', N'454-075-9750', N'ddokqvj.bspmx@ymwabu.org', CAST(N'2010-12-11T07:18:05.3417683' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (24, N'Christian', N'Harrington', 0, N'ChristianHarrington', 0, N'4569250703', N'281-070-0637', N'tikr.gldhy@gemsc.puznfu.net', CAST(N'2017-04-15T20:58:17.2569595' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (25, N'Jose', N'Garrett', 1, N'JoseGarrett', 0, N'6725131584', N'621-2293873', N'tufeibrq79@gldyco.net', CAST(N'2017-12-01T03:12:39.9371428' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (26, N'Kristie', N'Hines', 1, N'KristieHines', 1, N'494-6162630', N'870429-6491', N'jizdlct.vssmqydqi@vcaesu.nigrjj.com', CAST(N'2017-10-23T18:24:55.4599541' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (27, N'Joshua', N'Edwards', 0, N'JoshuaEdwards', 0, N'9019022177', N'4487529916', N'weeqowo@ipnbiuoc.ghvkro.org', CAST(N'2001-05-10T22:45:41.5734464' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (28, N'Melody', N'Reese', 1, N'MelodyReese', 1, N'3401374064', N'207-3554205', N'xdihcg@mshvd.mly-hy.net', CAST(N'2014-02-27T00:29:54.2931452' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (29, N'Cassandra', N'Hendrix', 1, N'CassandraHendrix', 0, N'873-143-4644', N'737990-2527', N'iwco@qbiswx.org', CAST(N'2016-09-04T12:18:45.6535812' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (30, N'Bridgette', N'Chandler', 1, N'BridgetteChandler', 0, N'448-8536334', N'502-5768926', N'mcwccjf892@cyflze.org', CAST(N'2000-05-02T07:40:54.3974289' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (31, N'Marlon', N'Hays', 1, N'MarlonHays', 1, N'838-4759072', N'557-511-2979', N'prtmbe05@ofcvuz.qjmvsi.com', CAST(N'2010-06-10T20:32:14.0224283' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (32, N'Hilary', N'Lester', 0, N'HilaryLester', 1, N'482-013-3456', N'727-3990782', N'lmky941@hbztvj.aqyvkr.org', CAST(N'2010-07-14T13:49:05.2770540' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (33, N'Karl', N'Nixon', 1, N'KarlNixon', 1, N'808189-6893', N'964-7713989', N'ncdvad.byqqejptx@rprqrmsh.-oasxl.net', CAST(N'2013-03-06T00:41:38.5613030' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (34, N'Evan', N'Valenzuela', 0, N'EvanValenzuela', 0, N'770-7096037', N'507519-6570', N'jihm.yuesv@eyyniy.net', CAST(N'2016-11-24T16:25:50.0833788' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (35, N'Shari', N'Montes', 1, N'ShariMontes', 0, N'028821-6885', N'838-655-0125', N'ljivvf@sqriod.net', CAST(N'2006-07-24T18:33:39.3246646' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (36, N'Jarrod', N'George', 1, N'JarrodGeorge', 1, N'129-5358109', N'419099-8636', N'utwnuwpt.ceonwl@zqvplw.org', CAST(N'2010-02-15T06:59:33.6415415' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (37, N'Gabriel', N'Proctor', 0, N'GabrielProctor', 1, N'041401-5664', N'100-9070466', N'dajv@cboxok.org', CAST(N'2013-08-20T03:06:31.6301884' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (38, N'Billy', N'Phelps', 1, N'BillyPhelps', 0, N'8134007624', N'4944508443', N'jwvtdeug1@ehzhutpj.fhifjt.net', CAST(N'2007-01-15T07:41:45.5120180' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (39, N'Judy', N'Evans', 1, N'JudyEvans', 0, N'712-1601171', N'9199084310', N'kolt0@ygck.otczvp.com', CAST(N'2004-09-11T10:20:48.0033333' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (40, N'Ramona', N'Ochoa', 1, N'RamonaOchoa', 1, N'961-670-9427', N'5338256942', N'sqsjq.xuakldqq@sxuy.igpjtp.org', CAST(N'2009-06-29T19:41:03.1437706' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (41, N'Alan', N'Holmes', 0, N'AlanHolmes', 1, N'7763331065', N'5548584065', N'yfjqwu@cycery.net', CAST(N'2010-03-14T11:46:15.4971896' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (42, N'Jamie', N'Weeks', 1, N'JamieWeeks', 0, N'2390510185', N'140-519-6621', N'crbd.vxhls@tukce.muwkzs.com', CAST(N'2013-06-30T18:45:14.3804806' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (43, N'Gabriela', N'Burns', 0, N'GabrielaBurns', 0, N'7433485228', N'056895-0476', N'aqdpr.nlivn@ympesu.com', CAST(N'2002-10-17T01:28:35.0451625' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (44, N'Traci', N'Luna', 1, N'TraciLuna', 0, N'5056472682', N'769-1823631', N'tdmwedgg31@duamyf.com', CAST(N'2003-04-11T16:34:36.2161518' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (45, N'Mario', N'Ashley', 1, N'MarioAshley', 1, N'258-7798536', N'227-8481976', N'grpswjvu2@zcuoqf.org', CAST(N'2010-04-30T23:46:39.2264714' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (46, N'Jessica', N'Schwartz', 1, N'JessicaSchwartz', 0, N'832969-2776', N'133-062-2204', N'leiashu817@vglgxk.org', CAST(N'2009-06-14T09:25:44.5856431' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (47, N'Jeffery', N'Mc Gee', 0, N'JefferyMc Gee', 1, N'766-049-8068', N'153-7773712', N'uxxifrg.zfvvmgsd@rvsdegcin.iityaj.com', CAST(N'2014-12-24T12:24:21.7575720' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (48, N'Sonja', N'Fuentes', 0, N'SonjaFuentes', 0, N'010933-6573', N'206-0316028', N'jccxgodn.iaudvjqobt@bjswyp.com', CAST(N'2012-03-14T20:44:32.2751131' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (49, N'Joni', N'Chandler', 1, N'JoniChandler', 0, N'093-1913399', N'543-565-3652', N'ucwp.ytpe@jbznif.jhmhqi.org', CAST(N'2001-03-24T14:28:17.7693040' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (50, N'Bennie', N'Landry', 0, N'BennieLandry', 1, N'990-1683347', N'340-268-8473', N'sejq.zggeejwlwz@cs-jen.net', CAST(N'2014-05-05T02:11:18.2226913' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (51, N'Jeanette', N'Hodge', 0, N'JeanetteHodge', 0, N'475-972-1013', N'759-8376424', N'cnhtfgoz2@njvsid.net', CAST(N'2008-01-26T20:22:26.7109083' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (52, N'Luke', N'Webb', 0, N'LukeWebb', 1, N'543752-4179', N'379-2019510', N'ymolx9@vxkz.zmyyux.org', CAST(N'2005-07-28T06:09:55.7570686' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (53, N'Juanita', N'Schneider', 0, N'JuanitaSchneider', 1, N'843678-1659', N'1828729642', N'tigojfr.vldbtiha@xqjqcoywg.ebtteu.org', CAST(N'2006-11-14T04:02:00.5598303' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (54, N'Brandi', N'Pacheco', 0, N'BrandiPacheco', 1, N'044994-9419', N'744-0447309', N'retqd983@rytxhqkrd.kikldt.net', CAST(N'2017-11-17T09:01:26.8946958' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (55, N'Nina', N'Camacho', 0, N'NinaCamacho', 1, N'893-663-8696', N'316824-6508', N'wyfpjw59@tnpbsg.org', CAST(N'2000-08-11T21:32:39.1351348' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (56, N'Alfonso', N'Schmidt', 1, N'AlfonsoSchmidt', 1, N'0939608914', N'559-418-7354', N'lokl.tjgrhi@nhybpxq.cmb-fw.net', CAST(N'2002-02-10T00:43:30.6723827' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (57, N'Abigail', N'Kramer', 0, N'AbigailKramer', 0, N'168-131-4025', N'462-8074092', N'sxlvyio.rcxavqgvia@rskfkkxin.wpxyjw.com', CAST(N'2006-07-28T00:04:24.4835384' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (58, N'Cristina', N'Glover', 0, N'CristinaGlover', 0, N'2989131933', N'445-245-1350', N'etezxu.hwwfyvlfaf@oxrmog.gcxfji.net', CAST(N'2017-06-16T00:10:33.7237407' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (59, N'Latoya', N'Ortega', 1, N'LatoyaOrtega', 0, N'749-176-7807', N'479-0255849', N'pysu.jdamhmb@xevwx.brkqnm.net', CAST(N'2001-12-31T04:06:48.4288785' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (60, N'Guy', N'Key', 0, N'GuyKey', 1, N'945814-0291', N'4162740085', N'qlxbzv34@uqahtfbl.aolyom.org', CAST(N'2012-07-06T23:44:37.8763752' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (61, N'Sandy', N'Marshall', 1, N'SandyMarshall', 1, N'297-9015255', N'5467062872', N'ebzmska03@ukstnl.bwiklk.com', CAST(N'2004-04-09T08:36:12.6358796' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (62, N'Simon', N'Andrews', 1, N'SimonAndrews', 0, N'115-7445087', N'496-9677233', N'kcki.fjfsbfzxid@jfdtea.org', CAST(N'2000-02-11T10:49:19.2152955' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (63, N'Alissa', N'Greene', 1, N'AlissaGreene', 0, N'875805-9299', N'0401183505', N'ehsoah.ziqalooanb@rfnfslai.qxifkw.net', CAST(N'2015-05-23T09:48:31.5207763' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (64, N'Nicole', N'Weiss', 0, N'NicoleWeiss', 1, N'559967-8524', N'402-045-8699', N'qrtkw.nrovrdgeqv@tmvofm.com', CAST(N'2014-06-23T05:50:42.2575915' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (65, N'Roberto', N'Golden', 0, N'RobertoGolden', 0, N'913776-1515', N'5737882160', N'khuarqj.rvvgnsax@ojttln.cdvcmx.com', CAST(N'2012-04-24T02:23:40.0467910' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (66, N'Vicki', N'Floyd', 0, N'VickiFloyd', 0, N'444-0132043', N'4626995900', N'pgxne@yabtg.uqavxy.net', CAST(N'2014-11-27T20:06:20.8833967' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (67, N'Shane', N'Bond', 0, N'ShaneBond', 0, N'2717827947', N'429610-5132', N'jnvnfb946@ci-puz.net', CAST(N'2004-11-04T08:23:27.5919098' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (68, N'Isabel', N'Montgomery', 0, N'IsabelMontgomery', 1, N'452300-7867', N'9741415764', N'kmdw440@xro-in.com', CAST(N'2016-11-01T01:26:38.1146361' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (69, N'Claude', N'Zimmerman', 0, N'ClaudeZimmerman', 0, N'732-3335256', N'878-021-3684', N'otcqdih.agcztsyb@u-utwx.net', CAST(N'2010-06-19T14:43:00.9612953' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (70, N'Amie', N'Levine', 0, N'AmieLevine', 0, N'065686-2700', N'567-8410028', N'uoirbgpj89@hdjvkr.org', CAST(N'2009-12-13T08:44:24.8492230' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (71, N'Jonathan', N'Horne', 0, N'JonathanHorne', 1, N'924-461-0253', N'8468387613', N'qzrx.tzgseinc@dwjjqp.org', CAST(N'2008-06-27T02:29:23.5255155' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (72, N'Jamison', N'Greer', 1, N'JamisonGreer', 0, N'044-129-9693', N'557-9023621', N'cssqj28@i-dmgp.org', CAST(N'2013-10-20T06:07:03.2563748' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (73, N'Miriam', N'Bell', 0, N'MiriamBell', 1, N'5323843421', N'092-8911811', N'cufpffbq.tiatzubq@fgymse.hzictn.com', CAST(N'2003-12-21T07:26:46.9197481' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (74, N'Lana', N'Good', 1, N'LanaGood', 1, N'323836-7328', N'238-5228289', N'xxcmlhjx.mxpbjlqmmx@sw-psq.org', CAST(N'2002-09-21T16:46:00.0328816' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (75, N'Kareem', N'Malone', 1, N'KareemMalone', 1, N'777-7981052', N'217-7395471', N'auorbxyd.vizjghzg@lgbpf-.org', CAST(N'2014-07-13T03:49:01.6435158' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (76, N'Shad', N'Acosta', 1, N'ShadAcosta', 0, N'6076322687', N'080078-7749', N'lvossuc.yzmnnudb@jqtpla.org', CAST(N'2006-12-10T18:22:10.0563047' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (77, N'Monte', N'Sherman', 1, N'MonteSherman', 1, N'955660-4444', N'5119018411', N'tsylb.rwtcqe@xbhdkz.ynrbup.net', CAST(N'2002-07-24T13:39:32.3086064' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (78, N'Ramona', N'Anderson', 1, N'RamonaAnderson', 1, N'774-654-3427', N'040928-4349', N'crkcjzkm.vvyjy@cbvoex.net', CAST(N'2007-09-01T14:43:29.1256165' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (79, N'Nikki', N'Hodge', 1, N'NikkiHodge', 1, N'010-6469970', N'0893380609', N'htkty.zrrlgcxomo@pdnoovj.nwqxsm.com', CAST(N'2006-12-16T21:11:38.0304879' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (80, N'Orlando', N'Bray', 1, N'OrlandoBray', 0, N'1885274155', N'566-3682368', N'gatzttwh.qqgnizw@otevyo.org', CAST(N'2008-06-18T17:46:55.3514996' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (81, N'Brian', N'Walker', 1, N'BrianWalker', 0, N'242-244-3065', N'662952-7546', N'dbusus.mvjqvhgv@tkanqbfd.iadujl.org', CAST(N'2002-10-31T06:00:33.7023821' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (82, N'Marcella', N'Briggs', 1, N'MarcellaBriggs', 1, N'684553-8458', N'2297743000', N'fyuwx814@gmittv.net', CAST(N'2008-03-21T02:01:09.2983333' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (83, N'Megan', N'Clark', 0, N'MeganClark', 0, N'480474-6378', N'060-4440311', N'qktmqy30@ro-xgh.net', CAST(N'2012-12-05T10:01:36.5238412' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (84, N'Cameron', N'Griffin', 1, N'CameronGriffin', 0, N'561-669-7110', N'711039-9124', N'vqmo5@kaooqb.net', CAST(N'2002-05-03T10:07:27.4308899' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (85, N'Robert', N'Middleton', 1, N'RobertMiddleton', 0, N'896-498-9304', N'842-141-8709', N'hgyzxod8@lmkzxs.net', CAST(N'2011-04-30T11:18:27.6865208' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (86, N'Roger', N'Duffy', 0, N'RogerDuffy', 0, N'184123-8961', N'453192-6679', N'eeyl.xzkpbm@zbxzx.ibqwui.org', CAST(N'2004-11-13T14:22:18.2653596' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (87, N'Israel', N'Cannon', 0, N'IsraelCannon', 1, N'354773-5893', N'220-601-2090', N'pprx@hnjirdbcu.gtmibx.net', CAST(N'2003-08-31T09:47:04.7172236' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (88, N'Kelvin', N'Love', 0, N'KelvinLove', 0, N'264871-6620', N'339484-9186', N'obnc.iyjvydihr@ipokea.com', CAST(N'2014-05-12T15:40:11.6666074' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (89, N'Gina', N'Reyes', 0, N'GinaReyes', 0, N'526394-3402', N'471567-3306', N'obmlgntc96@dzsu.dqxzbq.com', CAST(N'2016-04-14T18:53:10.9482439' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (90, N'Mark', N'Kerr', 0, N'MarkKerr', 0, N'3201476419', N'191367-4798', N'iflja.bevncifaby@plmpsk.net', CAST(N'2004-06-13T17:50:08.6522818' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (91, N'Eddie', N'Sellers', 0, N'EddieSellers', 0, N'1432143222', N'424-5826582', N'lrckuru@yqdvyc.org', CAST(N'2003-07-22T06:55:09.1580030' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (92, N'Alice', N'Ayala', 0, N'AliceAyala', 0, N'469-464-0588', N'078-0007916', N'yypvb92@syfooj.org', CAST(N'2015-03-30T02:55:57.9064479' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (93, N'Frances', N'Caldwell', 0, N'FrancesCaldwell', 1, N'985914-2826', N'879-0882656', N'slnuef.olqom@wlvv--.com', CAST(N'2005-01-15T03:34:57.0831395' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (94, N'Luke', N'Torres', 1, N'LukeTorres', 1, N'8149404910', N'885-6994183', N'npgda.olvsmgkelq@wophef.ictoak.com', CAST(N'2011-03-31T10:36:10.1269581' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (95, N'Claudia', N'Figueroa', 0, N'ClaudiaFigueroa', 1, N'6265763292', N'5769551994', N'zeycy8@tbmmh.ezimcx.org', CAST(N'2005-03-22T11:04:50.5078910' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (96, N'Joel', N'Downs', 0, N'JoelDowns', 0, N'538-8014894', N'344-8479843', N'xvjyvwuh4@mcpirj.com', CAST(N'2010-02-01T00:56:56.2818940' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (97, N'Brad', N'Nicholson', 0, N'BradNicholson', 0, N'993923-1596', N'805409-2268', N'dswwjj850@dcroai.net', CAST(N'2017-03-03T08:56:42.8597044' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (98, N'Preston', N'Hodge', 0, N'PrestonHodge', 1, N'757-016-5009', N'794-975-1901', N'yzbiws.elnsr@lbkmrf.org', CAST(N'2007-05-19T19:37:52.7875711' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (99, N'Cedric', N'Browning', 0, N'CedricBrowning', 1, N'782-380-3033', N'012-139-3417', N'icri.uqar@sunmrf.org', CAST(N'2010-01-10T14:10:56.1693609' AS DateTime2), NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [FirstName], [LastName], [IsPermittedToLogon], [LogonName], [IsSalesperson], [PhoneNumber], [FaxNumber], [Email], [ValidFrom], [ValidTo]) VALUES (100, N'Angela', N'Daniel', 1, N'AngelaDaniel', 0, N'3158058206', N'5889301419', N'dneek468@qctffjwv.umasnj.com', CAST(N'2014-06-27T03:40:18.3430749' AS DateTime2), NULL)
GO
