USE [FlightBooking]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[UserAccountId] [int] NULL,
	[Address] [varchar](150) NULL,
	[Address1] [varchar](150) NULL,
	[CityName] [varchar](150) NULL,
	[StateName] [varchar](150) NULL,
	[CountryName] [varchar](150) NULL,
	[ZipCode] [varchar](50) NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Airline]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Airline](
	[AirlineID] [int] IDENTITY(1,1) NOT NULL,
	[AirlineNumber] [varchar](50) NULL,
	[AirlineName] [varchar](50) NULL,
	[IsActive] [bit] NULL,
	[CreatedById] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedById] [int] NULL,
	[ModifedDate] [datetime] NULL,
 CONSTRAINT [PK_Airline] PRIMARY KEY CLUSTERED 
(
	[AirlineID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[Booking_User_Id] [int] NULL,
	[Booking_Flight_Id] [int] NULL,
	[Booking_Date] [varchar](255) NULL,
	[Booking_total_Fare] [varchar](255) NULL,
	[Booking_Journey_Date] [varchar](255) NULL,
	[Booking_Seat_type] [varchar](255) NULL,
	[Booking_Seat_Number] [int] NULL,
	[Booking_Status] [varchar](255) NULL,
	[Booking_PNR] [bigint] NULL,
	[IsActive] [bit] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
	[DiscountCoupenName] [nvarchar](30) NULL,
	[WithDiscountPrice] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[DiscountId] [int] IDENTITY(1,1) NOT NULL,
	[CouponCode] [varchar](50) NULL,
	[DiscountValue] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Coupon] PRIMARY KEY CLUSTERED 
(
	[DiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlightSchedule]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlightSchedule](
	[FlightScheduledID] [int] IDENTITY(1,1) NOT NULL,
	[AirlineId] [int] NULL,
	[FromPlace] [nvarchar](250) NULL,
	[ToPlace] [nvarchar](250) NULL,
	[StartDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[ScheduledDayId] [nvarchar](120) NULL,
	[InstrumentUsed] [nvarchar](120) NULL,
	[NonBusinessClassSeat] [nvarchar](60) NULL,
	[BusinessClassSeats] [nvarchar](60) NULL,
	[TicketCost] [decimal](18, 2) NULL,
	[MealId] [nvarchar](60) NULL,
	[CreatedById] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedById] [int] NULL,
	[ModiifiedDate] [datetime] NULL,
	[IsActive] [bit] NULL,
	[DiscountId] [int] NULL,
 CONSTRAINT [PK_FlightSchedule] PRIMARY KEY CLUSTERED 
(
	[FlightScheduledID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Meal]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meal](
	[MealId] [int] IDENTITY(1,1) NOT NULL,
	[MealName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Meal] PRIMARY KEY CLUSTERED 
(
	[MealId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passenger]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passenger](
	[PassengerId] [int] IDENTITY(1,1) NOT NULL,
	[Passenger_Booking_Id] [int] NULL,
	[Passenger_type] [varchar](255) NULL,
	[Passenger_FirstName] [varchar](255) NULL,
	[Passenger_LastName] [varchar](255) NULL,
	[Passenger_Email] [varchar](255) NULL,
	[Passenger_Gender] [varchar](255) NULL,
	[MealId] [int] NULL,
	[Createdby] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [int] NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PassengerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[FirstName] [nvarchar](70) NULL,
	[LastName] [nvarchar](70) NULL,
	[Email] [nvarchar](150) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Password] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[IsActive] [bit] NULL,
	[UserType] [int] NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([AddressId], [UserAccountId], [Address], [Address1], [CityName], [StateName], [CountryName], [ZipCode], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1009, N'I1-835 Delhi99', N'Loni Road1', N'Gha', N'U.P.', N'U.P', N'4526', 1009, CAST(N'2022-05-30T13:08:02.980' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Airline] ON 

INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (1, N'UAL', N'UNITED AIRLINES, INC.', 1, 1, CAST(N'2022-05-30T04:43:11.547' AS DateTime), NULL, CAST(N'2022-05-30T04:44:06.160' AS DateTime))
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (2, N'AIC', N'AIR INDIA LTD.', 1, 49, CAST(N'2022-05-30T04:43:38.730' AS DateTime), NULL, CAST(N'2022-05-30T08:42:25.857' AS DateTime))
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (3, N'IRA', N'IRAN-AIR', 0, 49, CAST(N'2022-05-30T04:43:56.630' AS DateTime), NULL, CAST(N'2022-05-30T12:03:18.050' AS DateTime))
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (4, N'UA11L', N'UNIT1ED2 1AIRLINES,4 INC.', 1, 49, CAST(N'2022-05-30T11:14:28.590' AS DateTime), NULL, NULL)
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (5, NULL, NULL, 1, 49, CAST(N'2022-05-30T11:15:10.947' AS DateTime), NULL, NULL)
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (6, N'UA11L1', N'UNIT1ED2 1AIRLINES,4 INC1.', 1, 49, CAST(N'2022-05-30T11:54:56.103' AS DateTime), NULL, NULL)
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (7, NULL, NULL, 1, 49, CAST(N'2022-05-30T11:56:48.013' AS DateTime), NULL, NULL)
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (8, NULL, NULL, 1, 49, CAST(N'2022-05-30T11:58:06.340' AS DateTime), NULL, NULL)
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (9, N'UA111L1', N'UNIT1ED2 1AIRLI1NES,4 INC1.', 0, 49, CAST(N'2022-05-30T12:03:32.473' AS DateTime), NULL, CAST(N'2022-05-30T13:14:51.610' AS DateTime))
INSERT [dbo].[Airline] ([AirlineID], [AirlineNumber], [AirlineName], [IsActive], [CreatedById], [CreatedDate], [ModifiedById], [ModifedDate]) VALUES (10, N'ABC', N'UNIT1ED2 1AIRLI1NES,4 INC1.', 0, 49, CAST(N'2022-05-30T13:11:39.430' AS DateTime), NULL, CAST(N'2022-05-30T13:11:46.963' AS DateTime))
SET IDENTITY_INSERT [dbo].[Airline] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 

INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (1, NULL, 2, N'30-05-2022 10:34:39', N'4500', N'2022-05-16 04:16:28.523', N'A4', 45, N'0', 607352, 0, NULL, CAST(N'2022-05-30T10:34:39.487' AS DateTime), NULL, CAST(N'2022-05-31T13:50:41.520' AS DateTime), NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (2, NULL, 2, N'30-05-2022 16:39:06', N'4800', N'2022-05-30 04:43:56.630', N'A4', 45, N'0', 575166, 0, NULL, CAST(N'2022-05-30T16:39:06.497' AS DateTime), NULL, CAST(N'2022-05-31T10:38:17.893' AS DateTime), NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (3, NULL, 1, N'30-05-2022 16:43:31', N'4800', N'2022-05-28 04:16', N'business', 1, N'1', 709809, 1, NULL, CAST(N'2022-05-30T16:43:31.327' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (4, NULL, 1, N'30-05-2022 17:20:33', N'4800', N'2022-05-28 04:16', N'business', 1, N'1', 752073, 1, NULL, CAST(N'2022-05-30T17:20:33.333' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (5, NULL, 1, N'30-05-2022 17:21:06', N'4800', N'2022-05-28 04:16', N'business', 1, N'1', 518152, 1, NULL, CAST(N'2022-05-30T17:21:06.890' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (6, NULL, 1, N'30-05-2022 18:39:07', N'4800', N'2022-05-28 04:16', N'business', 1, N'1', 943997, 1, NULL, CAST(N'2022-05-30T18:39:07.900' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (7, NULL, 1, N'30-05-2022 18:39:23', N'4800', N'2022-05-28 04:16', N'business', 1, N'1', 750645, 1, NULL, CAST(N'2022-05-30T18:39:23.863' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (8, NULL, 5, N'30-05-2022 18:39:42', N'4800', N'2022-05-28 04:16', N'business', 1, N'1', 971239, 1, NULL, CAST(N'2022-05-30T18:39:42.237' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (9, NULL, 2, N'31-05-2022 00:22:32', N'4500', N'2022-05-16 04:16:28.523', N'A1', 44, N'1', 616513, 1, NULL, CAST(N'2022-05-31T00:22:32.443' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (10, NULL, 2, N'31-05-2022 11:04:59', N'4500', N'2022-05-16 04:16:28.523', N'A44', 44, N'0', 812721, 0, NULL, CAST(N'2022-05-31T11:04:59.327' AS DateTime), NULL, CAST(N'2022-05-31T11:27:49.097' AS DateTime), NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (11, NULL, 2, N'31-05-2022 13:57:01', N'4500', N'2022-05-30 04:43:56.630', N'A4', 44, N'1', 568031, 1, NULL, CAST(N'2022-05-31T13:57:01.560' AS DateTime), NULL, NULL, NULL, NULL)
INSERT [dbo].[Booking] ([BookingId], [Booking_User_Id], [Booking_Flight_Id], [Booking_Date], [Booking_total_Fare], [Booking_Journey_Date], [Booking_Seat_type], [Booking_Seat_Number], [Booking_Status], [Booking_PNR], [IsActive], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate], [DiscountCoupenName], [WithDiscountPrice]) VALUES (12, NULL, 6, N'31-05-2022 19:53:09', N'4500', N'2022-05-16 04:16:28.523', N'A4', 44, N'1', 837968, 1, NULL, CAST(N'2022-05-31T19:53:09.837' AS DateTime), NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Discount] ON 

INSERT [dbo].[Discount] ([DiscountId], [CouponCode], [DiscountValue], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'AWSAER1234', 10, 0, 0, CAST(N'2022-05-30T12:00:55.737' AS DateTime), NULL, NULL)
INSERT [dbo].[Discount] ([DiscountId], [CouponCode], [DiscountValue], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'AWSAER41234', 5, 0, 0, CAST(N'2022-05-30T12:02:07.040' AS DateTime), NULL, NULL)
INSERT [dbo].[Discount] ([DiscountId], [CouponCode], [DiscountValue], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'AWSAER41234', 3, 1, 0, CAST(N'2022-05-30T13:12:08.483' AS DateTime), NULL, NULL)
INSERT [dbo].[Discount] ([DiscountId], [CouponCode], [DiscountValue], [IsActive], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Aswedrf', 4, 1, 0, CAST(N'2022-05-30T19:51:54.110' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Discount] OFF
GO
SET IDENTITY_INSERT [dbo].[FlightSchedule] ON 

INSERT [dbo].[FlightSchedule] ([FlightScheduledID], [AirlineId], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [ScheduledDayId], [InstrumentUsed], [NonBusinessClassSeat], [BusinessClassSeats], [TicketCost], [MealId], [CreatedById], [CreatedDate], [ModifiedById], [ModiifiedDate], [IsActive], [DiscountId]) VALUES (1, 2, N'Delhi', N'UK', CAST(N'2022-05-16T04:16:28.523' AS DateTime), CAST(N'2022-05-16T04:16:28.523' AS DateTime), NULL, N'NaqiZaidi', NULL, NULL, CAST(4500.00 AS Decimal(18, 2)), N'1', NULL, CAST(N'2022-05-30T05:02:27.363' AS DateTime), NULL, NULL, 1, 1)
INSERT [dbo].[FlightSchedule] ([FlightScheduledID], [AirlineId], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [ScheduledDayId], [InstrumentUsed], [NonBusinessClassSeat], [BusinessClassSeats], [TicketCost], [MealId], [CreatedById], [CreatedDate], [ModifiedById], [ModiifiedDate], [IsActive], [DiscountId]) VALUES (2, 3, N'Delhi', N'Iran', CAST(N'2022-05-30T04:43:56.630' AS DateTime), CAST(N'2022-05-30T04:43:56.630' AS DateTime), N'Manday', N'A4', N'4', N'4', CAST(3500.00 AS Decimal(18, 2)), N'veg', NULL, CAST(N'2022-05-30T07:04:53.490' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[FlightSchedule] ([FlightScheduledID], [AirlineId], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [ScheduledDayId], [InstrumentUsed], [NonBusinessClassSeat], [BusinessClassSeats], [TicketCost], [MealId], [CreatedById], [CreatedDate], [ModifiedById], [ModiifiedDate], [IsActive], [DiscountId]) VALUES (3, 2, N'Delhi', N'Jaypur', CAST(N'2022-05-30T04:43:56.630' AS DateTime), CAST(N'2022-05-31T04:43:56.630' AS DateTime), N'Manday', N'A4', N'45', N'15', CAST(2500.00 AS Decimal(18, 2)), N'veg', NULL, CAST(N'2022-05-30T11:05:42.913' AS DateTime), NULL, NULL, 1, 5)
INSERT [dbo].[FlightSchedule] ([FlightScheduledID], [AirlineId], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [ScheduledDayId], [InstrumentUsed], [NonBusinessClassSeat], [BusinessClassSeats], [TicketCost], [MealId], [CreatedById], [CreatedDate], [ModifiedById], [ModiifiedDate], [IsActive], [DiscountId]) VALUES (4, 2, N'Delhi', N'Lucknow', CAST(N'2022-05-30T11:56:48.013' AS DateTime), CAST(N'2022-05-30T11:56:48.013' AS DateTime), N'Man', N'A4', N'45', N'45', CAST(7500.00 AS Decimal(18, 2)), N'Veg', NULL, CAST(N'2022-05-30T19:08:44.693' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[FlightSchedule] ([FlightScheduledID], [AirlineId], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [ScheduledDayId], [InstrumentUsed], [NonBusinessClassSeat], [BusinessClassSeats], [TicketCost], [MealId], [CreatedById], [CreatedDate], [ModifiedById], [ModiifiedDate], [IsActive], [DiscountId]) VALUES (5, 6, N'Jaunpur', N'Delhi', CAST(N'2022-05-30T11:54:56.103' AS DateTime), CAST(N'2022-05-30T11:54:56.103' AS DateTime), N'Man', N'A45', N'45', N'45', CAST(6500.00 AS Decimal(18, 2)), N'Veg', NULL, CAST(N'2022-05-31T11:02:18.547' AS DateTime), NULL, NULL, 1, 4)
INSERT [dbo].[FlightSchedule] ([FlightScheduledID], [AirlineId], [FromPlace], [ToPlace], [StartDateTime], [EndDateTime], [ScheduledDayId], [InstrumentUsed], [NonBusinessClassSeat], [BusinessClassSeats], [TicketCost], [MealId], [CreatedById], [CreatedDate], [ModifiedById], [ModiifiedDate], [IsActive], [DiscountId]) VALUES (6, 4, N'Pune', N'Delhi', CAST(N'2022-05-30T11:54:56.103' AS DateTime), CAST(N'2022-05-30T11:54:56.103' AS DateTime), N'Man', N'A45', N'45', N'15', CAST(1400.00 AS Decimal(18, 2)), N'None', NULL, CAST(N'2022-05-31T11:03:54.133' AS DateTime), NULL, NULL, 1, 3)
SET IDENTITY_INSERT [dbo].[FlightSchedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Meal] ON 

INSERT [dbo].[Meal] ([MealId], [MealName]) VALUES (1, N'None')
INSERT [dbo].[Meal] ([MealId], [MealName]) VALUES (2, N'Veg')
INSERT [dbo].[Meal] ([MealId], [MealName]) VALUES (3, N'Non Veg')
SET IDENTITY_INSERT [dbo].[Meal] OFF
GO
SET IDENTITY_INSERT [dbo].[Passenger] ON 

INSERT [dbo].[Passenger] ([PassengerId], [Passenger_Booking_Id], [Passenger_type], [Passenger_FirstName], [Passenger_LastName], [Passenger_Email], [Passenger_Gender], [MealId], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, N'A1', N'Naqi', N'Zaidi', N'naqi@gmail.com', N'Male', 2, NULL, CAST(N'2022-05-30T05:04:39.670' AS DateTime), NULL, NULL)
INSERT [dbo].[Passenger] ([PassengerId], [Passenger_Booking_Id], [Passenger_type], [Passenger_FirstName], [Passenger_LastName], [Passenger_Email], [Passenger_Gender], [MealId], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 2, N'Businner', N'Naqi', N'Zaidi', N'naqi@gmail.com', N'Male', 2, NULL, CAST(N'2022-05-30T11:09:06.683' AS DateTime), NULL, NULL)
INSERT [dbo].[Passenger] ([PassengerId], [Passenger_Booking_Id], [Passenger_type], [Passenger_FirstName], [Passenger_LastName], [Passenger_Email], [Passenger_Gender], [MealId], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 9, N'A1', N'Punit', N'k', N'ravi@gmail.com', N'Male', 2, NULL, CAST(N'2022-05-30T18:52:32.627' AS DateTime), NULL, NULL)
INSERT [dbo].[Passenger] ([PassengerId], [Passenger_Booking_Id], [Passenger_type], [Passenger_FirstName], [Passenger_LastName], [Passenger_Email], [Passenger_Gender], [MealId], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 10, N'B', N'Naqi', N'zaidi', N'naqi11@gmail.com', N'Male', 3, NULL, CAST(N'2022-05-31T05:34:59.450' AS DateTime), NULL, NULL)
INSERT [dbo].[Passenger] ([PassengerId], [Passenger_Booking_Id], [Passenger_type], [Passenger_FirstName], [Passenger_LastName], [Passenger_Email], [Passenger_Gender], [MealId], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 11, N'A4', N'Naqi', N'A', N'naq44i@gmail.com', N'Male', 3, NULL, CAST(N'2022-05-31T08:27:01.653' AS DateTime), NULL, NULL)
INSERT [dbo].[Passenger] ([PassengerId], [Passenger_Booking_Id], [Passenger_type], [Passenger_FirstName], [Passenger_LastName], [Passenger_Email], [Passenger_Gender], [MealId], [Createdby], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 12, N'A4', N'Naqi', N'Zaidi', N'aa@gmail.com', N'Male', 2, NULL, CAST(N'2022-05-31T14:23:10.100' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Passenger] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1, N'NaqiZaidi', N'Naqi', N'Zaidi', N'Naqi@gmail.com', N'96545247815', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'Admin', NULL, NULL, NULL, 1, 1)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (6, N'Abbas1', N'Razi', N'Abbas', N'razi@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-18T07:31:00.127' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (7, N'Abbas11', N'Razi1', N'Abbas', N'razi1@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-18T07:53:57.087' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (8, N'Demo', N'Razi1', N'Abbas', N'razi1@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-18T08:03:25.607' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (9, N'De1mo', N'Razi1', N'Abbas', N'razi1@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-18T08:16:02.900' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (10, N'De1mo1', N'Razi1', N'Abbas', N'razi1@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-22T09:56:06.600' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (11, N'De1mo11', N'Razi11', N'Abba1s', N'razi112@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-23T06:23:20.683' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (12, N'De1mo1144', N'Razi11', N'Abba1s', N'razi112@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-23T12:28:03.560' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (13, N'De1moss1144', N'Razi11', N'Abba1s', N'razi112@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-24T11:59:53.127' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1002, N'ww', N'Razi11', N'Abba1s', N'razi112@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-27T09:46:55.740' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1003, N'Ravi123', N'Ravi', N'Kumar', N'ravi@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-27T16:20:43.343' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1004, N'Z', N'Zaidi', N'1', N'zaidi@gmail.com', N'09632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-28T10:29:05.500' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1005, N'AS', N'Ravi', N'Kumar', N'ravi@gmail.com', N'09632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-28T10:53:38.557' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1006, N'Uare', N'jk', N'jkj', N'jkjk@gmail.com', N'78979879', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-28T11:12:24.957' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1007, N'jkj', N'Zaidi', N'1', N'zaidi@gmail.com', N'09632587415', N'174D7C7812D8931AB819E3B9D2A049D7700A8635DA165827A4FFE7A0A9C57916', N'User', CAST(N'2022-05-28T11:12:55.070' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1008, NULL, NULL, NULL, NULL, NULL, N'', N'User', CAST(N'2022-05-29T08:57:55.877' AS DateTime), NULL, NULL, 1, 2)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FirstName], [LastName], [Email], [PhoneNumber], [Password], [CreatedBy], [CreatedOn], [UpdatedBy], [UpdatedOn], [IsActive], [UserType]) VALUES (1009, N'Neeraj', N'Razi111', N'Abba1s', N'razi112@gmail.com', N'9632587415', N'8D969EEF6ECAD3C29A3A629280E686CF0C3F5D5A86AFF3CA12020C923ADC6C92', N'User', CAST(N'2022-05-30T13:08:02.907' AS DateTime), NULL, NULL, 1, 2)
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[Booking] ADD  DEFAULT ('0') FOR [Booking_Status]
GO
/****** Object:  StoredProcedure [dbo].[GetActiveAirLine]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetActiveAirLine]
As
Begin
Select AirlineID,AirlineNumber,AirlineName,IsActive from Airline a 
where  a.IsActive = 1
End
GO
/****** Object:  StoredProcedure [dbo].[GetAirlineSchedule]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetAirlineSchedule]
As
Begin
Select distinct a.AirlineID,a.AirlineNumber,a.AirlineName,a.IsActive from Airline a 
inner join FlightSchedule fs
on a.AirlineID = fs.AirlineId
where  a.IsActive = 1
End
GO
/****** Object:  StoredProcedure [dbo].[GetAllAirLine]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetAllAirLine]
As
Begin
Select AirlineID,AirlineNumber,AirlineName,IsActive from Airline
End
GO
/****** Object:  StoredProcedure [dbo].[GetBookingHistoryByEmail]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- exec GetBookingHistoryByEmail @email=''
CREATE Proc [dbo].[GetBookingHistoryByEmail]
@email nvarchar(255)
AS
BEGIN
Select 
--ua.Email,ua.UserName,ua.PhoneNumber,
al.AirlineName, al.AirlineNumber, 
b.BookingId , b.Booking_Date, b.Booking_total_Fare, b.Booking_Journey_Date,b.Booking_Seat_type,b.Booking_Seat_Number ,b.Booking_Status,b.Booking_PNR,
p.Passenger_FirstName,p.Passenger_LastName,p.Passenger_Email,p.Passenger_Gender,p.Passenger_type, m.MealName
from Booking b
inner join Passenger p
on b.BookingId = p.Passenger_Booking_Id
--inner join UserAccount ua
--on b.Booking_User_Id = ua.Id
inner join Airline al
on b.Booking_Flight_Id = al.AirlineID
inner join Meal m
on  p.MealId = m.MealId
where p.Passenger_Email =@email 
END

GO
/****** Object:  StoredProcedure [dbo].[GetBookingTicketDetails]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Proc [dbo].[GetBookingTicketDetails]
AS
BEGIN
Select 
--ua.Email,ua.UserName,ua.PhoneNumber,
al.AirlineName, al.AirlineNumber, 
b.BookingId,b.Booking_Date, b.Booking_total_Fare, b.Booking_Journey_Date,b.Booking_Seat_type,b.Booking_Seat_Number ,b.Booking_Status,b.Booking_PNR,
p.Passenger_FirstName,p.Passenger_LastName,p.Passenger_Email,p.Passenger_Gender,p.Passenger_type, m.MealName
from Booking b
inner join Passenger p
on b.BookingId = p.Passenger_Booking_Id
--inner join UserAccount ua
--on b.Booking_User_Id = ua.Id
inner join Airline al
on b.Booking_Flight_Id = al.AirlineID
inner join Meal m
on  p.MealId = m.MealId
END

GO
/****** Object:  StoredProcedure [dbo].[GetBookingTicketDetailsByPNR]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[GetBookingTicketDetailsByPNR]
@PNR_No bigint
AS
BEGIN
Select 
--ua.Email,ua.UserName,ua.PhoneNumber,
al.AirlineName, al.AirlineNumber, 
b.Booking_Date, b.Booking_total_Fare, b.Booking_Journey_Date,b.Booking_Seat_type,b.Booking_Seat_Number ,b.Booking_Status,b.Booking_PNR,
p.Passenger_FirstName,p.Passenger_LastName,p.Passenger_Email,p.Passenger_Gender,p.Passenger_type, m.MealName
from Booking b
inner join Passenger p
on b.BookingId = p.Passenger_Booking_Id
--inner join UserAccount ua
--on b.Booking_User_Id = ua.Id
inner join Airline al
on b.Booking_Flight_Id = al.AirlineID
inner join Meal m
on  p.MealId = m.MealId
where b.Booking_PNR =@PNR_No
END

--exec GetBookingTicketDetailsByPNR @PNR_No=984579
GO
/****** Object:  StoredProcedure [dbo].[sp_SearchFlight]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--exec  [dbo].[sp_SearchFlight] @Flight='2022-05-26 09:12:17.593' , @FromPlace ='D',@ToPlace='s'
CREATE Proc [dbo].[sp_SearchFlight]
@Flight datetime,
@FromPlace varchar(255),
@ToPlace varchar(255)
As
Begin
Select al.AirlineID, al.AirlineNumber, al.AirlineName,fs.FromPlace, fs.ToPlace,fs.StartDateTime,fs.EndDateTime,fs.TicketCost,fs.BusinessClassSeats,fs.NonBusinessClassSeat from Airline as al
inner join FlightSchedule fs
on al.AirlineID = fs.AirlineId
where al.IsActive = 1 and fs.FromPlace= @FromPlace and fs.ToPlace = @ToPlace --and fs.StartDateTime = @Flight
End
GO
/****** Object:  StoredProcedure [dbo].[ValidateUser]    Script Date: 31-05-2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec ValidateUser @UserName ='NaqiZaidi' , @Password ='123456'
CREATE PROC [dbo].[ValidateUser]
(
@UserName AS varchar(50),
@Password varchar(250)
)
AS
BEGIN

	DECLARE @User_Name AS VARCHAR(100), @password_ AS VARCHAR(250)
	SET @User_Name=@UserName
	SET @password_=@password
	
	Select [Id]
	  ,Email
      ,[UserName]
      ,[FirstName]
      ,[LastName]
	  ,UserType
	from UserAccount where UserName=@User_Name and [Password]=@password_ and IsActive=1 
END

GO
