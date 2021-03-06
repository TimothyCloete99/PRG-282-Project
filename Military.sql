

USE [Petshop]
GO

CREATE TABLE [dbo].[tblPet](
	[PetID] [int] IDENTITY(1,1) NOT NULL,
	[PetName] [varchar](50) NULL,
	[PetType] [varchar](50) NULL,
	[PetAge] [int] NULL,
	[UserID] [int] NULL,
 CONSTRAINT [PK_tblPet] PRIMARY KEY CLUSTERED 
(
	[PetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 3/24/2019 3:25:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Surname] [varchar](50) NULL,
	[IDNumber] [varchar](20) NULL,
	[Gender] [varchar](50) NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblPet] ON 

INSERT [dbo].[tblPet] ([PetID], [PetName], [PetType], [PetAge], [UserID]) VALUES (1, N'Spotty', N'Dog', 12, 2)
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetType], [PetAge], [UserID]) VALUES (2, N'Fluffy', N'Cat', 7, 1)
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetType], [PetAge], [UserID]) VALUES (3, N'Tweety', N'Bird', 2, 4)
INSERT [dbo].[tblPet] ([PetID], [PetName], [PetType], [PetAge], [UserID]) VALUES (4, N'Simba', N'Dog', 5, 3)
SET IDENTITY_INSERT [dbo].[tblPet] OFF
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([UserID], [Name], [Surname], [IDNumber], [Gender]) VALUES (1, N'John', N'Snow', N'9010305044085', N'Male')
INSERT [dbo].[tblUser] ([UserID], [Name], [Surname], [IDNumber], [Gender]) VALUES (2, N'Daniel', N'Walker', N'8805061450081', N'Female')
INSERT [dbo].[tblUser] ([UserID], [Name], [Surname], [IDNumber], [Gender]) VALUES (3, N'Jack', N'Yves', N'7504105088089', N'Male')
INSERT [dbo].[tblUser] ([UserID], [Name], [Surname], [IDNumber], [Gender]) VALUES (4, N'Sally', N'Jackson', N'8406075011086', N'Female')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
ALTER TABLE [dbo].[tblPet]  WITH CHECK ADD  CONSTRAINT [FK_tblPet_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblPet] CHECK CONSTRAINT [FK_tblPet_tblUser]
GO
