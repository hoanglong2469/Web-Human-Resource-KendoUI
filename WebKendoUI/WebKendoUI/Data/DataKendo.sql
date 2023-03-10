USE [master]
GO
/****** Object:  Database [QLNVien]    Script Date: 12/29/2022 1:02:39 PM ******/
CREATE DATABASE [QLNVien]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QLNVien', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLNVien.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLNVien_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\QLNVien_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLNVien] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLNVien].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLNVien] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLNVien] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLNVien] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLNVien] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLNVien] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLNVien] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QLNVien] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLNVien] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLNVien] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLNVien] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLNVien] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLNVien] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLNVien] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLNVien] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLNVien] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QLNVien] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLNVien] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLNVien] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLNVien] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLNVien] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLNVien] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLNVien] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLNVien] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLNVien] SET  MULTI_USER 
GO
ALTER DATABASE [QLNVien] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLNVien] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLNVien] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLNVien] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [QLNVien] SET DELAYED_DURABILITY = DISABLED 
GO
USE [QLNVien]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 12/29/2022 1:02:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Id] [nchar](10) NOT NULL,
	[UserName] [nchar](50) NOT NULL,
	[Password] [nchar](50) NULL,
	[Email] [nchar](50) NULL,
	[Tel] [nchar](50) NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID001     ', N'Long                                              ', N'1234                                              ', N'long@gmail                                        ', N'0978778888                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID002     ', N'Long                                              ', N'1234                                              ', N'huynhvohoanglong2001@gmail.com                    ', N'0123456789                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID003     ', N'Long3                                             ', N'123Abc                                            ', N'long3@gmail.com                                   ', N'0978888766                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID004     ', N'Long4                                             ', N'@123aBc                                           ', N'long4@gmail.com                                   ', N'0988777666                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID005     ', N'Long5                                             ', N'123@321                                           ', N'long5@gmail.com                                   ', N'0789999888                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID006     ', N'Long6                                             ', N'1237445aa                                         ', N'long6@gmail.com                                   ', N'0987888999                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID007     ', N'Long7                                             ', N'gdfs54645                                         ', N'long7@gmail.com                                   ', N'0978987744                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID008     ', N'Long8                                             ', N'cdfvdsg6456                                       ', N'long8@gmail.com                                   ', N'0987545455                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID009     ', N'Long9                                             ', N'dsf64@                                            ', N'long9@gmail.com                                   ', N'0974444555                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID010     ', N'Long10                                            ', N'dsad56456                                         ', N'long10                                            ', N'0987666555                                        ')
INSERT [dbo].[NhanVien] ([Id], [UserName], [Password], [Email], [Tel]) VALUES (N'ID011     ', N'Long11                                            ', N'sfgh4567                                          ', N'long11@gmail.com                                  ', N'0966777777                                        ')
USE [master]
GO
ALTER DATABASE [QLNVien] SET  READ_WRITE 
GO
