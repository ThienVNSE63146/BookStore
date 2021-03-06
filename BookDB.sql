USE [master]
GO
/****** Object:  Database [BookDB]    Script Date: 07/05/2018 15:02:58 ******/
CREATE DATABASE [BookDB] ON  PRIMARY 
( NAME = N'BookDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BookDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BookDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BookDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BookDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BookDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BookDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BookDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BookDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BookDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BookDB] SET ARITHABORT OFF
GO
ALTER DATABASE [BookDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BookDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BookDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BookDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BookDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BookDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BookDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BookDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BookDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BookDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BookDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [BookDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BookDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BookDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BookDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BookDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BookDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BookDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BookDB] SET  READ_WRITE
GO
ALTER DATABASE [BookDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BookDB] SET  MULTI_USER
GO
ALTER DATABASE [BookDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BookDB] SET DB_CHAINING OFF
GO
USE [BookDB]
GO
/****** Object:  Table [dbo].[tblBooks]    Script Date: 07/05/2018 15:02:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblBooks](
	[BookID] [varchar](5) NOT NULL,
	[BookTitle] [varchar](50) NOT NULL,
	[Description] [varchar](250) NOT NULL,
	[Author] [varchar](50) NOT NULL,
	[Publisher] [varchar](50) NOT NULL,
	[Price] [float] NOT NULL,
 CONSTRAINT [PK_tblBook] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tblBooks] ([BookID], [BookTitle], [Description], [Author], [Publisher], [Price]) VALUES (N'B01', N'The Godfather', N'The Godfather is a crime novel written by American author Mario Puzo', N'Mario Puzo', N'G. P. Putnam''s Sons', 12.8)
INSERT [dbo].[tblBooks] ([BookID], [BookTitle], [Description], [Author], [Publisher], [Price]) VALUES (N'B03', N'Cosmos: A Personal Voyage', N'Cosmos: A Personal Voyage is a thirteen-part television series written by Carl Sagan, Ann Druyan, and Steven Soter, with Sagan as presenter.', N'Carl Sagan', N'Adrian Malone', 13.4)
INSERT [dbo].[tblBooks] ([BookID], [BookTitle], [Description], [Author], [Publisher], [Price]) VALUES (N'B04', N'The Little Prince', N' First published in April 1943, is a novella, the most famous work of French aristocrat, writer, poet, and pioneering aviator Antoine de Saint-Exupéry', N'Antoine de Saint-Exupéry', N'Reynal & Hitchcock ', 16.4)
INSERT [dbo].[tblBooks] ([BookID], [BookTitle], [Description], [Author], [Publisher], [Price]) VALUES (N'B05', N'The Road', N'The Road is a 2006 novel by American writer Cormac McCarthy. It is a post-apocalyptic tale of a journey of a father and his young son over a period of several months.', N'Cormac McCarthy', N'Alfred A. Knopf', 13.2)
INSERT [dbo].[tblBooks] ([BookID], [BookTitle], [Description], [Author], [Publisher], [Price]) VALUES (N'B06', N'Kane and Abel', N'Kane and Abel is a 1979 novel by British author Jeffrey Archer. Released in the United Kingdom in 1979 and in the United States in February 1980', N'Jeffrey Archer', N'	Hodder & Stoughton', 12.8)
INSERT [dbo].[tblBooks] ([BookID], [BookTitle], [Description], [Author], [Publisher], [Price]) VALUES (N'B07', N'Harry Potter', N'Harry Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the life of a young wizard, Harry Potter, and his friends', N'J. K. Rowling', N'Bloomsbury Publishing & Scholastic ', 20.4)
INSERT [dbo].[tblBooks] ([BookID], [BookTitle], [Description], [Author], [Publisher], [Price]) VALUES (N'B08', N'The Alchemit', N'The Alchemist (Portuguese: O Alquimista) is a novel by Brazilian author Paulo Coelho which was first published in 1988', N'Paulo Coelho', N'HarperTorch', 15)
