USE [master]
GO
/****** Object:  Database [TimeTable_DB]    Script Date: 7/13/2021 11:16:25 AM ******/
CREATE DATABASE [TimeTable_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TimeTable_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TimeTable_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TimeTable_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\TimeTable_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [TimeTable_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TimeTable_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TimeTable_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TimeTable_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TimeTable_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TimeTable_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TimeTable_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [TimeTable_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TimeTable_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TimeTable_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TimeTable_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TimeTable_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TimeTable_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TimeTable_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TimeTable_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TimeTable_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TimeTable_DB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [TimeTable_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TimeTable_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TimeTable_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TimeTable_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TimeTable_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TimeTable_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TimeTable_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TimeTable_DB] SET RECOVERY FULL 
GO
ALTER DATABASE [TimeTable_DB] SET  MULTI_USER 
GO
ALTER DATABASE [TimeTable_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TimeTable_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TimeTable_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TimeTable_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TimeTable_DB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'TimeTable_DB', N'ON'
GO
ALTER DATABASE [TimeTable_DB] SET QUERY_STORE = OFF
GO
USE [TimeTable_DB]
GO
/****** Object:  Table [dbo].[class]    Script Date: 7/13/2021 11:16:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[room]    Script Date: 7/13/2021 11:16:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slot]    Script Date: 7/13/2021 11:16:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slot](
	[slotNO] [int] NOT NULL,
	[starttime] [nvarchar](50) NOT NULL,
	[endtime] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[slotNO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[teacher]    Script Date: 7/13/2021 11:16:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[teacher](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[fullname] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timetable]    Script Date: 7/13/2021 11:16:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timetable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[slot] [int] NOT NULL,
	[class] [nvarchar](50) NOT NULL,
	[room] [int] NOT NULL,
	[teacher] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[class] ON 

INSERT [dbo].[class] ([id], [name]) VALUES (1, N'12A1')
INSERT [dbo].[class] ([id], [name]) VALUES (2, N'12A2')
INSERT [dbo].[class] ([id], [name]) VALUES (3, N'12A3')
INSERT [dbo].[class] ([id], [name]) VALUES (4, N'12A4')
INSERT [dbo].[class] ([id], [name]) VALUES (5, N'12A5')
INSERT [dbo].[class] ([id], [name]) VALUES (6, N'Lớp chuyên Anh 12')
INSERT [dbo].[class] ([id], [name]) VALUES (7, N'Lớp chuyên Toán 12')
INSERT [dbo].[class] ([id], [name]) VALUES (8, N'Lớp chuyên Văn 12')
SET IDENTITY_INSERT [dbo].[class] OFF
SET IDENTITY_INSERT [dbo].[room] ON 

INSERT [dbo].[room] ([id], [name]) VALUES (1, 201)
INSERT [dbo].[room] ([id], [name]) VALUES (2, 202)
INSERT [dbo].[room] ([id], [name]) VALUES (3, 203)
INSERT [dbo].[room] ([id], [name]) VALUES (5, 204)
INSERT [dbo].[room] ([id], [name]) VALUES (6, 205)
INSERT [dbo].[room] ([id], [name]) VALUES (7, 206)
INSERT [dbo].[room] ([id], [name]) VALUES (8, 207)
INSERT [dbo].[room] ([id], [name]) VALUES (9, 208)
SET IDENTITY_INSERT [dbo].[room] OFF
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (1, N'07h30''', N'08h15''')
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (2, N'08h20''', N'09h05''')
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (3, N'09h15''', N'10h00''')
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (4, N'10h05''', N'10h50''')
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (5, N'13h25''', N'14h10''')
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (6, N'14h15''', N'15h00''')
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (7, N'15h10''', N'15h55''')
INSERT [dbo].[slot] ([slotNO], [starttime], [endtime]) VALUES (8, N'16h00''', N'16h45''')
SET IDENTITY_INSERT [dbo].[teacher] ON 

INSERT [dbo].[teacher] ([id], [name], [fullname]) VALUES (1, N'DuongTB', N'Trần Bình Dương')
INSERT [dbo].[teacher] ([id], [name], [fullname]) VALUES (2, N'SonNT5', N'Ngô Tùng Sơn')
INSERT [dbo].[teacher] ([id], [name], [fullname]) VALUES (3, N'AnhBN', N'Bùi Ngọc Anh')
INSERT [dbo].[teacher] ([id], [name], [fullname]) VALUES (4, N'TuanVM', N'Vũ Minh Tuấn')
INSERT [dbo].[teacher] ([id], [name], [fullname]) VALUES (5, N'BanTQ', N'Trần Quý Ban')
INSERT [dbo].[teacher] ([id], [name], [fullname]) VALUES (6, N'ChiLP', N'Lê Phương Chi')
SET IDENTITY_INSERT [dbo].[teacher] OFF
SET IDENTITY_INSERT [dbo].[timetable] ON 

INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (1, CAST(N'2021-07-20' AS Date), 4, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (2, CAST(N'2021-07-20' AS Date), 5, N'Lớp chuyên Toán 12', 202, N'AnhBN')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (3, CAST(N'2021-07-20' AS Date), 6, N'12A1', 203, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (4, CAST(N'2021-07-20' AS Date), 2, N'12A2', 204, N'ChiLP')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (5, CAST(N'2021-07-21' AS Date), 3, N'12A2', 205, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (6, CAST(N'2021-07-21' AS Date), 4, N'12A3', 204, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (7, CAST(N'2021-07-21' AS Date), 5, N'12A3', 205, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (8, CAST(N'2021-07-21' AS Date), 1, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (9, CAST(N'2021-07-21' AS Date), 4, N'Lớp chuyên Anh 12', 206, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (10, CAST(N'2021-07-21' AS Date), 5, N'Lớp chuyên Toán 12', 205, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (11, CAST(N'2021-07-21' AS Date), 7, N'Lớp chuyên Văn 12', 204, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (12, CAST(N'2021-07-21' AS Date), 8, N'12A1', 203, N'TuanVM')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (13, CAST(N'2021-07-12' AS Date), 4, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (14, CAST(N'2021-07-12' AS Date), 5, N'Lớp chuyên Toán 12', 202, N'AnhBN')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (15, CAST(N'2021-07-12' AS Date), 6, N'12A1', 203, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (16, CAST(N'2021-07-13' AS Date), 2, N'12A2', 204, N'ChiLP')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (17, CAST(N'2021-07-13' AS Date), 3, N'12A2', 205, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (18, CAST(N'2021-07-13' AS Date), 4, N'12A3', 204, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (19, CAST(N'2021-07-13' AS Date), 5, N'12A3', 205, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (20, CAST(N'2021-07-14' AS Date), 1, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (21, CAST(N'2021-07-14' AS Date), 4, N'Lớp chuyên Anh 12', 206, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (22, CAST(N'2021-07-14' AS Date), 5, N'Lớp chuyên Toán 12', 205, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (23, CAST(N'2021-07-14' AS Date), 7, N'Lớp chuyên Văn 12', 204, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (24, CAST(N'2021-07-14' AS Date), 8, N'12A1', 203, N'TuanVM')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (25, CAST(N'2021-07-09' AS Date), 4, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (26, CAST(N'2021-07-09' AS Date), 5, N'Lớp chuyên Toán 12', 202, N'AnhBN')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (27, CAST(N'2021-07-09' AS Date), 6, N'12A1', 203, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (28, CAST(N'2021-07-10' AS Date), 2, N'12A2', 204, N'ChiLP')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (29, CAST(N'2021-07-10' AS Date), 3, N'12A2', 205, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (30, CAST(N'2021-07-10' AS Date), 4, N'12A3', 204, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (31, CAST(N'2021-07-10' AS Date), 5, N'12A3', 205, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (32, CAST(N'2021-07-11' AS Date), 1, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (33, CAST(N'2021-07-11' AS Date), 4, N'Lớp chuyên Anh 12', 206, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (34, CAST(N'2021-07-11' AS Date), 5, N'Lớp chuyên Toán 12', 205, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (35, CAST(N'2021-07-11' AS Date), 7, N'Lớp chuyên Văn 12', 204, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (36, CAST(N'2021-07-11' AS Date), 8, N'12A1', 203, N'TuanVM')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (37, CAST(N'2021-07-05' AS Date), 4, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (38, CAST(N'2021-07-05' AS Date), 5, N'Lớp chuyên Toán 12', 202, N'AnhBN')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (39, CAST(N'2021-07-05' AS Date), 6, N'12A1', 203, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (40, CAST(N'2021-07-06' AS Date), 2, N'12A2', 204, N'ChiLP')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (41, CAST(N'2021-07-06' AS Date), 3, N'12A2', 205, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (42, CAST(N'2021-07-06' AS Date), 4, N'12A3', 204, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (43, CAST(N'2021-07-06' AS Date), 5, N'12A3', 205, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (44, CAST(N'2021-07-07' AS Date), 1, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (45, CAST(N'2021-07-07' AS Date), 4, N'Lớp chuyên Anh 12', 206, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (46, CAST(N'2021-07-07' AS Date), 5, N'Lớp chuyên Toán 12', 205, N'BanTQ')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (47, CAST(N'2021-07-08' AS Date), 7, N'Lớp chuyên Văn 12', 204, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (48, CAST(N'2021-07-08' AS Date), 8, N'12A1', 203, N'TuanVM')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (49, CAST(N'2021-07-09' AS Date), 1, N'12A1', 201, N'Sonnt5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (50, CAST(N'2021-07-29' AS Date), 1, N'12A1', 208, N'Sonnt5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (52, CAST(N'2021-07-30' AS Date), 7, N'12A1', 205, N'Sonnt5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (53, CAST(N'2021-07-11' AS Date), 1, N'12A4', 206, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (54, CAST(N'2021-07-15' AS Date), 1, N'12A1', 201, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (55, CAST(N'2021-07-15' AS Date), 3, N'12A1', 201, N'TuanVM')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (56, CAST(N'2021-07-30' AS Date), 1, N'12A1', 201, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (57, CAST(N'2021-07-23' AS Date), 4, N'Lớp chuyên Toán 12', 206, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (58, CAST(N'2021-07-14' AS Date), 6, N'12A4', 206, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (59, CAST(N'2021-07-13' AS Date), 2, N'12A1', 203, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (60, CAST(N'2021-07-20' AS Date), 5, N'Lớp chuyên Văn 12', 201, N'DuongTB')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (61, CAST(N'2021-07-20' AS Date), 4, N'12A1', 205, N'SonNT5')
INSERT [dbo].[timetable] ([id], [date], [slot], [class], [room], [teacher]) VALUES (62, CAST(N'2021-07-20' AS Date), 6, N'Lớp chuyên Văn 12', 204, N'TuanVM')
SET IDENTITY_INSERT [dbo].[timetable] OFF
/****** Object:  Index [UQ__room__72E12F1B653C7301]    Script Date: 7/13/2021 11:16:25 AM ******/
ALTER TABLE [dbo].[room] ADD UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TimeTable_DB] SET  READ_WRITE 
GO
