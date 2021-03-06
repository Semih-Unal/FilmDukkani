USE [master]
GO
/****** Object:  Database [FilmDukkaniDB]    Script Date: 21.02.2019 20:09:56 ******/
CREATE DATABASE [FilmDukkaniDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FilmDukkaniDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FilmDukkaniDB.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'FilmDukkaniDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\FilmDukkaniDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FilmDukkaniDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FilmDukkaniDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FilmDukkaniDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FilmDukkaniDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FilmDukkaniDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FilmDukkaniDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FilmDukkaniDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET RECOVERY FULL 
GO
ALTER DATABASE [FilmDukkaniDB] SET  MULTI_USER 
GO
ALTER DATABASE [FilmDukkaniDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FilmDukkaniDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FilmDukkaniDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FilmDukkaniDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FilmDukkaniDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FilmDukkaniDB', N'ON'
GO
USE [FilmDukkaniDB]
GO
/****** Object:  Table [dbo].[Filmler]    Script Date: 21.02.2019 20:09:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmler](
	[FilmId] [int] IDENTITY(1,1) NOT NULL,
	[FilmAdi] [nvarchar](max) NULL,
	[Sene] [int] NULL,
	[Aciklama] [ntext] NULL,
	[BuyukResim] [nvarchar](max) NULL,
	[KucukResim] [nvarchar](max) NULL,
	[IMDBPuan] [real] NULL,
	[YapimSirketi] [nvarchar](150) NULL,
	[Sure] [int] NULL,
 CONSTRAINT [PK_Filmler] PRIMARY KEY CLUSTERED 
(
	[FilmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Filmler] ON 

INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [Sene], [Aciklama], [BuyukResim], [KucukResim], [IMDBPuan], [YapimSirketi], [Sure]) VALUES (1, N'Yeşil Yol', 1999, N'Gardiyanın hayatı', N'C:\Users\user\Desktop\p_hi\8.hafta\07.01.2019\AdoNet_FilmDukkani_Project\GUI\Images\Large\badiEkrem.jpg', N'C:\Users\user\Desktop\p_hi\8.hafta\07.01.2019\AdoNet_FilmDukkani_Project\GUI\Images\Small\badiEkrem.jpg', 8.9, N'Sony', 180)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [Sene], [Aciklama], [BuyukResim], [KucukResim], [IMDBPuan], [YapimSirketi], [Sure]) VALUES (2, N'Dünyalı', 2000, N'14000 yıl yaşayan ilk insan', N'C:\Users\user\Desktop\p_hi\8.hafta\07.01.2019\AdoNet_FilmDukkani_Project\GUI\Images\Large\yuzuklerin_efendisi.jpg', N'C:\Users\user\Desktop\p_hi\8.hafta\07.01.2019\AdoNet_FilmDukkani_Project\GUI\Images\Small\yuzuklerin_efendisi.jpg', 9.1, N'ET', 160)
INSERT [dbo].[Filmler] ([FilmId], [FilmAdi], [Sene], [Aciklama], [BuyukResim], [KucukResim], [IMDBPuan], [YapimSirketi], [Sure]) VALUES (7, N'Harry Potter', 2000, N'Büyücü Okulu', N'..\..\Images\Large\large_b5f98.jpg', N'..\..\Images\Small\small_73d25.jpg', 9.8, N'ben', 160)
SET IDENTITY_INSERT [dbo].[Filmler] OFF
USE [master]
GO
ALTER DATABASE [FilmDukkaniDB] SET  READ_WRITE 
GO
