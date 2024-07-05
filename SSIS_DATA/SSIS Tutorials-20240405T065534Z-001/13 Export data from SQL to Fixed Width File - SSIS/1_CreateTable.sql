
use EMPLOYEE;

IF NOT EXISTS ( SELECT  * FROM    sys.schemas WHERE   name = N'Person' ) 
    EXEC('CREATE SCHEMA Person AUTHORIZATION [dbo]');
go
IF EXISTS ( SELECT * FROM  sys.objects WHERE   object_id = OBJECT_ID(N'Person.EmailAddress') AND type IN ( N'U' ) )
drop table Person.EmailAddress
CREATE TABLE [Person].[EmailAddress](
	[BusinessEntityID] [int] NOT NULL,
	[EmailAddressID] [int] IDENTITY(1,1) NOT NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_EmailAddress_rowguid]  DEFAULT (newid()),
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_EmailAddress_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_EmailAddress_BusinessEntityID_EmailAddressID] PRIMARY KEY CLUSTERED 
(
	[BusinessEntityID] ASC,
	[EmailAddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

SET IDENTITY_INSERT [Person].[EmailAddress] ON 

INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (1, 1, N'ken0@adventure-works.com', N'8a1901e4-671b-431a-871c-eadb2942e9ee', CAST(N'2009-01-07 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (2, 2, N'terri0@adventure-works.com', N'b5ff9efd-72a2-4f87-830b-f338fdd4d162', CAST(N'2008-01-24 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (3, 3, N'roberto0@adventure-works.com', N'c8a51084-1c03-4c58-a8b3-55854ae7c499', CAST(N'2007-11-04 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (4, 4, N'rob0@adventure-works.com', N'17703ed1-0031-4b4a-afd2-77487a556b3b', CAST(N'2007-11-28 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (5, 5, N'gail0@adventure-works.com', N'e76d2ea3-08e5-409c-bbe2-5dd1cdf89a3b', CAST(N'2007-12-30 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (6, 6, N'jossef0@adventure-works.com', N'a9c4093a-4f4a-4cad-bbb4-2c4e920baccb', CAST(N'2013-12-16 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (7, 7, N'dylan0@adventure-works.com', N'70429de4-c3bf-4f19-a00a-e976c8017fb3', CAST(N'2009-02-01 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (8, 8, N'diane1@adventure-works.com', N'37f02a87-058d-49f8-a20d-965738b0a71f', CAST(N'2008-12-22 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (9, 9, N'gigi0@adventure-works.com', N'f888a16d-0c33-459e-9d72-d16ae0bb1f43', CAST(N'2009-01-09 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (10, 10, N'michael6@adventure-works.com', N'e0dd366d-433d-4f5a-9347-1a5fe7fbe0a3', CAST(N'2009-04-26 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (11, 11, N'ovidiu0@adventure-works.com', N'0ff9523d-f398-4237-85f8-2834de441692', CAST(N'2010-11-28 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (12, 12, N'thierry0@adventure-works.com', N'b2962849-cc5f-4e57-bcb4-019642bbd8ed', CAST(N'2007-12-04 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (13, 13, N'janice0@adventure-works.com', N'64871268-3812-402f-8a91-c618b6515b06', CAST(N'2010-12-16 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (14, 14, N'michael8@adventure-works.com', N'bea9075c-1bed-4e5e-8234-f5641faf814c', CAST(N'2010-12-23 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (15, 15, N'sharon0@adventure-works.com', N'5cd782ba-f5ab-41ec-b206-09b06f52c96b', CAST(N'2011-01-11 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (16, 16, N'david0@adventure-works.com', N'80c0d44a-78b6-42ac-ae8d-410a22a6be63', CAST(N'2007-12-13 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (17, 17, N'kevin0@adventure-works.com', N'f4332215-c861-4a54-99f5-b0c4f6406515', CAST(N'2007-01-19 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (18, 18, N'john5@adventure-works.com', N'a944fc67-f16e-4ab8-8940-8ceff186bed3', CAST(N'2011-01-31 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (19, 19, N'mary2@adventure-works.com', N'626cb0e6-d6a9-4a73-8227-acb02dbc5214', CAST(N'2011-02-07 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (20, 20, N'wanida0@adventure-works.com', N'924a0fc3-f9e4-4100-8c82-1c69aae4501f', CAST(N'2010-12-31 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (21, 21, N'terry0@adventure-works.com', N'001ada12-a5d4-44e7-97ef-610888c011c5', CAST(N'2009-02-23 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (22, 22, N'sariya0@adventure-works.com', N'ba309cb3-c089-4bd8-a9ca-aac0ce2b7bbf', CAST(N'2008-12-05 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (23, 23, N'mary0@adventure-works.com', N'4e589721-922b-4a26-a138-b9d5a1813ec7', CAST(N'2009-01-05 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (24, 24, N'jill0@adventure-works.com', N'76c0ad95-1552-4867-a95f-7460ef3f3eee', CAST(N'2009-01-11 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (25, 25, N'james1@adventure-works.com', N'2fb4a156-a73c-4fb6-adee-d36bc1435c87', CAST(N'2009-01-27 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (26, 26, N'peter0@adventure-works.com', N'2153cb40-e8b1-43c3-9791-6bff91e75d77', CAST(N'2008-11-24 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (27, 27, N'jo0@adventure-works.com', N'98259561-eccb-4257-9cf3-c4ed5e3356fc', CAST(N'2008-02-20 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (28, 28, N'guy1@adventure-works.com', N'0d4f335b-6f4c-4612-942a-8bccaf1bda8d', CAST(N'2006-06-23 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (29, 29, N'mark1@adventure-works.com', N'9c9d2ac4-bbfd-47f6-95aa-6dff49538e08', CAST(N'2009-01-16 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (30, 30, N'britta0@adventure-works.com', N'1f515a06-5240-4271-ad27-825dfdfa189a', CAST(N'2009-01-22 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (31, 31, N'margie0@adventure-works.com', N'52dcddf9-b9fd-4a8f-b23c-fc0b6e75380a', CAST(N'2008-12-28 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (32, 32, N'rebecca0@adventure-works.com', N'afba85f1-8107-40e5-82db-98d0678d6f15', CAST(N'2008-12-22 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (33, 33, N'annik0@adventure-works.com', N'9b34b7ee-e461-4f34-abc9-40ca59e7b8fd', CAST(N'2008-12-10 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (34, 34, N'suchitra0@adventure-works.com', N'2a0b297f-6225-4b5a-ad4e-278f023cf864', CAST(N'2009-02-09 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (35, 35, N'brandon0@adventure-works.com', N'87b16476-b184-4cb2-9f75-af0606855b25', CAST(N'2009-02-01 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (36, 36, N'jose0@adventure-works.com', N'7cb0078c-caaa-44bd-b788-0f04df52aa9f', CAST(N'2009-02-03 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (37, 37, N'chris2@adventure-works.com', N'5b3e99ac-a9ed-40d7-a206-e99210c957d0', CAST(N'2009-02-28 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (38, 38, N'kim1@adventure-works.com', N'9730c7eb-ab57-4785-9d8e-c90c49f3c6de', CAST(N'2010-01-09 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (39, 39, N'ed0@adventure-works.com', N'2aa0689b-eb49-4783-b7da-66b96c569854', CAST(N'2010-01-29 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (40, 40, N'jolynn0@adventure-works.com', N'a7150ac4-a013-4a90-abdf-084a527ca233', CAST(N'2007-12-19 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (41, 41, N'bryan0@adventure-works.com', N'cf270087-0505-45fb-975c-1ab089678604', CAST(N'2009-01-14 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (42, 42, N'james0@adventure-works.com', N'c051b91d-2363-4dca-b09f-305c4f93412e', CAST(N'2008-12-20 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (43, 43, N'nancy0@adventure-works.com', N'52c2cdcf-949e-4b7b-bde9-159ed85e6654', CAST(N'2008-12-26 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (44, 44, N'simon0@adventure-works.com', N'6ac896ed-318c-4c8b-a5ab-d4e8d036b3e7', CAST(N'2008-12-01 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (45, 45, N'thomas0@adventure-works.com', N'b95150f5-e806-44c2-9369-270378fa6b03', CAST(N'2009-02-19 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (46, 46, N'eugene1@adventure-works.com', N'1c2af5c7-56e5-440f-9fb0-1972ec1ccf1f', CAST(N'2009-02-01 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (47, 47, N'andrew0@adventure-works.com', N'bc270013-80b6-4067-b60b-4beefc2d7739', CAST(N'2009-02-15 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (48, 48, N'ruth0@adventure-works.com', N'3360c26c-7b6e-4b0a-a688-dbefeb209cdb', CAST(N'2007-12-30 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (49, 49, N'barry0@adventure-works.com', N'324c8dce-06fa-47b9-b7c7-d35590b9a196', CAST(N'2013-11-29 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (50, 50, N'sidney0@adventure-works.com', N'953fba2b-5004-4879-adb8-c6b08f17fa0c', CAST(N'2008-01-26 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (51, 51, N'jeffrey0@adventure-works.com', N'9b83df43-8b73-46ed-b821-77000d84bec1', CAST(N'2008-02-13 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (52, 52, N'doris0@adventure-works.com', N'01dc29c7-bf48-4f15-a5fa-c3ea72ec94f0', CAST(N'2014-01-31 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (53, 53, N'diane0@adventure-works.com', N'faed4878-4cf5-4555-b670-b2b09b6a188a', CAST(N'2008-03-21 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (54, 54, N'bonnie0@adventure-works.com', N'c6aeb77c-8dfe-4776-985c-e34138643612', CAST(N'2009-12-25 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (55, 55, N'taylor0@adventure-works.com', N'f407cf1e-b04d-416d-bc69-1ac6e5c24c99', CAST(N'2013-12-31 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (56, 56, N'denise0@adventure-works.com', N'58f29b04-00b3-44e1-ac87-9ac960ffda12', CAST(N'2009-01-29 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (57, 57, N'frank1@adventure-works.com', N'4fef2a65-2dd3-4107-9785-870de1727ebc', CAST(N'2009-02-16 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (58, 58, N'kendall0@adventure-works.com', N'e370f4b0-b1f5-4595-8da1-5d88b4948341', CAST(N'2008-11-28 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (59, 59, N'bob0@adventure-works.com', N'2cc9ee3a-8c99-49e1-9033-f850cf668efa', CAST(N'2008-12-17 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (60, 60, N'pete0@adventure-works.com', N'55e3e46b-7205-4c7e-882e-63aa895310cc', CAST(N'2009-01-04 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (61, 61, N'diane2@adventure-works.com', N'b3b18577-a565-47c6-b149-cd2aae6bd3f0', CAST(N'2009-01-11 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (62, 62, N'john0@adventure-works.com', N'0f968a24-5e70-4a47-9961-091e31a57849', CAST(N'2014-02-07 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (63, 63, N'maciej0@adventure-works.com', N'eb76a53a-8095-4a99-89d6-03923ca6ea0e', CAST(N'2010-01-22 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (64, 64, N'michael7@adventure-works.com', N'77e65f84-6ee8-420a-b072-e13d87c85a45', CAST(N'2010-02-16 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (65, 65, N'randy0@adventure-works.com', N'b174f86b-cba7-4b5d-aa83-8a075ee1fdb4', CAST(N'2010-02-16 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (66, 66, N'karan0@adventure-works.com', N'13a1d31a-8c76-419e-81d5-0b479a2f3ad9', CAST(N'2009-12-15 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (67, 67, N'jay0@adventure-works.com', N'47e5526e-fe7f-4d11-aed7-14ab5307b97f', CAST(N'2009-02-26 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (68, 68, N'charles0@adventure-works.com', N'd40bfdbf-6d54-4f67-aca8-055e8498b995', CAST(N'2009-11-26 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (69, 69, N'steve0@adventure-works.com', N'bc1283a1-a7fc-4db2-8344-7f15c000f63f', CAST(N'2009-02-08 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (70, 70, N'david2@adventure-works.com', N'd62c5b4e-c91f-403f-b630-7b7e0fda70ce', CAST(N'2008-12-08 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (71, 71, N'michael3@adventure-works.com', N'3f21eb3b-81ab-46f3-aae2-a8d5c5eb6a6d', CAST(N'2009-02-08 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (72, 72, N'steven0@adventure-works.com', N'9d1c4b98-72b0-4e17-8214-2cd2c72f86e9', CAST(N'2008-11-24 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (73, 73, N'carole0@adventure-works.com', N'703cd060-e4ff-42f4-8f82-41131ccb346e', CAST(N'2008-12-12 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (74, 74, N'bjorn0@adventure-works.com', N'7ed83953-fa8e-497a-98d6-6b3684bec822', CAST(N'2008-12-31 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (75, 75, N'michiko0@adventure-works.com', N'0798ad10-1e34-405a-a440-615634b76e24', CAST(N'2009-01-19 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (76, 76, N'carol0@adventure-works.com', N'140a9c46-2a64-43fc-acf2-a76ed2805266', CAST(N'2009-02-05 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (77, 77, N'merav0@adventure-works.com', N'0a4f7c43-3fed-43fe-947c-69e9fcb0629a', CAST(N'2009-02-24 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (78, 78, N'reuben0@adventure-works.com', N'd0fc506c-3332-4486-a6b7-4fd20e21245f', CAST(N'2008-12-08 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (79, 79, N'eric1@adventure-works.com', N'dc243863-a00c-448c-b90f-509dfbe76f12', CAST(N'2010-01-17 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (80, 80, N'sandeep0@adventure-works.com', N'c7adb778-4a93-493d-adad-faaf3967a5ba', CAST(N'2010-01-10 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (81, 81, N'mihail0@adventure-works.com', N'e07a7278-4697-4b4a-a9e0-cac2583143de', CAST(N'2009-12-22 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (82, 82, N'jack1@adventure-works.com', N'5ae3538e-a9a4-49c9-8488-2314f289b6cb', CAST(N'2010-02-24 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (83, 83, N'patrick1@adventure-works.com', N'621d39fe-5eea-4840-8131-31375e061e94', CAST(N'2010-02-05 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (84, 84, N'frank3@adventure-works.com', N'a53c239f-bc9f-447f-a719-59b59a6f482a', CAST(N'2010-01-29 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (85, 85, N'brian2@adventure-works.com', N'78586e93-83a6-44bb-8f5d-4187f702c040', CAST(N'2009-12-04 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (86, 86, N'ryan0@adventure-works.com', N'b8a67e8b-15d5-4a9f-8c27-30d86779cec1', CAST(N'2008-12-29 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (87, 87, N'cristian0@adventure-works.com', N'2fff23e9-73fe-48f0-a7ed-168f48b4941f', CAST(N'2008-12-15 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (88, 88, N'betsy0@adventure-works.com', N'079e435b-5a3a-43a0-b598-9d0d21d8fa4f', CAST(N'2009-12-11 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (89, 89, N'patrick0@adventure-works.com', N'77b0abc5-529e-4abd-89e3-28cbb8761741', CAST(N'2010-01-25 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (90, 90, N'danielle0@adventure-works.com', N'3b8219c2-8893-4881-aa3c-4d0a752fc4ea', CAST(N'2010-02-13 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (91, 91, N'kimberly0@adventure-works.com', N'23275f93-2e6c-487f-9fc1-617f8239d050', CAST(N'2010-01-05 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (92, 92, N'tom0@adventure-works.com', N'e093b00c-f87f-4b93-af2f-ecd6c9f63b85', CAST(N'2010-03-03 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (93, 93, N'kok-ho0@adventure-works.com', N'4232d44c-b42c-498e-840f-f2ae44b50f16', CAST(N'2008-12-20 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (94, 94, N'russell0@adventure-works.com', N'2d083a33-fede-4472-9c96-5766e9783351', CAST(N'2008-12-05 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (95, 95, N'jim0@adventure-works.com', N'933b5fe3-cc08-48ff-ab0f-a812fc642d0b', CAST(N'2008-12-12 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (96, 96, N'elizabeth0@adventure-works.com', N'de385467-19f1-41b1-9165-e05e462fbc80', CAST(N'2009-02-23 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (97, 97, N'mandar0@adventure-works.com', N'1a9e785f-ebcf-454d-b249-2a88f858a2d0', CAST(N'2009-02-03 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (98, 98, N'sameer0@adventure-works.com', N'dfcc751c-451c-4498-819b-a4692527b0a2', CAST(N'2009-02-04 00:00:00.000' AS DateTime))
INSERT [Person].[EmailAddress] ([BusinessEntityID], [EmailAddressID], [EmailAddress], [rowguid], [ModifiedDate]) VALUES (99, 99, N'nuan0@adventure-works.com', N'12a30695-a604-4312-b65e-19a67fb3fb73', CAST(N'2008-12-30 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [Person].[EmailAddress] OFF



select * from [Person].[EmailAddress];


drop table [Person].[EmailAddress];