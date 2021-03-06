USE [OD]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[VariableID] [int] NOT NULL,
	[DataValue] [float] NOT NULL,
	[CategoryDescription] [nvarchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CensorCodeCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CensorCodeCV](
	[Term] [nvarchar](50) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_CensorCodeCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataTypeCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataTypeCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_DataTypeCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataValues]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataValues](
	[ValueID] [int] IDENTITY(1,1) NOT NULL,
	[DataValue] [float] NOT NULL,
	[ValueAccuracy] [float] NULL,
	[LocalDateTime] [datetime] NOT NULL,
	[UTCOffset] [float] NOT NULL,
	[DateTimeUTC] [datetime] NOT NULL,
	[SiteID] [int] NOT NULL,
	[VariableID] [int] NOT NULL,
	[OffsetValue] [float] NULL,
	[OffsetTypeID] [int] NULL,
	[CensorCode] [nvarchar](50) NOT NULL,
	[QualifierID] [int] NULL,
	[MethodID] [int] NOT NULL,
	[SourceID] [int] NOT NULL,
	[SampleID] [int] NULL,
	[DerivedFromID] [int] NULL,
	[QualityControlLevelID] [int] NOT NULL,
 CONSTRAINT [PK_DataValues_ValueID] PRIMARY KEY CLUSTERED 
(
	[ValueID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DerivedFrom]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DerivedFrom](
	[DerivedFromID] [int] NOT NULL,
	[ValueID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralCategoryCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralCategoryCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_GeneralCategoryCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupDescriptions]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupDescriptions](
	[GroupID] [int] IDENTITY(1,1) NOT NULL,
	[GroupDescription] [nvarchar](max) NULL,
 CONSTRAINT [PK_GroupDescriptions_GroupID] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GroupID] [int] NOT NULL,
	[ValueID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ISOMetadata]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ISOMetadata](
	[MetadataID] [int] IDENTITY(1,1) NOT NULL,
	[TopicCategory] [nvarchar](255) NOT NULL,
	[Title] [nvarchar](255) NOT NULL,
	[Abstract] [nvarchar](max) NOT NULL,
	[ProfileVersion] [nvarchar](255) NOT NULL,
	[MetadataLink] [nvarchar](500) NULL,
 CONSTRAINT [PK_ISOMetadata_MetadataID] PRIMARY KEY CLUSTERED 
(
	[MetadataID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LabMethods]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LabMethods](
	[LabMethodID] [int] IDENTITY(1,1) NOT NULL,
	[LabName] [nvarchar](255) NOT NULL,
	[LabOrganization] [nvarchar](255) NOT NULL,
	[LabMethodName] [nvarchar](255) NOT NULL,
	[LabMethodDescription] [nvarchar](max) NOT NULL,
	[LabMethodLink] [nvarchar](500) NULL,
 CONSTRAINT [PK_LabMethods_LabMethodID] PRIMARY KEY CLUSTERED 
(
	[LabMethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Methods]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Methods](
	[MethodID] [int] IDENTITY(1,1) NOT NULL,
	[MethodDescription] [nvarchar](max) NOT NULL,
	[MethodLink] [nvarchar](500) NULL,
	[MethodCode] [nvarchar](255),
 CONSTRAINT [PK_Methods_MethodID] PRIMARY KEY CLUSTERED 
(
	[MethodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ODMVersion]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ODMVersion](
	[VersionNumber] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OffsetTypes]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OffsetTypes](
	[OffsetTypeID] [int] IDENTITY(1,1) NOT NULL,
	[OffsetUnitsID] [int] NOT NULL,
	[OffsetDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_OffsetTypes_OffsetTypeID] PRIMARY KEY CLUSTERED 
(
	[OffsetTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Qualifiers]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualifiers](
	[QualifierID] [int] IDENTITY(1,1) NOT NULL,
	[QualifierCode] [nvarchar](50) NULL,
	[QualifierDescription] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Qualifiers_QualifierID] PRIMARY KEY CLUSTERED 
(
	[QualifierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QualityControlLevels]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QualityControlLevels](
	[QualityControlLevelID] [int] IDENTITY(1,1) NOT NULL,
	[QualityControlLevelCode] [nvarchar](50) NOT NULL,
	[Definition] [nvarchar](255) NOT NULL,
	[Explanation] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_QualityControlLevels_QualityControlLevelID] PRIMARY KEY CLUSTERED 
(
	[QualityControlLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SampleMediumCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleMediumCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_SampleMediumCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Samples]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Samples](
	[SampleID] [int] IDENTITY(1,1) NOT NULL,
	[SampleType] [nvarchar](255) NOT NULL,
	[LabSampleCode] [nvarchar](50) NOT NULL,
	[LabMethodID] [int] NOT NULL,
 CONSTRAINT [PK_Samples_SampleID] PRIMARY KEY CLUSTERED 
(
	[SampleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SampleTypeCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SampleTypeCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_SampleTypeCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SeriesCatalog]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SeriesCatalog](
	[SeriesID] [int] IDENTITY(1,1) NOT NULL,
	[SiteID] [int] NULL,
	[SiteCode] [nvarchar](50) NULL,
	[SiteName] [nvarchar](255) NULL,
	[SiteType] [nvarchar](255) NULL,
	[VariableID] [int] NULL,
	[VariableCode] [nvarchar](50) NULL,
	[VariableName] [nvarchar](255) NULL,
	[Speciation] [nvarchar](255) NULL,
	[VariableUnitsID] [int] NULL,
	[VariableUnitsName] [nvarchar](255) NULL,
	[SampleMedium] [nvarchar](255) NULL,
	[ValueType] [nvarchar](255) NULL,
	[TimeSupport] [float] NULL,
	[TimeUnitsID] [int] NULL,
	[TimeUnitsName] [nvarchar](255) NULL,
	[DataType] [nvarchar](255) NULL,
	[GeneralCategory] [nvarchar](255) NULL,
	[MethodID] [int] NULL,
	[MethodDescription] [nvarchar](max) NULL,
	[SourceID] [int] NULL,
	[Organization] [nvarchar](255) NULL,
	[SourceDescription] [nvarchar](max) NULL,
	[Citation] [nvarchar](max) NULL,
	[QualityControlLevelID] [int] NULL,
	[QualityControlLevelCode] [nvarchar](50) NULL,
	[BeginDateTime] [datetime] NULL,
	[EndDateTime] [datetime] NULL,
	[BeginDateTimeUTC] [datetime] NULL,
	[EndDateTimeUTC] [datetime] NULL,
	[ValueCount] [int] NULL,
 CONSTRAINT [PK_SeriesCatalog_SeriesID] PRIMARY KEY CLUSTERED 
(
	[SeriesID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sites]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sites](
	[SiteID] [int] IDENTITY(1,1) NOT NULL,
	[SiteCode] [nvarchar](50) NOT NULL,
	[SiteName] [nvarchar](255) NOT NULL,
	[Latitude] [float] NOT NULL,
	[Longitude] [float] NOT NULL,
	[LatLongDatumID] [int] NOT NULL,
	[Elevation_m] [float] NULL,
	[VerticalDatum] [nvarchar](255) NULL,
	[LocalX] [float] NULL,
	[LocalY] [float] NULL,
	[LocalProjectionID] [int] NULL,
	[PosAccuracy_m] [float] NULL,
	[State] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[Comments] [nvarchar](max) NULL,
	[SiteType] [nvarchar](255) NULL,
 CONSTRAINT [PK_Sites_SiteID] PRIMARY KEY CLUSTERED 
(
	[SiteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiteTypeCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiteTypeCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_SiteTypeCV] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sources]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sources](
	[SourceID] [int] IDENTITY(1,1) NOT NULL,
	[Organization] [nvarchar](255) NOT NULL,
	[SourceDescription] [nvarchar](max) NOT NULL,
	[SourceLink] [nvarchar](500) NULL,
	[ContactName] [nvarchar](255) NOT NULL,
	[Phone] [nvarchar](255) NOT NULL,
	[Email] [nvarchar](255) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[City] [nvarchar](255) NOT NULL,
	[State] [nvarchar](255) NOT NULL,
	[ZipCode] [nvarchar](255) NOT NULL,
	[Citation] [nvarchar](max) NOT NULL,
	[MetadataID] [int] NOT NULL,
	[SourceCode] [nvarchar](255),
 CONSTRAINT [PK_Sources_SourceID] PRIMARY KEY CLUSTERED 
(
	[SourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpatialReferences]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpatialReferences](
	[SpatialReferenceID] [int] IDENTITY(1,1) NOT NULL,
	[SRSID] [int] NULL,
	[SRSName] [nvarchar](255) NOT NULL,
	[IsGeographic] [bit] NULL,
	[Notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_SpatialReferences_SpatialReferenceID] PRIMARY KEY CLUSTERED 
(
	[SpatialReferenceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SpeciationCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SpeciationCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_SpeciationCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopicCategoryCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopicCategoryCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_TopicCategoryCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Units]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Units](
	[UnitsID] [int] IDENTITY(1,1) NOT NULL,
	[UnitsName] [nvarchar](255) NOT NULL,
	[UnitsType] [nvarchar](255) NOT NULL,
	[UnitsAbbreviation] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_Units_UnitsID] PRIMARY KEY CLUSTERED 
(
	[UnitsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValueTypeCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValueTypeCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_ValueTypeCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VariableNameCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VariableNameCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_VariableNameCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Variables]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Variables](
	[VariableID] [int] IDENTITY(1,1) NOT NULL,
	[VariableCode] [nvarchar](50) NOT NULL,
	[VariableName] [nvarchar](255) NOT NULL,
	[Speciation] [nvarchar](255) NOT NULL,
	[VariableUnitsID] [int] NOT NULL,
	[SampleMedium] [nvarchar](255) NOT NULL,
	[ValueType] [nvarchar](255) NOT NULL,
	[IsRegular] [bit] NOT NULL,
	[TimeSupport] [float] NOT NULL,
	[TimeUnitsID] [int] NOT NULL,
	[DataType] [nvarchar](255) NOT NULL,
	[GeneralCategory] [nvarchar](255) NOT NULL,
	[NoDataValue] [float] NOT NULL,
 CONSTRAINT [PK_Variables_VariableID] PRIMARY KEY CLUSTERED 
(
	[VariableID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VerticalDatumCV]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VerticalDatumCV](
	[Term] [nvarchar](255) NOT NULL,
	[Definition] [nvarchar](max) NULL,
 CONSTRAINT [PK_VerticalDatumCV_Term] PRIMARY KEY CLUSTERED 
(
	[Term] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CensorCodeCV] ([Term], [Definition]) VALUES (N'gt', N'greater than')
INSERT [dbo].[CensorCodeCV] ([Term], [Definition]) VALUES (N'lt', N'less than')
INSERT [dbo].[CensorCodeCV] ([Term], [Definition]) VALUES (N'nc', N'not censored')
INSERT [dbo].[CensorCodeCV] ([Term], [Definition]) VALUES (N'nd', N'non-detect')
INSERT [dbo].[CensorCodeCV] ([Term], [Definition]) VALUES (N'pnq', N'present but not quantified')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Average', N'The values represent the average over a time interval, such as daily mean discharge or daily mean temperature.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Best Easy Systematic Estimator', N'Best Easy Systematic Estimator BES = (Q1 +2Q2 +Q3)/4.  Q1, Q2, and Q3 are first, second, and third quartiles. See Woodcock, F. and Engel, C., 2005: Operational Consensus Forecasts.Weather and Forecasting, 20, 101-111. (http://www.bom.gov.au/nmoc/bulletins/60/article_by_Woodcock_in_Weather_and_Forecasting.pdf) and Wonnacott, T. H., and R. J. Wonnacott, 1972: Introductory Statistics. Wiley, 510 pp.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Categorical', N'The values are categorical rather than continuous valued quantities. Mapping from Value values to categories is through the CategoryDefinitions table.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Constant Over Interval', N'The values are quantities that can be interpreted as constant for all time, or over the time interval to a subsequent measurement of the same variable at the same site.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Continuous', N'A quantity specified at a particular instant in time measured with sufficient frequency (small spacing) to be interpreted as a continuous record of the phenomenon.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Cumulative', N'The values represent the cumulative value of a variable measured or calculated up to a given instant of time, such as cumulative volume of flow or cumulative precipitation.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Incremental', N'The values represent the incremental value of a variable over a time interval, such as the incremental volume of flow or incremental precipitation.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Maximum', N'The values are the maximum values occurring at some time during a time interval, such as annual maximum discharge or a daily maximum air temperature.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Median', N'The values represent the median over a time interval, such as daily median discharge or daily median temperature.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Minimum', N'The values are the minimum values occurring at some time during a time interval, such as 7-day low flow for a year or the daily minimum temperature.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Mode', N'The values are the most frequent values occurring at some time during a time interval, such as annual most frequent wind direction.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Sporadic', N'The phenomenon is sampled at a particular instant in time but with a frequency that is too coarse for interpreting the record as continuous.  This would be the case when the spacing is significantly larger than the support and the time scale of fluctuation of the phenomenon, such as for example infrequent water quality samples.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'StandardDeviation', N'The values represent the standard deviation of a set of observations made over a time interval. Standard deviation computed using the unbiased formula SQRT(SUM((Xi-mean)^2)/(n-1)) are preferred. The specific formula used to compute variance can be noted in the methods description.')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Unknown', N'The data type is unknown')
INSERT [dbo].[DataTypeCV] ([Term], [Definition]) VALUES (N'Variance', N'The values represent the variance of a set of observations made over a time interval.  Variance computed using the unbiased formula SUM((Xi-mean)^2)/(n-1) are preferred.  The specific formula used to compute variance can be noted in the methods description.')
INSERT [dbo].[GeneralCategoryCV] ([Term], [Definition]) VALUES (N'Biota', N'Data associated with biological organisms')
INSERT [dbo].[GeneralCategoryCV] ([Term], [Definition]) VALUES (N'Climate', N'Data associated with the climate, weather, or atmospheric processes')
INSERT [dbo].[GeneralCategoryCV] ([Term], [Definition]) VALUES (N'Geology', N'Data associated with geology or geological processes')
INSERT [dbo].[GeneralCategoryCV] ([Term], [Definition]) VALUES (N'Hydrology', N'Data associated with hydrologic variables or processes')
INSERT [dbo].[GeneralCategoryCV] ([Term], [Definition]) VALUES (N'Instrumentation', N'Data associated with instrumentation and instrument properties such as battery voltages, data logger temperatures, often useful for diagnosis.')
INSERT [dbo].[GeneralCategoryCV] ([Term], [Definition]) VALUES (N'Unknown', N'The general category is unknown')
INSERT [dbo].[GeneralCategoryCV] ([Term], [Definition]) VALUES (N'Water Quality', N'Data associated with water quality variables or processes')
SET IDENTITY_INSERT [dbo].[ISOMetadata] ON 

INSERT [dbo].[ISOMetadata] ([MetadataID], [TopicCategory], [Title], [Abstract], [ProfileVersion], [MetadataLink]) VALUES (0, N'Unknown', N'Unknown', N'Unknown', N'Unknown', NULL)
SET IDENTITY_INSERT [dbo].[ISOMetadata] OFF
SET IDENTITY_INSERT [dbo].[LabMethods] ON 

INSERT [dbo].[LabMethods] ([LabMethodID], [LabName], [LabOrganization], [LabMethodName], [LabMethodDescription], [LabMethodLink]) VALUES (0, N'Unknown', N'Unknown', N'Unknown', N'Unknown', NULL)
SET IDENTITY_INSERT [dbo].[LabMethods] OFF
SET IDENTITY_INSERT [dbo].[Methods] ON 

INSERT [dbo].[Methods] ([MethodID], [MethodDescription], [MethodLink]) VALUES (0, N'No method specified', NULL)
SET IDENTITY_INSERT [dbo].[Methods] OFF
INSERT [dbo].[ODMVersion] ([VersionNumber]) VALUES (N'1.1.1')
SET IDENTITY_INSERT [dbo].[QualityControlLevels] ON 

INSERT [dbo].[QualityControlLevels] ([QualityControlLevelID], [QualityControlLevelCode], [Definition], [Explanation]) VALUES (-9999, N'-9999', N'Unknown', N'The quality control level is unknown')
INSERT [dbo].[QualityControlLevels] ([QualityControlLevelID], [QualityControlLevelCode], [Definition], [Explanation]) VALUES (0, N'0', N'Raw data', N'Raw and unprocessed data and data products that have not undergone quality control.  Depending on the variable, data type, and data transmission system, raw data may be available within seconds or minutes after the measurements have been made. Examples include real time precipitation, streamflow and water quality measurements.')
INSERT [dbo].[QualityControlLevels] ([QualityControlLevelID], [QualityControlLevelCode], [Definition], [Explanation]) VALUES (1, N'1', N'Quality controlled data', N'Quality controlled data that have passed quality assurance procedures such as routine estimation of timing and sensor calibration or visual inspection and removal of obvious errors. An example is USGS published streamflow records following parsing through USGS quality control procedures.')
INSERT [dbo].[QualityControlLevels] ([QualityControlLevelID], [QualityControlLevelCode], [Definition], [Explanation]) VALUES (2, N'2', N'Derived products', N'Derived products that require scientific and technical interpretation and may include multiple-sensor data. An example is basin average precipitation derived from rain gages using an interpolation procedure.')
INSERT [dbo].[QualityControlLevels] ([QualityControlLevelID], [QualityControlLevelCode], [Definition], [Explanation]) VALUES (3, N'3', N'Interpreted products', N'Interpreted products that require researcher driven analysis and interpretation, model-based interpretation using other data and/or strong prior assumptions. An example is basin average precipitation derived from the combination of rain gages and radar return data.')
INSERT [dbo].[QualityControlLevels] ([QualityControlLevelID], [QualityControlLevelCode], [Definition], [Explanation]) VALUES (4, N'4', N'Knowledge products', N'Knowledge products that require researcher driven scientific interpretation and multidisciplinary data integration and include model-based interpretation using other data and/or strong prior assumptions. An example is percentages of old or new water in a hydrograph inferred from an isotope analysis.')
SET IDENTITY_INSERT [dbo].[QualityControlLevels] OFF
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Air', N'Sample taken from the atmosphere')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Flowback water', N'A mixture of formation water and hydraulic fracturing injectates deriving from oil and gas wells prior to placing wells into production')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Groundwater', N'Sample taken from water located below the surface of the ground, such as from a well or spring')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Municipal waste water', N'Sample taken from raw municipal waste water stream.')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Not Relevant', N'Sample medium not relevant in the context of the measurement')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Other', N'Sample medium other than those contained in the CV')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Precipitation', N'Sample taken from solid or liquid precipitation')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Production water', N'Fluids produced from wells during oil or gas production which may include formation water, injected fluids, oil and gas.')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Sediment', N'Sample taken from the sediment beneath the water column')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Snow', N'Observation in, of or sample taken from snow')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Soil', N'Sample taken from the soil')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Soil air', N'Air contained in the soil pores')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Soil water', N'the water contained in the soil pores')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Surface Water', N'Observation or sample of surface water such as a stream, river, lake, pond, reservoir, ocean, etc.')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Tissue', N'Sample taken from the tissue of a biological organism')
INSERT [dbo].[SampleMediumCV] ([Term], [Definition]) VALUES (N'Unknown', N'The sample medium is unknown')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'Automated', N'Sample collected using an automated sampler')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'FD ', N' Foliage Digestion')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'FF ', N' Forest Floor Digestion')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'FL ', N' Foliage Leaching')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'Grab', N'Grab sample')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'GW ', N' Groundwater')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'LF ', N' Litter Fall Digestion')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'meteorological', N'sample type can include a number of measured sample types including temperature, RH, solar radiation, precipitation, wind speed, wind direction.')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'No Sample', N'There is no lab sample associated with this measurement')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'PB  ', N' Precipitation Bulk')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'PD ', N' Petri Dish (Dry Deposition)')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'PE ', N' Precipitation Event')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'PI ', N' Precipitation Increment')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'PW ', N' Precipitation Weekly')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'RE ', N' Rock Extraction')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'SE ', N' Stemflow Event')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'SR ', N' Standard Reference')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'SS ', N'Streamwater Suspended Sediment')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'SW ', N' Streamwater')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'TE ', N' Throughfall Event')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'TI ', N' Throughfall Increment')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'TW ', N' Throughfall Weekly')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'Unknown', N'The sample type is unknown')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'VE ', N' Vadose Water Event')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'VI ', N' Vadose Water Increment')
INSERT [dbo].[SampleTypeCV] ([Term], [Definition]) VALUES (N'VW ', N' Vadose Water Weekly')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Aggregate groundwater use', N'An Aggregate Groundwater Withdrawal/Return site represents an aggregate of specific sites whe groundwater is withdrawn or returned which is defined by a geographic area or some other common characteristic. An aggregate groundwatergroundwater site type is used when it is not possible or practical to describe the specific sites as springs or as any type of well including ''multiple wells'', or when water-use information is only available for the aggregate. Aggregate sites that span multiple counties should be coded with 000 as the county code, or an aggregate site can be created for each county.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Aggregate surface-water-use', N'An Aggregate Surface-Water Diversion/Return site represents an aggregate of specific sites where surface water is diverted or returned which is defined by a geographic area or some other common characteristic. An aggregate surface-water site type is used when it is not possible or practical to describe the specific sites as diversions, outfalls, or land application sites, or when water-use information is only available for the aggregate. Aggregate sites that span multiple counties should be coded with 000 as the county code, or an aggregate site can be created for each county.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Aggregate water-use establishment', N'An Aggregate Water-Use Establishment represents an aggregate class of water-using establishments or individuals that are associated with a specific geographic location and water-use category, such as all the industrial users located within a county or all self-supplied domestic users in a county. The aggregate class of water-using establishments is identified using the national water-use category code and optionally classified using the Standard Industrial Classification System Code (SIC code) or North American Classification System Code (NAICS code). An aggregate water-use establishment site type is used when specific information needed to create sites for the individual facilities or users is not available or when it is not desirable to store the site-specific information in the database. Data entry rules that apply to water-use establishments also apply to aggregate water-use establishments. Aggregate sites that span multiple counties should be coded with 000 as the county code, or an aggregate site can be created for each county.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Animal waste lagoon', N'A facility for storage and/or biological treatment of wastes from livestock operations. Animal-waste lagoons are earthen structures ranging from pits to large ponds, and contain manure which has been diluted with building washwater, rainfall, and surface runoff. In treatment lagoons, the waste becomes partially liquefied and stabilized by bacterial action before the waste is disposed of on the land and the water is discharged or re-used.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Atmosphere', N'A site established primarily to measure meteorological properties or atmospheric deposition.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Canal', N'An artificial watercourse designed for navigation, drainage, or irrigation by connecting two or more bodies of water; it is larger than a ditch.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Cave', N'A natural open space within a rock formation large enough to accommodate a human. A cave may have an opening to the outside, is always underground, and sometimes submerged. Caves commonly occur by the dissolution of soluble rocks, generally limestone, but may also be created within the voids of large-rock aggregations, in openings along seismic faults, and in lava formations.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Cistern', N'An artificial, non-pressurized reservoir filled by gravity flow and used for water storage. The reservoir may be located above, at, or below ground level. The water may be supplied from diversion of precipitation, surface, or groundwater sources.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Coastal', N'An oceanic site that is located off-shore beyond the tidal mixing zone (estuary) but close enough to the shore that the investigator considers the presence of the coast to be important. Coastal sites typically are within three nautical miles of the shore.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Collector or Ranney type well', N'An infiltration gallery consisting of one or more underground laterals through which groundwater is collected and a vertical caisson from which groundwater is removed. Also known as a "horizontal well". These wells produce large yield with small drawdown.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Combined sewer', N'An underground conduit created to convey storm drainage and waste products into a wastewater-treatment plant, stream, reservoir, or disposal site.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Ditch', N'An excavation artificially dug in the ground, either lined or unlined, for conveying water for drainage or irrigation; it is smaller than a canal.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Diversion', N'A site where water is withdrawn or diverted from a surface-water body (e.g. the point where the upstream end of a canal intersects a stream, or point where water is withdrawn from a reservoir). Includes sites where water is pumped for use elsewhere.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Estuary', N'A coastal inlet of the sea or ocean; esp. the mouth of a river, where tide water normally mixes with stream water (modified, Webster). Salinity in estuaries typically ranges from 1 to 25 Practical Salinity Units (psu), as compared oceanic values around 35-psu. See also: tidal stream and coastal.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Excavation', N'An artificially constructed cavity in the earth that is deeper than the soil (see soil hole), larger than a well bore (see well and test hole), and substantially open to the atmosphere. The diameter of an excavation is typically similar or larger than the depth. Excavations include building-foundation diggings, roadway cuts, and surface mines.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Extensometer well', N'A well equipped to measure small changes in the thickness of the penetrated sediments, such as those caused by groundwater withdrawal or recharge.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Facility', N'A non-ambient location where environmental measurements are expected to be strongly influenced by current or previous activities of humans. *Sites identified with a "facility" primary site type must be further classified with one of the applicable secondary site types.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Field, Pasture, Orchard, or Nursery', N'A water-using facility characterized by an area where plants are grown for transplanting, for use as stocks for budding and grafting, or for sale. Irrigation water may or may not be applied.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Glacier', N'Body of land ice that consists of recrystallized snow accumulated on the surface of the ground and moves slowly downslope (WSP-1541A) over a period of years or centuries. Since glacial sites move, the lat-long precision for these sites is usually coarse.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Golf course', N'A place-of-use, either public or private, where the game of golf is played. A golf course typically uses water for irrigation purposes. Should not be used if the site is a specific hydrologic feature or facility; but can be used especially for the water-use sites.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Groundwater drain', N'An underground pipe or tunnel through which groundwater is artificially diverted to surface water for the purpose of reducing erosion or lowering the water table. A drain is typically open to the atmosphere at the lowest elevation, in contrast to a well which is open at the highest point.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Hydroelectric plant', N'A facility that generates electric power by converting potential energy of water into kinetic energy. Typically, turbine generators are turned by falling water.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Hyporheic-zone well', N'A permanent well, drive point, or other device intended to sample a saturated zone in close proximity to a stream.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Interconnected wells', N'Collector or drainage wells connected by an underground lateral.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Laboratory or sample-preparation area', N'A site where some types of quality-control samples are collected, and where equipment and supplies for environmental sampling are prepared. Equipment blank samples are commonly collected at this site type, as are samples of locally produced deionized water. This site type is typically used when the data are either not associated with a unique environmental data-collection site, or where blank water supplies are designated by Center offices with unique station IDs.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Lake, Reservoir, Impoundment', N'An inland body of standing fresh or saline water that is generally too deep to permit submerged aquatic vegetation to take root across the entire body (cf: wetland). This site type includes an expanded part of a river, a reservoir behind a dam, and a natural or excavated depression containing a water body without surface-water inlet and/or outlet.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Land', N'A location on the surface of the earth that is not normally saturated with water. Land sites are appropriate for sampling vegetation, overland flow of water, or measuring land-surface properties such as temperature. (See also: Wetland).')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Landfill', N'A typically dry location on the surface of the land where primarily solid waste products are currently, or previously have been, aggregated and sometimes covered with a veneer of soil. See also: Wastewater disposal and waste-injection well.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Multiple wells', N'A group of wells that are pumped through a single header and for which little or no data about the individual wells are available.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Ocean', N'Site in the open ocean, gulf, or sea. (See also: Coastal, Estuary, and Tidal stream).')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Outcrop', N'The part of a rock formation that appears at the surface of the surrounding land.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Outfall', N'A site where water or wastewater is returned to a surface-water body, e.g. the point where wastewater is returned to a stream. Typically, the discharge end of an effluent pipe.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Pavement', N'A surface site where the land surface is covered by a relatively impermeable material, such as concrete or asphalt. Pavement sites are typically part of transportation infrastructure, such as roadways, parking lots, or runways.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Playa', N'A dried-up, vegetation-free, flat-floored area composed of thin, evenly stratified sheets of fine clay, silt or sand, and represents the bottom part of a shallow, completely closed or undrained desert lake basin in which water accumulates and is quickly evaporated, usually leaving deposits of soluble salts.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Septic system', N'A site within or in close proximity to a subsurface sewage disposal system that generally consists of: (1) a septic tank where settling of solid material occurs, (2) a distribution system that transfers fluid from the tank to (3) a leaching system that disperses the effluent into the ground.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Shore', N'The land along the edge of the sea, a lake, or a wide river where the investigator considers the proximity of the water body to be important. Land adjacent to a reservoir, lake, impoundment, or oceanic site type is considered part of the shore when it includes a beach or bank between the high and low water marks.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Sinkhole', N'A crater formed when the roof of a cavern collapses; usually found in limestone areas. Surface water and precipitation that enters a sinkhole usually evaporates or infiltrates into the ground, rather than draining into a stream.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Soil hole', N'A small excavation into soil at the top few meters of earth surface. Soil generally includes some organic matter derived from plants. Soil holes are created to measure soil composition and properties. Sometimes electronic probes are inserted into soil holes to measure physical properties, and (or) the extracted soil is analyzed.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Spring', N'A location at which the water table intersects the land surface, resulting in a natural flow of groundwater to the surface. Springs may be perennial, intermittent, or ephemeral.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Storm sewer', N'An underground conduit created to convey storm drainage into a stream channel or reservoir. If the sewer also conveys liquid waste products, then the "combined sewer" secondary site type should be used.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Stream', N'A body of running water moving under gravity flow in a defined channel. The channel may be entirely natural, or altered by engineering practices through straightening, dredging, and (or) lining. An entirely artificial channel should be qualified with the "canal" or "ditch" secondary site type.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Subsurface', N'A location below the land surface, but not a well, soil hole, or excavation.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Test hole not completed as a well', N'An uncased hole (or one cased only temporarily) that was drilled for water, or for geologic or hydrogeologic testing. It may be equipped temporarily with a pump in order to make a pumping test, but if the hole is destroyed after testing is completed, it is still a test hole. A core hole drilled as a part of mining or quarrying exploration work should be in this class.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Thermoelectric plant', N'A facility that uses water in the generation of electricity from heat. Typically turbine generators are driven by steam. The heat may be caused by various means, including combustion, nuclear reactions, and geothermal processes.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Tidal stream', N'A stream reach where the flow is influenced by the tide, but where the water chemistry is not normally influenced. A site where ocean water typically mixes with stream water should be coded as an estuary.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Tunnel, shaft, or mine', N'A constructed subsurface open space large enough to accommodate a human that is not substantially open to the atmosphere and is not a well. The excavation may have been for minerals, transportation, or other purposes. See also: Excavation.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Unsaturated zone', N'A site equipped to measure conditions in the subsurface deeper than a soil hole, but above the water table or other zone of saturation.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Volcanic vent', N'Vent from which volcanic gases escape to the atmosphere. Also known as fumarole.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Waste injection well', N'A facility used to convey industrial waste, domestic sewage, brine, mine drainage, radioactive waste, or other fluid into an underground zone. An oil-test or deep-water well converted to waste disposal should be in this category. A well where fresh water is injected to artificially recharge thegroundwaterr supply or to pressurize an oil or gas production zone by injecting a fluid should be classified as a well (not an injection-well facility), with additional information recorded under Use of Site.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Wastewater land application', N'A site where the disposal of waste water on land occurs. Use "waste-injection well" for underground waste-disposal sites.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Wastewater sewer', N'An underground conduit created to convey liquid and semisolid domestic, commercial, or industrial waste into a treatment plant, stream, reservoir, or disposal site. If the sewer also conveys storm water, then the "combined sewer" secondary site type should be used.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Wastewater-treatment plant', N'A facility where wastewater is treated to reduce concentrations of dissolved and (or) suspended materials prior to discharge or reuse.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Water-distribution system', N'A site located somewhere on a networked infrastructure that distributes treated or untreated water to multiple domestic, industrial, institutional, and (or) commercial users. May be owned by a municipality or community, a water district, or a private concern.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Water-supply treatment plant', N'A facility where water is treated prior to use for consumption or other purpose.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Water-use establishment', N'A place-of-use (a water using facility that is associated with a specific geographical point location, such as a business or industrial user) that cannot be specified with any other facility secondary type. Water-use place-of-use sites are establishments such as a factory, mill, store, warehouse, farm, ranch, or bank. A place-of-use site is further classified using the national water-use category code (C39) and optionally classified using the Standard Industrial Classification System Code (SIC code) or North American Classification System Code (NAICS code). See also: Aggregate water-use-establishment.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Well', N'A hole or shaft constructed in the earth intended to be used to locate, sample, or develop groundwater, oil, gas, or some other subsurface material. The diameter of a well is typically much smaller than the depth. Wells are also used to artificially recharge groundwater or to pressurize oil and gas production zones. Additional information about specific kinds of wells should be recorded under the secondary site types or the Use of Site field. Underground waste-disposal wells should be classified as waste-injection wells.')
INSERT [dbo].[SiteTypeCV] ([Term], [Definition]) VALUES (N'Wetland', N'Land where saturation with water is the dominant factor determining the nature of soil development and the types of plant and animal communities living in the soil and on its surface (Cowardin, December 1979). Wetlands are found from the tundra to the tropics and on every continent except Antarctica. Wetlands are areas that are inundated or saturated by surface or groundwater at a frequency and duration sufficient to support, and that under normal circumstances do support, a prevalence of vegetation typically adapted for life in saturated soil conditions. Wetlands generally include swamps, marshes, bogs and similar areas. Wetlands may be forested or unforested, and naturally or artificially created.')
SET IDENTITY_INSERT [dbo].[SpatialReferences] ON 

INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (0, NULL, N'Unknown', 0, N'The spatial reference system is unknown')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (1, 4267, N'NAD27', 1, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (2, 4269, N'NAD83', 1, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (3, 4326, N'WGS84', 1, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (4, 26703, N'NAD27 / UTM zone 3N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (5, 26704, N'NAD27 / UTM zone 4N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (6, 26705, N'NAD27 / UTM zone 5N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (7, 26706, N'NAD27 / UTM zone 6N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (8, 26707, N'NAD27 / UTM zone 7N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (9, 26708, N'NAD27 / UTM zone 8N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (10, 26709, N'NAD27 / UTM zone 9N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (11, 26710, N'NAD27 / UTM zone 10N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (12, 26711, N'NAD27 / UTM zone 11N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (13, 26712, N'NAD27 / UTM zone 12N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (14, 26713, N'NAD27 / UTM zone 13N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (15, 26714, N'NAD27 / UTM zone 14N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (16, 26715, N'NAD27 / UTM zone 15N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (17, 26716, N'NAD27 / UTM zone 16N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (18, 26717, N'NAD27 / UTM zone 17N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (19, 26718, N'NAD27 / UTM zone 18N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (20, 26719, N'NAD27 / UTM zone 19N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (21, 26720, N'NAD27 / UTM zone 20N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (22, 26721, N'NAD27 / UTM zone 21N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (23, 26722, N'NAD27 / UTM zone 22N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (24, 26729, N'NAD27 / Alabama East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (25, 26730, N'NAD27 / Alabama West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (26, 26732, N'NAD27 / Alaska zone 2', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (27, 26733, N'NAD27 / Alaska zone 3', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (28, 26734, N'NAD27 / Alaska zone 4', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (29, 26735, N'NAD27 / Alaska zone 5', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (30, 26736, N'NAD27 / Alaska zone 6', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (31, 26737, N'NAD27 / Alaska zone 7', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (32, 26738, N'NAD27 / Alaska zone 8', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (33, 26739, N'NAD27 / Alaska zone 9', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (34, 26740, N'NAD27 / Alaska zone 10', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (35, 26741, N'NAD27 / California zone I', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (36, 26742, N'NAD27 / California zone II', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (37, 26743, N'NAD27 / California zone III', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (38, 26744, N'NAD27 / California zone IV', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (39, 26745, N'NAD27 / California zone V', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (40, 26746, N'NAD27 / California zone VI', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (41, 26747, N'NAD27 / California zone VII', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (42, 26748, N'NAD27 / Arizona East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (43, 26749, N'NAD27 / Arizona Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (44, 26750, N'NAD27 / Arizona West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (45, 26751, N'NAD27 / Arkansas North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (46, 26752, N'NAD27 / Arkansas South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (47, 26753, N'NAD27 / Colorado North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (48, 26754, N'NAD27 / Colorado Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (49, 26755, N'NAD27 / Colorado South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (50, 26756, N'NAD27 / Connecticut', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (51, 26757, N'NAD27 / Delaware', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (52, 26758, N'NAD27 / Florida East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (53, 26759, N'NAD27 / Florida West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (54, 26760, N'NAD27 / Florida North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (55, 26761, N'NAD27 / Hawaii zone 1', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (56, 26762, N'NAD27 / Hawaii zone 2', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (57, 26763, N'NAD27 / Hawaii zone 3', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (58, 26764, N'NAD27 / Hawaii zone 4', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (59, 26765, N'NAD27 / Hawaii zone 5', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (60, 26766, N'NAD27 / Georgia East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (61, 26767, N'NAD27 / Georgia West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (62, 26768, N'NAD27 / Idaho East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (63, 26769, N'NAD27 / Idaho Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (64, 26770, N'NAD27 / Idaho West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (65, 26771, N'NAD27 / Illinois East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (66, 26772, N'NAD27 / Illinois West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (67, 26773, N'NAD27 / Indiana East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (68, 26774, N'NAD27 / Indiana West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (69, 26775, N'NAD27 / Iowa North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (70, 26776, N'NAD27 / Iowa South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (71, 26777, N'NAD27 / Kansas North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (72, 26778, N'NAD27 / Kansas South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (73, 26779, N'NAD27 / Kentucky North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (74, 26780, N'NAD27 / Kentucky South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (75, 26781, N'NAD27 / Louisiana North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (76, 26782, N'NAD27 / Louisiana South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (77, 26783, N'NAD27 / Maine East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (78, 26784, N'NAD27 / Maine West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (79, 26785, N'NAD27 / Maryland', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (80, 26786, N'NAD27 / Massachusetts Mainland', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (81, 26787, N'NAD27 / Massachusetts Island', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (82, 26791, N'NAD27 / Minnesota North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (83, 26792, N'NAD27 / Minnesota Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (84, 26793, N'NAD27 / Minnesota South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (85, 26794, N'NAD27 / Mississippi East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (86, 26795, N'NAD27 / Mississippi West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (87, 26796, N'NAD27 / Missouri East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (88, 26797, N'NAD27 / Missouri Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (89, 26798, N'NAD27 / Missouri West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (90, 26801, N'NAD Michigan / Michigan East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (91, 26802, N'NAD Michigan / Michigan Old Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (92, 26803, N'NAD Michigan / Michigan West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (93, 26811, N'NAD Michigan / Michigan North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (94, 26812, N'NAD Michigan / Michigan Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (95, 26813, N'NAD Michigan / Michigan South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (96, 26903, N'NAD83 / UTM zone 3N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (97, 26904, N'NAD83 / UTM zone 4N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (98, 26905, N'NAD83 / UTM zone 5N', 0, NULL)
GO
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (99, 26906, N'NAD83 / UTM zone 6N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (100, 26907, N'NAD83 / UTM zone 7N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (101, 26908, N'NAD83 / UTM zone 8N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (102, 26909, N'NAD83 / UTM zone 9N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (103, 26910, N'NAD83 / UTM zone 10N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (104, 26911, N'NAD83 / UTM zone 11N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (105, 26912, N'NAD83 / UTM zone 12N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (106, 26913, N'NAD83 / UTM zone 13N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (107, 26914, N'NAD83 / UTM zone 14N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (108, 26915, N'NAD83 / UTM zone 15N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (109, 26916, N'NAD83 / UTM zone 16N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (110, 26917, N'NAD83 / UTM zone 17N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (111, 26918, N'NAD83 / UTM zone 18N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (112, 26919, N'NAD83 / UTM zone 19N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (113, 26920, N'NAD83 / UTM zone 20N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (114, 26921, N'NAD83 / UTM zone 21N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (115, 26922, N'NAD83 / UTM zone 22N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (116, 26923, N'NAD83 / UTM zone 23N', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (117, 26929, N'NAD83 / Alabama East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (118, 26930, N'NAD83 / Alabama West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (119, 26932, N'NAD83 / Alaska zone 2', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (120, 26933, N'NAD83 / Alaska zone 3', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (121, 26934, N'NAD83 / Alaska zone 4', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (122, 26935, N'NAD83 / Alaska zone 5', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (123, 26936, N'NAD83 / Alaska zone 6', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (124, 26937, N'NAD83 / Alaska zone 7', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (125, 26938, N'NAD83 / Alaska zone 8', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (126, 26939, N'NAD83 / Alaska zone 9', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (127, 26940, N'NAD83 / Alaska zone 10', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (128, 26941, N'NAD83 / California zone 1', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (129, 26942, N'NAD83 / California zone 2', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (130, 26943, N'NAD83 / California zone 3', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (131, 26944, N'NAD83 / California zone 4', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (132, 26945, N'NAD83 / California zone 5', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (133, 26946, N'NAD83 / California zone 6', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (134, 26948, N'NAD83 / Arizona East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (135, 26949, N'NAD83 / Arizona Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (136, 26950, N'NAD83 / Arizona West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (137, 26951, N'NAD83 / Arkansas North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (138, 26952, N'NAD83 / Arkansas South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (139, 26953, N'NAD83 / Colorado North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (140, 26954, N'NAD83 / Colorado Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (141, 26955, N'NAD83 / Colorado South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (142, 26956, N'NAD83 / Connecticut', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (143, 26957, N'NAD83 / Delaware', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (144, 26958, N'NAD83 / Florida East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (145, 26959, N'NAD83 / Florida West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (146, 26960, N'NAD83 / Florida North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (147, 26961, N'NAD83 / Hawaii zone 1', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (148, 26962, N'NAD83 / Hawaii zone 2', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (149, 26963, N'NAD83 / Hawaii zone 3', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (150, 26964, N'NAD83 / Hawaii zone 4', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (151, 26965, N'NAD83 / Hawaii zone 5', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (152, 26966, N'NAD83 / Georgia East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (153, 26967, N'NAD83 / Georgia West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (154, 26968, N'NAD83 / Idaho East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (155, 26969, N'NAD83 / Idaho Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (156, 26970, N'NAD83 / Idaho West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (157, 26971, N'NAD83 / Illinois East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (158, 26972, N'NAD83 / Illinois West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (159, 26973, N'NAD83 / Indiana East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (160, 26974, N'NAD83 / Indiana West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (161, 26975, N'NAD83 / Iowa North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (162, 26976, N'NAD83 / Iowa South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (163, 26977, N'NAD83 / Kansas North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (164, 26978, N'NAD83 / Kansas South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (165, 26979, N'NAD83 / Kentucky North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (166, 26980, N'NAD83 / Kentucky South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (167, 26981, N'NAD83 / Louisiana North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (168, 26982, N'NAD83 / Louisiana South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (169, 26983, N'NAD83 / Maine East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (170, 26984, N'NAD83 / Maine West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (171, 26985, N'NAD83 / Maryland', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (172, 26986, N'NAD83 / Massachusetts Mainland', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (173, 26987, N'NAD83 / Massachusetts Island', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (174, 26988, N'NAD83 / Michigan North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (175, 26989, N'NAD83 / Michigan Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (176, 26990, N'NAD83 / Michigan South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (177, 26991, N'NAD83 / Minnesota North', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (178, 26992, N'NAD83 / Minnesota Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (179, 26993, N'NAD83 / Minnesota South', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (180, 26994, N'NAD83 / Mississippi East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (181, 26995, N'NAD83 / Mississippi West', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (182, 26996, N'NAD83 / Missouri East', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (183, 26997, N'NAD83 / Missouri Central', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (184, 26998, N'NAD83 / Missouri West  ', 0, NULL)
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (185, 4176, N'Australian Antarctic', 1, N'Datum Name: Australian Antarctic Datum 1998    Area of Use: Antarctica - Australian sector.    Datum Origin: No Data Available    Coord System: ellipsoidal    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (186, 4203, N'AGD84', 1, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - Queensland (Qld), South Australia (SA), Western Australia (WA).    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: ellipsoidal    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (187, 4283, N'GDA94', 1, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - Australian Capital Territory (ACT); New South Wales (NSW); Northern Territory (NT); Queensland (Qld); South Australia (SA); Tasmania (Tas); Western Australia (WA); Victoria (Vic).    Datum Origin: ITRF92 at epoch 1994.0    Coord System: ellipsoidal    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (188, 5711, N'Australian Height Datum', 0, N'Datum Name: Australian Height Datum    Area of Use: Australia - Australian Capital Territory (ACT); New South Wales (NSW); Northern Territory (NT); Queensland; South Australia (SA); Western Australia (WA); Victoria.    Datum Origin: MSL 1966-68 at 30 gauges around coast.    Coord System: vertical    Ellipsoid Name: No Data Available    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (189, 5712, N'Australian Height Datum (Tasmania)', 0, N'Datum Name: Australian Height Datum (Tasmania)    Area of Use: Australia - Tasmania (Tas).    Datum Origin: MSL 1972 at Hobart and Burnie.    Coord System: vertical    Ellipsoid Name: No Data Available    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (190, 5714, N'Mean Sea Level Height', 0, N'Datum Name: Mean Sea Level    Area of Use: World.    Datum Origin: No Data Available    Coord System: vertical    Ellipsoid Name: No Data Available    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (191, 5715, N'Mean Sea Level Depth', 0, N'Datum Name: Mean Sea Level    Area of Use: World.    Datum Origin: No Data Available    Coord System: vertical    Ellipsoid Name: No Data Available    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (192, 20348, N'AGD84 / AMG zone 48', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 102 and 108 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (193, 20349, N'AGD84 / AMG zone 49', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 108 and 114 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (194, 20350, N'AGD84 / AMG zone 50', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 114 and 120 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (195, 20351, N'AGD84 / AMG zone 51', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 120 and 126 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (196, 20352, N'AGD84 / AMG zone 52', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 126 and 132 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (197, 20353, N'AGD84 / AMG zone 53', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 132 and 138 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (198, 20354, N'AGD84 / AMG zone 54', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 138 and 144 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
GO
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (199, 20355, N'AGD84 / AMG zone 55', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 144 and 150 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (200, 20356, N'AGD84 / AMG zone 56', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 150 and 156 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (201, 20357, N'AGD84 / AMG zone 57', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 156 and 162 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (202, 20358, N'AGD84 / AMG zone 58', 0, N'Datum Name: Australian Geodetic Datum 1984    Area of Use: Australia - between 162 and 168 deg East.    Datum Origin: Fundamental point: Johnson Memorial Cairn. Latitude: 25 deg 56 min 54.5515 sec S; Longitude: 133 deg 12 min 30.0771 sec E (of Greenwich).    Coord System: Cartesian    Ellipsoid Name: Australian National Spheroid    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (203, 28348, N'GDA94 / MGA zone 48', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 102 and 108 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (204, 28349, N'GDA94 / MGA zone 49', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 108 and 114 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (205, 28350, N'GDA94 / MGA zone 50', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 114 and 120 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (206, 28351, N'GDA94 / MGA zone 51', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 120 and 126 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (207, 28352, N'GDA94 / MGA zone 52', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 126 and 132 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (208, 28353, N'GDA94 / MGA zone 53', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 132 and 138 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (209, 28354, N'GDA94 / MGA zone 54', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 138 and 144 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (210, 28355, N'GDA94 / MGA zone 55', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 144 and 150 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (211, 28356, N'GDA94 / MGA zone 56', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 150 and 156 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (212, 28357, N'GDA94 / MGA zone 57', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 156 and 162 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (213, 28358, N'GDA94 / MGA zone 58', 0, N'Datum Name: Geocentric Datum of Australia 1994    Area of Use: Australia - between 162 and 168 deg East.    Datum Origin: ITRF92 at epoch 1994.0    Coord System: Cartesian    Ellipsoid Name: GRS 1980    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (214, 32748, N'WGS 84 / UTM zone 48S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 102 and 108 deg East; southern hemisphere. Indonesia.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (215, 32749, N'WGS 84 / UTM zone 49S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 108 and 114 deg East; southern hemisphere. Australia. Indonesia.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (216, 32750, N'WGS 84 / UTM zone 50S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 114 and 120 deg East; southern hemisphere. Australia. Indonesia.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (217, 32751, N'WGS 84 / UTM zone 51S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 120 and 126 deg East; southern hemisphere. Australia. East Timor. Indonesia.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (218, 32752, N'WGS 84 / UTM zone 52S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 126 and 132 deg East; southern hemisphere. Australia. East Timor. Indonesia.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (219, 32753, N'WGS 84 / UTM zone 53S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 132 and 138 deg East; southern hemisphere. Australia.  Indonesia.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (220, 32754, N'WGS 84 / UTM zone 54S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 138 and 144 deg East; southern hemisphere. Australia. Indonesia. Papua New Guinea.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (221, 32755, N'WGS 84 / UTM zone 55S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 144 and 150 deg East; southern hemisphere. Australia. Papua New Guinea.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (222, 32756, N'WGS 84 / UTM zone 56S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 150 and 156 deg East; southern hemisphere. Australia. Papua New Guinea.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (223, 32757, N'WGS 84 / UTM zone 57S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 156 and 162 deg East; southern hemisphere.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (224, 32758, N'WGS 84 / UTM zone 58S', 0, N'Datum Name: World Geodetic System 1984    Area of Use: Between 162 and 168 deg East; southern hemisphere.    Datum Origin: Defined through a consistent set of station coordinates. These have changed with time: by 0.7m on 29/6/1994 [WGS 84 (G730)], a further 0.2m on 29/1/1997 [WGS 84 (G873)] and a further 0.06m on 20/1/2002 [WGS 84 (G1150)].    Coord System: Cartesian    Ellipsoid Name: WGS 84    Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (225, 3308, N'GDA94 / NSW Lambert', 0, N'Datum Name: Geocentric Datum of Australia 1994 Area of Use: Australia - New South Wales (NSW). Datum Origin: ITRF92 at epoch 1994.0  Ellipsoid Name: GRS 1980 Data Source: EPSG')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (226, 2914, N'NAD_1983_HARN_StatePlane_Oregon_South_FIPS_3602_Feet_Intl', 0, N'I wonder if we can''t just load the entire list at:
http://www.arcwebservices.com/v2006/help/index_Left.htm#StartTopic=support/pcs_name.htm#|SkinName=ArcWeb 
into the CV??')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (227, 2276, N'NAD83 / Texas North Central (ftUS)', 0, N'ESRI Name: NAD_1983_StatePlane_Texas_North_Central_FIPS_4202_Feet
Area of Use: United States (USA) - Texas - counties of: Andrews; Archer; Bailey; Baylor; Borden; Bowie; Callahan; Camp; Cass; Clay; Cochran; Collin; Cooke; Cottle; Crosby; Dallas; Dawson; Delta; Denton; Dickens; Eastland; Ellis; Erath; Fannin; Fisher; Floyd; Foard; Franklin; Gaines; Garza; Grayson; Gregg; Hale; Hardeman; Harrison; Haskell; Henderson; Hill; Hockley; Hood; Hopkins; Howard; Hunt; Jack; Johnson; Jones; Kaufman; Kent; King; Knox; Lamar; Lamb; Lubbock; Lynn; Marion; Martin; Mitchell; Montague; Morris; Motley; Navarro; Nolan; Palo Pinto; Panola; Parker; Rains; Red River; Rockwall; Rusk; Scurry; Shackelford; Smith; Somervell; Stephens; Stonewall; Tarrant; Taylor; Terry; Throckmorton; Titus; Upshur; Van Zandt; Wichita; Wilbarger; Wise; Wood; Yoakum; Young.')
INSERT [dbo].[SpatialReferences] ([SpatialReferenceID], [SRSID], [SRSName], [IsGeographic], [Notes]) VALUES (228, 0, N'HRAP Grid Coordinate System', 0, N'Datum Name: Hydrologic Rainfall Analysis Project (HRAP) grid coordinate system  Information: a polar stereographic projection true at 60°N / 105°W  Link:  http://www.nws.noaa.gov/oh/hrl/distmodel/hrap.htm#background')
SET IDENTITY_INSERT [dbo].[SpatialReferences] OFF
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Al', N'Expressed as aluminium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'As', N'Expressed as arsenic')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'B', N'Expressed as boron')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Ba', N'Expressed as barium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Br', N'Expressed as bromine')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'C', N'Expressed as carbon')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'C2H6', N'Expressed as ethane')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Ca', N'Expressed as calcium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'CaCO3', N'Expressed as calcium carbonate')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Cd', N'Expressed as cadmium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'CH4', N'Expressed as methane')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Cl', N'Expressed as chlorine')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Co', N'Expressed as cobalt')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'CO2', N'Expressed as carbon dioxide')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'CO3', N'Expressed as carbonate')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Cr', N'Expressed as chromium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Cu', N'Expressed as copper')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'delta 2H', N'Expressed as deuterium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'delta N15', N'Expressed as nitrogen-15')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'delta O18 ', N'Expressed as oxygen-18')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'EC', N'Expressed as electrical conductivity')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'F', N'Expressed as fluorine ')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Fe', N'Expressed as iron')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'H2O', N'Expressed as water')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'HCO3', N'Expressed as hydrogen carbonate')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Hg', N'Expressed as mercury')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'K', N'Expressed as potassium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Mg', N'Expressed as magnesium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Mn', N'Expressed as manganese')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Mo', N'Expressed as molybdenum')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'N', N'Expressed as nitrogen')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Na', N'Expressed as sodium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'NH4', N'Expressed as ammonium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Ni', N'Expressed as nickel')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'NO2', N'Expressed as nitrite')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'NO3', N'Expressed as nitrate')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Not Applicable', N'Speciation is not applicable')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'P', N'Expressed as phosphorus')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Pb', N'Expressed as lead')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'pH', N'Expressed as pH')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'PO4', N'Expressed as phosphate')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'S', N'Expressed as Sulfur')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Sb', N'Expressed as antimony')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Se', N'Expressed as selenium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Si', N'Expressed as silicon')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'SiO2', N'Expressed as silicate')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'SN', N'Expressed as tin')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'SO4', N'Expressed as Sulfate')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Sr', N'Expressed as strontium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'TA', N'Expressed as total alkalinity')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Ti', N'Expressed as titanium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Tl', N'Expressed as thallium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'U', N'Expressed as uranium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Unknown', N'Speciation is unknown')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'V', N'Expressed as vanadium')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Zn', N'Expressed as zinc')
INSERT [dbo].[SpeciationCV] ([Term], [Definition]) VALUES (N'Zr', N'Expressed as zircon')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'biota', N'Data associated with biological organisms')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'boundaries', N'Data associated with boundaries')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'climatology/meteorology/atmosphere', N'Data associated with climatology, meteorology, or the atmosphere')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'economy', N'Data associated with the economy')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'elevation', N'Data associated with elevation')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'environment', N'Data associated with the environment')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'farming', N'Data associated with agricultural production')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'geoscientificInformation', N'Data associated with geoscientific information')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'health', N'Data associated with health')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'imageryBaseMapsEarthCover', N'Data associated with imagery, base maps, or earth cover')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'inlandWaters', N'Data associated with inland waters')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'intelligenceMilitary', N'Data associated with intelligence or the military')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'location', N'Data associated with location')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'oceans', N'Data associated with oceans')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'planningCadastre', N'Data associated with planning or cadestre')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'society', N'Data associated with society')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'structure', N'Data associated with structure')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'transportation', N'Data associated with transportation')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'Unknown', N'The topic category is unknown')
INSERT [dbo].[TopicCategoryCV] ([Term], [Definition]) VALUES (N'utilitiesCommunication', N'Data associated with utilities or communication')
SET IDENTITY_INSERT [dbo].[Units] ON 

INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (1, N'percent', N'Dimensionless', N'%')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (2, N'degree', N'Angle', N'deg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (3, N'grad', N'Angle', N'grad')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (4, N'radian', N'Angle', N'rad')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (5, N'degree north', N'Angle', N'degN')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (6, N'degree south', N'Angle', N'degS')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (7, N'degree west', N'Angle', N'degW')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (8, N'degree east', N'Angle', N'degE')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (9, N'arcminute', N'Angle', N'arcmin')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (10, N'arcsecond', N'Angle', N'arcsec')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (11, N'steradian', N'Angle', N'sr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (12, N'acre', N'Area', N'ac')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (13, N'hectare', N'Area', N'ha')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (14, N'square centimeter', N'Area', N'cm^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (15, N'square foot', N'Area', N'ft^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (16, N'square kilometer', N'Area', N'km^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (17, N'square meter', N'Area', N'm^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (18, N'square mile', N'Area', N'mi^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (19, N'hertz', N'Frequency', N'Hz')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (20, N'darcy', N'Permeability', N'D')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (21, N'british thermal unit', N'Energy', N'BTU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (22, N'calorie', N'Energy', N'cal')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (23, N'erg', N'Energy', N'erg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (24, N'foot pound force', N'Energy', N'lbf ft')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (25, N'joule', N'Energy', N'J')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (26, N'kilowatt hour', N'Energy', N'kW hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (27, N'electronvolt', N'Energy', N'eV')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (28, N'langleys per day', N'Energy Flux', N'Ly/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (29, N'langleys per minute', N'Energy Flux', N'Ly/min')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (30, N'langleys per second', N'Energy Flux', N'Ly/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (31, N'megajoules per square meter per day', N'Energy Flux', N'MJ/m^2 d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (32, N'watts per square centimeter', N'Energy Flux', N'W/cm^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (33, N'watts per square meter', N'Energy Flux', N'W/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (34, N'acre feet per year', N'Flow', N'ac ft/yr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (35, N'cubic feet per second', N'Flow', N'cfs')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (36, N'cubic meters per second', N'Flow', N'm^3/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (37, N'cubic meters per day', N'Flow', N'm^3/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (38, N'gallons per minute', N'Flow', N'gpm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (39, N'liters per second', N'Flow', N'L/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (40, N'million gallons per day', N'Flow', N'MGD')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (41, N'dyne', N'Force', N'dyn')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (42, N'kilogram force', N'Force', N'kgf')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (43, N'newton', N'Force', N'N')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (44, N'pound force', N'Force', N'lbf')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (45, N'kilo pound force', N'Force', N'kip')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (46, N'ounce force', N'Force', N'ozf')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (47, N'centimeter   ', N'Length', N'cm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (48, N'international foot', N'Length', N'ft')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (49, N'international inch', N'Length', N'in')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (50, N'international yard', N'Length', N'yd')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (51, N'kilometer', N'Length', N'km')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (52, N'meter', N'Length', N'm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (53, N'international mile', N'Length', N'mi')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (54, N'millimeter', N'Length', N'mm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (55, N'micron', N'Length', N'um')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (56, N'angstrom', N'Length', N'Å')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (57, N'femtometer', N'Length', N'fm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (58, N'nautical mile', N'Length', N'nmi')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (59, N'lumen', N'Light', N'lm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (60, N'lux', N'Light', N'lx')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (61, N'lambert', N'Light', N'La')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (62, N'stilb', N'Light', N'sb')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (63, N'phot', N'Light', N'ph')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (64, N'langley', N'Light', N'Ly')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (65, N'gram', N'Mass', N'g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (66, N'kilogram', N'Mass', N'kg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (67, N'milligram', N'Mass', N'mg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (68, N'microgram', N'Mass', N'ug')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (69, N'pound mass (avoirdupois)', N'Mass', N'lb')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (70, N'slug', N'Mass', N'slug')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (71, N'metric ton', N'Mass', N'tonne')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (72, N'grain', N'Mass', N'grain')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (73, N'carat', N'Mass', N'car')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (74, N'atomic mass unit', N'Mass', N'amu')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (75, N'short ton', N'Mass', N'ton')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (76, N'BTU per hour', N'Power', N'BTU/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (77, N'foot pound force per second', N'Power', N'lbf/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (78, N'horse power (shaft)', N'Power', N'hp')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (79, N'kilowatt', N'Power', N'kW')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (80, N'watt', N'Power', N'W')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (81, N'voltampere', N'Power', N'VA')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (82, N'atmospheres', N'Pressure/Stress', N'atm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (83, N'pascal', N'Pressure/Stress', N'Pa')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (84, N'inch of mercury', N'Pressure/Stress', N'inch Hg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (85, N'inch of water', N'Pressure/Stress', N'inch H2O')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (86, N'millimeter of mercury', N'Pressure/Stress', N'mm Hg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (87, N'millimeter of water', N'Pressure/Stress', N'mm H2O')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (88, N'centimeter of mercury', N'Pressure/Stress', N'cm Hg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (89, N'centimeter of water', N'Pressure/Stress', N'cm H2O')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (90, N'millibar', N'Pressure/Stress', N'mbar')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (91, N'pound force per square inch', N'Pressure/Stress', N'psi')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (92, N'torr', N'Pressure/Stress', N'torr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (93, N'barie', N'Pressure/Stress', N'barie')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (94, N'meters per pixel', N'Resolution', N'meters per pixel')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (95, N'meters per meter', N'Scale', N'-')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (96, N'degree celsius', N'Temperature', N'degC')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (97, N'degree fahrenheit', N'Temperature', N'degF')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (98, N'degree rankine', N'Temperature', N'degR')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (99, N'degree kelvin', N'Temperature', N'degK')
GO
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (100, N'second', N'Time', N's')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (101, N'millisecond', N'Time', N'millisec')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (102, N'minute', N'Time', N'min')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (103, N'hour', N'Time', N'hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (104, N'day', N'Time', N'd')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (105, N'week', N'Time', N'week')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (106, N'month', N'Time', N'month')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (107, N'common year (365 days)', N'Time', N'yr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (108, N'leap year (366 days)', N'Time', N'leap yr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (109, N'Julian year (365.25 days)', N'Time', N'jul yr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (110, N'Gregorian year (365.2425 days)', N'Time', N'greg yr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (111, N'centimeters per hour', N'Velocity', N'cm/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (112, N'centimeters per second', N'Velocity', N'cm/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (113, N'feet per second', N'Velocity', N'ft/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (114, N'gallons per day per square foot', N'Velocity', N'gpd/ft^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (115, N'inches per hour', N'Velocity', N'in/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (116, N'kilometers per hour', N'Velocity', N'km/h')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (117, N'meters per day', N'Velocity', N'm/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (118, N'meters per hour', N'Velocity', N'm/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (119, N'meters per second', N'Velocity', N'm/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (120, N'miles per hour', N'Velocity', N'mph')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (121, N'millimeters per hour', N'Velocity', N'mm/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (122, N'nautical mile per hour', N'Velocity', N'knot')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (123, N'acre foot', N'Volume', N'ac ft')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (124, N'cubic centimeter', N'Volume', N'cc')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (125, N'cubic foot', N'Volume', N'ft^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (126, N'cubic meter', N'Volume', N'm^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (127, N'hectare meter', N'Volume', N'hec m')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (128, N'liter', N'Volume', N'L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (129, N'US gallon', N'Volume', N'gal')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (130, N'barrel', N'Volume', N'bbl')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (131, N'pint', N'Volume', N'pt')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (132, N'bushel', N'Volume', N'bu')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (133, N'teaspoon', N'Volume', N'tsp')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (134, N'tablespoon', N'Volume', N'tbsp')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (135, N'quart', N'Volume', N'qrt')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (136, N'ounce', N'Volume', N'oz')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (137, N'dimensionless', N'Dimensionless', N'-')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (138, N'mega joule', N'Energy', N'MJ')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (139, N'degrees minutes seconds', N'Angle', N'dddmmss')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (140, N'calories per square centimeter per day', N'Energy Flux', N'cal/cm^2 d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (141, N'calories per square centimeter per minute', N'Energy Flux', N'cal/cm^2 min')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (142, N'milliliters per square centimeter per day', N'Hyporheic flux', N'ml/cm^2 d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (144, N'megajoules per square meter', N'Energy per Area', N'MJ/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (145, N'gallons per day', N'Flow', N'gpd')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (146, N'million gallons per month', N'Flow', N'MGM')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (147, N'million gallons per year', N'Flow', N'MGY')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (148, N'short tons per day per foot', N'Mass flow per unit width', N'ton/d ft')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (149, N'lumens per square foot', N'Light Intensity', N'lm/ft^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (150, N'microeinsteins per square meter per second', N'Light Intensity', N'uE/m^2 s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (151, N'alphas per meter', N'Light', N'a/m')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (152, N'microeinsteins per square meter', N'Light', N'uE/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (153, N'millimoles of photons per square meter', N'Light', N'mmol/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (154, N'absorbance per centimeter', N'Extinction/Absorbance', N'A/cm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (155, N'nanogram', N'Mass', N'ng')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (156, N'picogram', N'Mass', N'pg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (157, N'milliequivalents', N'Mass', N'meq')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (158, N'grams per square meter', N'Areal Density', N'g/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (159, N'milligrams per square meter', N'Areal Density', N'mg/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (160, N'micrograms per square meter', N'Areal Density', N'ug/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (161, N'grams per square meter per day', N'Areal Loading', N'g/m^2 d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (162, N'grams per day', N'Loading', N'g/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (163, N'pounds per day', N'Loading', N'lb/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (164, N'pounds per mile', N'Loading', N'lb/mi')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (165, N'short tons per day', N'Loading', N'ton/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (166, N'milligrams per cubic meter per day', N'Productivity', N'mg/m^3 d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (167, N'milligrams per square meter per day', N'Productivity', N'mg/m^2 d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (168, N'volts', N'Potential Difference', N'V')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (169, N'millivolts', N'Potential Difference', N'mV')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (170, N'kilopascal', N'Pressure/Stress', N'kPa')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (171, N'megapascal', N'Pressure/Stress', N'MPa')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (172, N'becquerel', N'Radioactivity', N'Bq')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (173, N'becquerels per gram', N'Radioactivity', N'Bq/g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (174, N'curie', N'Radioactivity', N'Ci')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (175, N'picocurie', N'Radioactivity', N'pCi')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (176, N'ohm', N'Resistance', N'ohm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (177, N'ohm meter', N'Resistivity', N'ohm m')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (178, N'picocuries per gram', N'Specific Activity', N'pCi/g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (179, N'picocuries per liter', N'Specific Activity', N'pCi/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (180, N'picocuries per milliliter', N'Specific Activity', N'pCi/ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (181, N'hour minute', N'Time', N'hhmm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (182, N'year month day', N'Time', N'yymmdd')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (183, N'year day (Julian)', N'Time', N'yyddd')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (184, N'inches per day', N'Velocity', N'in/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (185, N'inches per week', N'Velocity', N'in/week')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (186, N'inches per storm', N'Precipitation', N'in/storm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (187, N'thousand acre feet', N'Volume', N'10^3 ac ft')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (188, N'milliliter', N'Volume', N'ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (189, N'cubic feet per second days', N'Volume', N'cfs d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (190, N'thousand gallons', N'Volume', N'10^3 gal')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (191, N'million gallons', N'Volume', N'10^6 gal')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (192, N'microsiemens per centimeter', N'Electrical Conductivity', N'uS/cm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (193, N'practical salinity units ', N'Salinity', N'psu')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (194, N'decibel', N'Sound', N'dB')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (195, N'cubic centimeters per gram', N'Specific Volume', N'cm^3/g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (196, N'square meters per gram', N'Specific Surface Area ', N'm^2/g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (197, N'short tons per acre foot', N'Concentration', N'ton/ac ft')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (198, N'grams per cubic centimeter', N'Concentration', N'g/cm^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (199, N'milligrams per liter', N'Concentration', N'mg/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (200, N'nanograms per cubic meter', N'Concentration', N'ng/m^3')
GO
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (201, N'nanograms per liter', N'Concentration', N'ng/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (202, N'grams per liter', N'Concentration', N'g/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (203, N'micrograms per cubic meter', N'Concentration', N'ug/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (204, N'micrograms per liter', N'Concentration', N'ug/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (205, N'parts per million', N'Concentration', N'ppm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (206, N'parts per billion', N'Concentration', N'ppb')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (207, N'parts per trillion', N'Concentration', N'ppt')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (208, N'parts per quintillion', N'Concentration', N'ppqt')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (209, N'parts per quadrillion', N'Concentration', N'ppq')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (210, N'per mille', N'Concentration', N'%o')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (211, N'microequivalents per liter', N'Concentration', N'ueq/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (212, N'milliequivalents per liter', N'Concentration', N'meq/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (213, N'milliequivalents per 100 gram', N'Concentration', N'meq/100 g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (214, N'milliosmols per kilogram', N'Concentration', N'mOsm/kg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (215, N'nanomoles per liter', N'Concentration', N'nmol/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (216, N'picograms per cubic meter', N'Concentration', N'pg/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (217, N'picograms per liter', N'Concentration', N'pg/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (218, N'picograms per milliliter', N'Concentration', N'pg/ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (219, N'tritium units', N'Concentration', N'TU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (220, N'jackson turbidity units', N'Turbidity', N'JTU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (221, N'nephelometric turbidity units', N'Turbidity', N'NTU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (222, N'nephelometric turbidity multibeam unit', N'Turbidity', N'NTMU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (223, N'nephelometric turbidity ratio unit', N'Turbidity', N'NTRU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (224, N'formazin nephelometric multibeam unit', N'Turbidity', N'FNMU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (225, N'formazin nephelometric ratio unit', N'Turbidity', N'FNRU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (226, N'formazin nephelometric unit', N'Turbidity', N'FNU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (227, N'formazin attenuation unit', N'Turbidity', N'FAU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (228, N'formazin backscatter unit ', N'Turbidity', N'FBU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (229, N'backscatter units', N'Turbidity', N'BU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (230, N'attenuation units', N'Turbidity', N'AU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (231, N'platinum cobalt units', N'Color', N'PCU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (232, N'the ratio between UV absorbance at 254 nm and DOC level', N'Specific UV Absorbance', N'L/(mg DOC/cm)')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (233, N'billion colonies per day', N'Organism Loading', N'10^9 colonies/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (234, N'number of organisms per square meter', N'Organism Concentration', N'#/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (235, N'number of organisms per liter', N'Organism Concentration', N'#/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (236, N'number or organisms per cubic meter', N'Organism Concentration', N'#/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (237, N'cells per milliliter', N'Organism Concentration', N'cells/ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (238, N'cells per square millimeter', N'Organism Concentration', N'cells/mm^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (239, N'colonies per 100 milliliters', N'Organism Concentration', N'colonies/100 ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (240, N'colonies per milliliter', N'Organism Concentration', N'colonies/ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (241, N'colonies per gram', N'Organism Concentration', N'colonies/g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (242, N'colony forming units per milliliter', N'Organism Concentration', N'CFU/ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (243, N'cysts per 10 liters', N'Organism Concentration', N'cysts/10 L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (244, N'cysts per 100 liters', N'Organism Concentration', N'cysts/100 L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (245, N'oocysts per 10 liters', N'Organism Concentration', N'oocysts/10 L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (246, N'oocysts per 100 liters', N'Organism Concentration', N'oocysts/100 L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (247, N'most probable number', N'Organism Concentration', N'MPN')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (248, N'most probable number per 100 liters', N'Organism Concentration', N'MPN/100 L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (249, N'most probable number per 100 milliliters', N'Organism Concentration', N'MPN/100 ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (250, N'most probable number per gram', N'Organism Concentration', N'MPN/g')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (251, N'plaque-forming units per 100 liters', N'Organism Concentration', N'PFU/100 L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (252, N'plaques per 100 milliliters', N'Organism Concentration', N'plaques/100 ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (253, N'counts per second', N'Rate', N'#/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (254, N'per day', N'Rate', N'1/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (255, N'nanograms per square meter per hour', N'Volatilization Rate', N'ng/m^2 hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (256, N'nanograms per square meter per week', N'Volatilization Rate', N'ng/m^2 week')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (257, N'count', N'Dimensionless', N'#')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (258, N'categorical', N'Dimensionless', N'code')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (259, N'absorbance per centimeter per mg/L of given acid ', N'Absorbance', N'100/cm mg/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (260, N'per liter', N'Concentration Ratio', N'1/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (261, N'per mille per hour', N'Sedimentation Rate', N'%o/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (262, N'gallons per batch', N'Flow', N'gpb')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (263, N'cubic feet per barrel', N'Concentration', N'ft^3/bbl')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (264, N'per mille by volume', N'Concentration', N'%o by vol')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (265, N'per mille per hour by volume', N'Sedimentation Rate', N'%o/hr by vol')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (266, N'micromoles', N'Amount', N'umol')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (267, N'tons of calcium carbonate per kiloton', N'Net Neutralization Potential', N'tCaCO3/Kt')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (268, N'siemens per meter', N'Electrical Conductivity', N'S/m')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (269, N'millisiemens per centimeter', N'Electrical Conductivity', N'mS/cm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (270, N'siemens per centimeter', N'Electrical Conductivity', N'S/cm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (271, N'practical salinity scale', N'Salinity', N'pss')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (272, N'per meter', N'Light Extinction', N'1/m')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (273, N'normal', N'Normality', N'N')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (274, N'nanomoles per kilogram', N'Concentration', N'nmol/kg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (275, N'millimoles per kilogram', N'Concentration', N'mmol/kg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (276, N'millimoles per square meter per hour', N'Areal Flux', N'mmol/m^2 hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (277, N'milligrams per cubic meter per hour', N'Productivity', N'mg/m^3 hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (278, N'milligrams per day', N'Loading', N'mg/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (279, N'liters per minute', N'Flow', N'L/min')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (280, N'liters per day', N'Flow', N'L/d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (281, N'jackson candle units ', N'Turbidity', N'JCU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (282, N'grains per gallon', N'Concentration', N'gpg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (283, N'gallons per second', N'Flow', N'gps')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (284, N'gallons per hour', N'Flow', N'gph')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (285, N'foot candle', N'Illuminance', N'ftc')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (286, N'fibers per liter', N'Concentration', N'fibers/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (287, N'drips per minute', N'Flow', N'drips/min')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (288, N'cubic centimeters per second', N'Flow', N'cm^3/sec')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (289, N'colony forming units', N'Organism Concentration', N'CFU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (290, N'colony forming units per 100 milliliter', N'Organism Concentration', N'CFU/100 ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (291, N'cubic feet per minute', N'Flow', N'cfm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (292, N'ADMI color unit', N'Color', N'ADMI')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (293, N'percent by volume', N'Concentration', N'% by vol')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (294, N'number of organisms per 500 milliliter', N'Organism Concentration', N'#/500 ml')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (295, N'number of organisms per 100 gallon', N'Organism Concentration', N'#/100 gal')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (296, N'grams per cubic meter per hour', N'Productivity', N'g/m^3 hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (297, N'grams per minute', N'Loading', N'g/min')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (298, N'grams per second', N'Loading', N'g/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (299, N'million cubic feet', N'Volume', N'10^6 ft^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (300, N'month year', N'Time', N'mmyy')
GO
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (301, N'bar', N'Pressure', N'bar')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (302, N'decisiemens per centimeter', N'Electrical Conductivity', N'dS/cm')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (303, N'micromoles per liter', N'Concentration', N'umol/L')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (304, N'Joules per square centimeter', N'Energy per Area', N'J/cm^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (305, N'millimeters per day', N'velocity', N'mm/day')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (306, N'parts per thousand', N'Concentration', N'ppth')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (307, N'megaliter', N'Volume', N'ML')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (308, N'Percent Saturation', N'Concentration', N'% Sat')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (309, N'pH Unit', N'Dimensionless', N'pH')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (310, N'millimeters per second', N'Velocity', N'mm/s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (311, N'liters per hour', N'Flow', N'L/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (312, N'cubic hecto meter', N'Volume', N'(hm)^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (313, N'mols per cubic meter', N'Concentration or organism concentration', N'mol/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (314, N'kilo grams per month', N'Loading', N'kg/month')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (315, N'Hecto Pascal', N'Pressure/Stress', N'hPa')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (316, N'kilo grams per cubic meter', N'Concentration', N'kg/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (317, N'short tons per month', N'Loading', N'ton/month')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (318, N'micromoles per square meter per second', N'Areal Flux', N'umol/m^2 s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (319, N'grams per square meter per hour', N'Areal Flux', N'g/m^2 hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (320, N'milligrams per cubic meter', N'Concentration', N'mg/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (321, N'meters squared per second squared', N'Velocity', N'm^2/s^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (322, N'squared degree Celsius', N'Temperature', N'(DegC)^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (323, N'milligrams per cubic meter squared', N'Concentration', N'(mg/m^3)^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (324, N'meters per second degree Celsius', N'Temperature', N'm/s DegC')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (325, N'millimoles per square meter per second', N'Areal Flux', N'mmol/m^2 s')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (326, N'degree Celsius millimoles per cubic meter', N'Concentration', N'DegC mmol/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (327, N'millimoles per cubic meter', N'Concentration', N'mmol/m^3')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (328, N'millimoles per cubic meter squared', N'Concentration', N'(mmol/m^3)^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (329, N'Langleys per hour', N'Energy Flux', N'Ly/hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (330, N'hits per square centimeter', N'Precipitation', N'hits/cm^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (331, N'hits per square centimeter per hour', N'Velocity', N'hits/cm^2 hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (332, N'relative fluorescence units', N'Fluorescence', N'RFU')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (333, N'kilograms per hectare per day', N'Areal Flux', N'kg/ha d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (334, N'kilowatts per square meter', N'Energy Flux', N'kW/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (335, N'kilograms per square meter', N'Areal Density', N'kg/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (336, N'microeinsteins per square meter per day', N'Light Intensity', N'uE/m^2 d')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (337, N'microgram per milliliter', N'Concentration', N'ug/mL')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (338, N'Newton per square meter', N'Pressure/Stress', N'Newton/m^2')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (339, N'micromoles per liter per hour', N'Pressure/Stress', N'umol/L hr')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (340, N'decisiemens per meter', N'Electrical Conductivity', N'dS/m')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (341, N'milligrams per kilogram', N'Mass Fraction', N'mg/Kg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (342, N'number of organisms per 100 milliliter', N'Organism Concentration', N'#/100 mL')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (343, N'micrograms per kilogram', N'Mass Fraction', N'ug/Kg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (344, N'grams per kilogram', N'Mass Fraction', N'g/Kg')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (345, N'acre feet per month', N'Flow', N'ac ft/mo')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (346, N'acre feet per half month', N'Flow', N'ac ft/0.5 mo')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (347, N'cubic meters per minute', N'Flow', N'm^3/min')
INSERT [dbo].[Units] ([UnitsID], [UnitsName], [UnitsType], [UnitsAbbreviation]) VALUES (348, N'count per half cubic foot', N'Concentration', N'#/((ft^3)/2)')
SET IDENTITY_INSERT [dbo].[Units] OFF
INSERT [dbo].[ValueTypeCV] ([Term], [Definition]) VALUES (N'Calibration Value', N'A value used as part of the calibration of an instrument at a particular time.')
INSERT [dbo].[ValueTypeCV] ([Term], [Definition]) VALUES (N'Derived Value', N'Value that is directly derived from an observation or set of observations')
INSERT [dbo].[ValueTypeCV] ([Term], [Definition]) VALUES (N'Field Observation', N'Observation of a variable using a field instrument')
INSERT [dbo].[ValueTypeCV] ([Term], [Definition]) VALUES (N'Model Simulation Result', N'Values generated by a simulation model')
INSERT [dbo].[ValueTypeCV] ([Term], [Definition]) VALUES (N'Sample', N'Observation that is the result of analyzing a sample in a laboratory')
INSERT [dbo].[ValueTypeCV] ([Term], [Definition]) VALUES (N'Unknown', N'The value type is unknown')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'19-Hexanoyloxyfucoxanthin', N'The phytoplankton pigment 19-Hexanoyloxyfucoxanthin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'9 cis-Neoxanthin', N'The phytoplankton pigment  9 cis-Neoxanthin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Acid neutralizing capacity', N'Acid neutralizing capacity ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Agency code', N'Code for the agency which analyzed the sample')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Albedo', N'The ratio of reflected to incident light.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Alkalinity, bicarbonate', N'Bicarbonate Alkalinity ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Alkalinity, carbonate ', N'Carbonate Alkalinity ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Alkalinity, carbonate plus bicarbonate', N'Alkalinity, carbonate plus bicarbonate')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Alkalinity, hydroxide ', N'Hydroxide Alkalinity ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Alkalinity, total ', N'Total Alkalinity')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Alloxanthin', N'The phytoplankton pigment Alloxanthin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Aluminium', N'Aluminium (Al)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Aluminum, dissolved', N'Dissolved Aluminum (Al)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Ammonium flux', N'Ammonium (NH4) flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Antimony', N'Antimony (Sb)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Area', N'Area of a measurement location')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Arsenic', N'Arsenic (As)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Asteridae coverage', N'Areal coverage of the plant Asteridae')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Barium, dissolved', N'Dissolved Barium (Ba)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Barium, total', N'Total Barium (Ba)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Barometric pressure', N'Barometric pressure')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Baseflow', N'The portion of streamflow (discharge) that is supplied by groundwater sources.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Batis maritima Coverage', N'Areal coverage of the plant Batis maritima')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Battery Temperature', N'The battery temperature of a datalogger or sensing system')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Battery voltage', N'The battery voltage of a datalogger or sensing system, often recorded as an indicator of data reliability')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Benthos', N'Benthic species')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Bicarbonate', N'Bicarbonate (HCO3-)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Biogenic silica', N'Hydrated silica (SiO2 nH20)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Biomass, phytoplankton', N'Total mass of phytoplankton, per unit area or volume')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Biomass, total', N'Total biomass')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Blue-green algae (cyanobacteria), phycocyanin', N'Blue-green algae (cyanobacteria) with phycocyanin pigments')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD1', N'1-day Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD2, carbonaceous', N'2-day Carbonaceous Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD20', N'20-day Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD20, carbonaceous', N'20-day Carbonaceous Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD20, nitrogenous', N'20-day Nitrogenous Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD3, carbonaceous', N'3-day Carbonaceous Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD4, carbonaceous', N'4-day Carbonaceous Biological Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD5', N'5-day Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD5, carbonaceous', N'5-day Carbonaceous Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD5, nitrogenous', N'5-day Nitrogenous Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD6, carbonaceous', N'6-day Carbonaceous Biological Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BOD7, carbonaceous', N'7-day Carbonaceous Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BODu', N'Ultimate Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BODu, carbonaceous', N'Carbonaceous Ultimate Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'BODu, nitrogenous', N'Nitrogenous Ultimate Biochemical Oxygen Demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Borehole log material classification', N'Classification of material encountered by a driller at various depths during the drilling of a well and recorded in the borehole log.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Boron', N'Boron (B)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Borrichia frutescens Coverage', N'Areal coverage of the plant Borrichia frutescens')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Bromide', N'Bromide')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Bromine', N'Bromine (Br)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Bromine, dissolved', N'Dissolved Bromine (Br)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Bulk electrical conductivity', N'Bulk electrical conductivity of a medium measured using a sensor such as time domain reflectometry (TDR), as a raw sensor response in the measurement of a quantity like soil moisture.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Cadmium', N'Cadmium (Cd)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Calcium ', N'Calcium (Ca) ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Calcium, dissolved', N'Dissolved Calcium (Ca)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Canthaxanthin', N'The phytoplankton pigment Canthaxanthin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon dioxide', N'Carbon dioxide')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon dioxide Flux', N'Carbon dioxide (CO2) flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon dioxide Storage Flux', N'Carbon dioxide (CO2) storage flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon dioxide, transducer signal', N'Carbon dioxide (CO2), raw data from sensor')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon disulfide', N'Carbon disulfide (CS2)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon tetrachloride', N'Carbon tetrachloride (CCl4)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon to Nitrogen molar ratio', N'C:N (molar)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, dissolved inorganic', N'Dissolved Inorganic Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, dissolved organic', N'Dissolved Organic Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, dissolved total', N'Dissolved Total (Organic+Inorganic) Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, particulate organic', N'Particulate organic carbon in suspension')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, suspended inorganic', N'Suspended Inorganic Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, suspended organic', N'DEPRECATED -- The use of this term is discouraged in favor of the use of the synonymous term "Carbon, particulate organic".')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, suspened total', N'Suspended Total (Organic+Inorganic) Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, total', N'Total (Dissolved+Particulate) Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, total inorganic', N'Total (Dissolved+Particulate) Inorganic Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, total organic', N'Total (Dissolved+Particulate) Organic Carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbon, total solid phase', N'Total solid phase carbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Carbonate', N'Carbonate ion (CO3-2) concentration')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chloride', N'Chloride (Cl-)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chloride, total', N'Total Chloride (Cl-)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorine', N'Chlorine (Cl)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorine, dissolved', N'Dissolved Chlorine (Cl)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll (a+b+c)', N'Chlorophyll (a+b+c)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll a', N'Chlorophyll a')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll a allomer', N'The phytoplankton pigment Chlorophyll a allomer')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll a, corrected for pheophytin', N'Chlorphyll a corrected for pheophytin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll a, uncorrected for pheophytin', N'Chlorophyll a uncorrected for pheophytin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll b', N'Chlorophyll b')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll c', N'Chlorophyll c')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll c1 and c2', N'Chlorophyll c1 and c2')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chlorophyll Fluorescence', N'Chlorophyll Fluorescence')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chromium (III)', N'Trivalent Chromium')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chromium (VI)', N'Hexavalent Chromium')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chromium, dissolved', N'Dissolved Chromium')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Chromium, total', N'Chromium, all forms')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Cobalt', N'Cobalt (Co)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Cobalt, dissolved', N'Dissolved Cobalt (Co)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'COD', N'Chemical oxygen demand')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Coliform, fecal', N'Fecal Coliform')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Coliform, total', N'Total Coliform')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Color', N'Color in quantified in color units')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Colored Dissolved Organic Matter', N'The concentration of colored dissolved organic matter (humic substances)')
GO
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Container number', N'The identifying number for a water sampler container.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Copper', N'Copper (Cu)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Copper, dissolved', N'Dissolved Copper (Cu)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Cryptophytes', N'The chlorophyll a concentration contributed by cryptophytes')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Cuscuta spp. coverage', N'Areal coverage of the plant Cuscuta spp.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Density', N'Density')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Deuterium', N'Deuterium (2H), Delta D')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Diadinoxanthin', N'The phytoplankton pigment Diadinoxanthin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Diatoxanthin', N'The phytoplankton pigment Diatoxanthin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Dinoflagellates', N'The chlorophyll a concentration contributed by Dinoflagellates')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Discharge', N'Discharge')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Distance', N'Distance measured from a sensor to a target object such as the surface of a water body or snow surface.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Distichlis spicata Coverage', N'Areal coverage of the plant Distichlis spicata')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'E-coli', N'Escherichia coli')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Electric Energy', N'Electric Energy')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Electric Power', N'Electric Power')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Electrical conductivity', N'Electrical conductivity')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Enterococci', N'Enterococcal bacteria')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Ethane, dissolved', N'Dissolved Ethane (C2H6)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Evaporation', N'Evaporation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Evapotranspiration', N'Evapotranspiration')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Evapotranspiration, potential', N'The amount of water that could be evaporated and transpired if there was sufficient water available.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Fish detections', N'The number of fish identified by the detection equipment')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Flash memory error count', N'A counter which counts the number of  datalogger flash memory errors')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Fluoride', N'Fluoride - F-')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Fluorine', N'Fluorine (F-)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Fluorine, dissolved', N'Dissolved Fluorine (Fl)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Friction velocity', N'Friction velocity')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Gage height', N'Water level with regard to an arbitrary gage datum (also see Water depth for comparison)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Global Radiation', N'Solar radiation, direct and diffuse, received from a solid angle of 2p steradians on a horizontal surface. 
Source: World Meteorological Organization, Meteoterm')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Ground heat flux', N'Ground heat flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Groundwater Depth', N'Groundwater depth is the distance between the water surface and the ground surface at a specific location specified by the site location and offset.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Hardness, carbonate', N'Carbonate hardness also known as temporary hardness')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Hardness, non-carbonate', N'Non-carbonate hardness')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Hardness, total', N'Total hardness')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Heat index', N'The combination effect of heat and humidity on the temperature felt by people.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Hydrogen sulfide', N'Hydrogen sulfide (H2S)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Hydrogen-2, stable isotope ratio delta', N'Difference in the  2H:1H ratio between the sample and standard')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Imaginary dielectric constant', N'Soil reponse of a reflected standing electromagnetic wave of a particular frequency which is related to the dissipation (or loss) of energy within the medium. This is the imaginary portion of the complex dielectric constant.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Iron sulfide', N'Iron sulfide (FeS2)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Iron, dissolved', N'Dissolved Iron (Fe)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Iron, ferric', N'Ferric Iron (Fe+3)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Iron, ferrous', N'Ferrous Iron (Fe+2)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Iva frutescens coverage', N'Areal coverage of the plant Iva frutescens')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Latent Heat Flux', N'Latent Heat Flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Latitude', N'Latitude as a variable measurement or observation (Spatial reference to be designated in methods).  This is distinct from the latitude of a site which is a site attribute.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Lead', N'Lead (Pb)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Leaf wetness', N'The effect of moisture settling on the surface of a leaf as a result of either condensation or rainfall.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Light attenuation coefficient', N'Light attenuation coefficient')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Limonium nashii Coverage', N'Areal coverage of the plant Limonium nashii')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Lithium', N'Lithium (Li)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Longitude', N'Longitude as a variable measurement or observation (Spatial reference to be designated in methods). This is distinct from the longitude of a site which is a site attribute.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Low battery count', N'A counter of the number of times the battery voltage dropped below a minimum threshold')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'LSI', N'Langelier Saturation Index is an indicator of the degree of saturation of water with respect to calcium carbonate ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Lycium carolinianum Coverage', N'Areal coverage of the plant Lycium carolinianum')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Magnesium', N'Magnesium (Mg)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Magnesium, dissolved', N'Dissolved Magnesium (Mg)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Manganese', N'Manganese (Mn)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Manganese, dissolved', N'Dissolved Manganese (Mn)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Mercury', N'Mercury (Hg)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Methane, dissolved', N'Dissolved Methane (CH4)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Methylmercury', N'Methylmercury (CH3Hg)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Molybdenum', N'Molybdenum (Mo)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Momentum flux', N'Momentum flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Monanthochloe littoralis Coverage', N'Areal coverage of the plant Monanthochloe littoralis')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'N, albuminoid', N'Albuminoid Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Net heat flux', N'Outgoing rate of heat energy transfer minus the incoming rate of heat energy transfer through a given area')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nickel', N'Nickel (Ni)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nickel, dissolved', N'Dissolved Nickel (Ni)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, Dissolved Inorganic', N'Dissolved inorganic nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, dissolved Kjeldahl', N'Dissolved Kjeldahl (organic nitrogen + ammonia (NH3) + ammonium (NH4))nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, dissolved nitrate (NO3)', N'Dissolved nitrate (NO3) nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, dissolved nitrite (NO2)', N'Dissolved nitrite (NO2) nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, dissolved nitrite (NO2) + nitrate (NO3)', N'Dissolved nitrite (NO2) + nitrate (NO3) nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, Dissolved Organic', N'Dissolved Organic Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, gas', N'Gaseous Nitrogen (N2)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, inorganic', N'Total Inorganic Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, NH3', N'Free Ammonia (NH3)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, NH3 + NH4', N'Total (free+ionized) Ammonia')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, NH4', N'Ammonium (NH4)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, nitrate (NO3)', N'Nitrate (NO3) Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, nitrite (NO2)', N'Nitrite (NO2) Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, nitrite (NO2) + nitrate (NO3)', N'Nitrite (NO2) + Nitrate (NO3) Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, organic', N'Organic Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, organic kjeldahl', N'Organic Kjeldahl (organic nitrogen + ammonia (NH3) + ammonium (NH4)) nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, particulate organic', N'Particulate Organic Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, total', N'Total Nitrogen (NO3+NO2+NH4+NH3+Organic)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, total dissolved', N'Total dissolved nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, total kjeldahl', N'Total Kjeldahl Nitrogen (Ammonia+Organic) ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen, total organic', N'Total (dissolved + particulate) organic nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen-15', N'15 Nitrogen, Delta Nitrogen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Nitrogen-15, stable isotope ratio delta', N'Difference in the 15N:14N ratio between the sample and standard')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'No vegetation coverage', N'Areal coverage of no vegetation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Odor', N'Odor')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Oxygen flux', N'Oxygen (O2) flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Oxygen, dissolved', N'Dissolved oxygen')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Oxygen, dissolved percent of saturation', N'Dissolved oxygen, percent saturation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Oxygen, dissolved, transducer signal', N'Dissolved oxygen, raw data from sensor')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Oxygen-18', N'18 O, Delta O')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Oxygen-18, stable isotope ratio delta', N'Difference in the 18O:16O ratio between the sample and standard')
GO
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Ozone', N'Ozone (O3)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Parameter', N'Parameter related to a hydrologic process.  An example usage would be for a starge-discharge relation parameter.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Peridinin', N'The phytoplankton pigment Peridinin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Permittivity', N'Permittivity is a physical quantity that describes how an electric field affects, and is affected by a dielectric medium, and is determined by the ability of a material to polarize in response to the field, and thereby reduce the total electric field inside the material. Thus, permittivity relates to a material''s ability to transmit (or "permit") an electric field.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Petroleum hydrocarbon, total', N'Total petroleum hydrocarbon')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'pH', N'pH is the measure of the acidity or alkalinity of a solution. pH is formally a measure of the activity of dissolved hydrogen ions (H+).  Solutions in which the concentration of H+ exceeds that of OH- have a pH value lower than 7.0 and are known as acids. ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Pheophytin', N'Pheophytin (Chlorophyll which has lost the central Mg ion) is a degradation product of Chlorophyll')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, dissolved', N'Dissolved Phosphorus (P)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, dissolved organic', N'Dissolved organic phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, inorganic ', N'Inorganic Phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, organic', N'Organic Phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, orthophosphate', N'Orthophosphate Phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, orthophosphate dissolved', N'Dissolved orthophosphate phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, particulate', N'Particulate phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, particulate organic', N'Particulate organic phosphorus in suspension')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, phosphate (PO4)', N'Phosphate Phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, phosphate flux', N'Phosphate (PO4) flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, polyphosphate', N'Polyphosphate Phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, total', N'Total Phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phosphorus, total dissolved', N'Total dissolved phosphorus')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Phytoplankton', N'Measurement of phytoplankton with no differentiation between species')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Position', N'Position of an element that interacts with water such as reservoir gates')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Potassium', N'Potassium (K)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Potassium, dissolved', N'Dissolved Potassium (K)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Precipitation', N'Precipitation such as rainfall. Should not be confused with settling.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Pressure, absolute', N'Pressure')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Pressure, gauge', N'Pressure relative to the local atmospheric or ambient pressure')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Primary Productivity', N'Primary Productivity')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Program signature', N'A unique data recorder program identifier which is useful for knowing when the source code in the data recorder has been modified.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, incoming longwave', N'Incoming Longwave Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, incoming PAR', N'Incoming Photosynthetically-Active Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, incoming shortwave', N'Incoming Shortwave Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, incoming UV-A', N'Incoming Ultraviolet A Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, incoming UV-B', N'Incoming Ultraviolet B Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, net', N'Net Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, net longwave', N'Net Longwave Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, net PAR', N'Net Photosynthetically-Active Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, net shortwave', N'Net Shortwave radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, outgoing longwave', N'Outgoing Longwave Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, outgoing PAR', N'Outgoing Photosynthetically-Active Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, outgoing shortwave', N'Outgoing Shortwave Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, total incoming', N'Total amount of incoming radiation from all frequencies')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, total outgoing', N'Total amount of outgoing radiation from all frequencies')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Radiation, total shortwave', N'Total Shortwave Radiation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Rainfall rate', N'A measure of the intensity of rainfall, calculated as the depth of water to fall over a given time period if the intensity were to remain constant over that time interval (in/hr, mm/hr, etc)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Real dielectric constant', N'Soil reponse of a reflected standing electromagnetic wave of a particular frequency which is related to the stored energy within the medium.  This is the real portion of the complex dielectric constant.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Recorder code', N'A code used to identifier a data recorder.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Reduction potential', N'Oxidation-reduction potential')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Relative humidity', N'Relative humidity')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Reservoir storage', N'Reservoir water volume')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Respiration, net', N'Net respiration')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Salicornia bigelovii coverage', N'Areal coverage of the plant Salicornia bigelovii')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Salicornia virginica coverage', N'Areal coverage of the plant Salicornia virginica')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Salinity', N'Salinity')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Secchi depth', N'Secchi depth')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Selenium', N'Selenium (Se)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sensible Heat Flux', N'Sensible Heat Flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sequence number', N'A counter of events in a sequence')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Signal-to-noise ratio', N'Signal-to-noise ratio (often abbreviated SNR or S/N) is defined as the ratio of a signal power to the noise power corrupting the signal. The higher the ratio, the less obtrusive the background noise is.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Silica', N'Silica (SiO2)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Silicate', N'Silicate.  Chemical compound containing silicon, oxygen, and one or more metals, e.g., aluminum, barium, beryllium, calcium, iron, magnesium, manganese, potassium, sodium, or zirconium.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Silicic acid', N'Hydrated silica disolved in water')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Silicic acid flux', N'Silicate acid (H4SiO4) flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Silicon', N'Silicon (Si)  ')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Silicon, dissolved', N'Dissolved Silicon (Si)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Snow depth', N'Snow depth')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Snow Water Equivalent', N'The depth of water if a snow cover is completely melted, expressed in units of depth, on a corresponding horizontal surface area.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sodium', N'Sodium (Na)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sodium adsorption ratio', N'Sodium adsorption ratio')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sodium plus potassium', N'Sodium plus potassium')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sodium, dissolved', N'Dissolved Sodium (Na)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sodium, fraction of cations', N'Sodium, fraction of cations')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, fixed Dissolved', N'Fixed Dissolved Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, fixed Suspended', N'Fixed Suspended Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, total', N'Total Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, total Dissolved', N'Total Dissolved Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, total Fixed', N'Total Fixed Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, total Suspended', N'Total Suspended Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, total Volatile', N'Total Volatile Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, volatile Dissolved', N'Volatile Dissolved Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Solids, volatile Suspended', N'Volatile Suspended Solids')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Spartina alterniflora coverage', N'Areal coverage of the plant Spartina alterniflora')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Spartina spartinea coverage', N'Areal coverage of the plant Spartina spartinea')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Specific conductance', N'Specific conductance')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Streamflow', N'The volume of water flowing past a fixed point.  Equivalent to discharge')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Streptococci, fecal', N'Fecal Streptococci')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Strontium', N'Strontium (Sr)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Strontium, dissolved', N'Dissolved Strontium (Sr)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Strontium, total', N'Total Strontium (Sr)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Suaeda linearis coverage', N'Areal coverage of the plant Suaeda linearis')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Suaeda maritima coverage', N'Areal coverage of the plant Suaeda maritima')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sulfate', N'Sulfate (SO4)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sulfate, dissolved', N'Dissolved Sulfate (SO4)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sulfur', N'Sulfur (S)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sulfur dioxide', N'Sulfur dioxide (SO2)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sulfur, organic', N'Organic Sulfur')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sulfur, pyritic', N'Pyritic Sulfur')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Sunshine duration', N'Sunshine duration')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Table overrun error count', N'A counter which counts the number of datalogger table overrun errors')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'TDR waveform relative length', N'Time domain reflextometry, apparent length divided by probe length. Square root of dielectric')
GO
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Temperature', N'Temperature')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Temperature, dew point', N'Dew point temperature')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Temperature, transducer signal', N'Temperature, raw data from sensor')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Thallium', N'Thallium (Tl)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'THSW Index', N'The THSW Index uses temperature, humidity, solar radiation, and wind speed to calculate an apparent temperature.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'THW Index', N'The THW Index uses temperature, humidity, and wind speed to calculate an apparent temperature.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Tide stage', N'Tidal stage')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Tin', N'Tin (Sn)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Titanium', N'Titanium (Ti)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Transient species coverage', N'Areal coverage of transient species')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Transpiration', N'Transpiration')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'TSI', N'Carlson Trophic State Index is a measurement of eutrophication based on Secchi depth')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Turbidity', N'Turbidity')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Uranium', N'Uranium (U)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Urea', N'Urea ((NH2)2CO)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Urea flux', N'Urea ((NH2)2CO) flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Vanadium', N'Vanadium (V)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Vapor pressure', N'The pressure of a vapor in equilibrium with its non-vapor phases')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Vapor pressure deficit', N'The difference between the actual water vapor pressure and the saturation of water vapor pressure at a particular temperature.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Velocity', N'The velocity of a substance, fluid or object')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Visibility', N'Visibility')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Voltage', N'Voltage or Electrical Potential')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Volume', N'Volume. To quantify discharge or hydrograph volume or some other volume measurement.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Volumetric water content', N'Volume of liquid water relative to bulk volume. Used for example to quantify soil moisture')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Watchdog error count', N'A counter which counts the number of total datalogger watchdog errors')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Water depth', N'Water depth is the distance between the water surface and the bottom of the water body at a specific location specified by the site location and offset.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Water depth, averaged', N'Water depth averaged over a channel cross-section or water body.  Averaging method to be specified in methods.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Water flux', N'Water Flux')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Water level', N'Water level relative to datum. The datum may be local or global such as NGVD 1929 and should be specified in the method description for associated data values.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Water potential', N'Water potential is the potential energy of water relative to pure free water (e.g. deionized water) in reference conditions. It quantifies the tendency of water to move from one area to another due to osmosis, gravity, mechanical pressure, or matrix effects including surface tension.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Water vapor density', N'Water vapor density')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wave height', N'The height of a surface wave, measured as the difference in elevation between the wave crest and an adjacent trough.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Weather conditions', N'Weather conditions')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Well flow rate', N'Flow rate from well while pumping')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wellhead pressure', N'The pressure exerted by the fluid at the wellhead or casinghead after the well has been shut off for a period of time, typically 24 hours')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wind chill', N'The effect of wind on the temperature felt on human skin.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wind direction', N'Wind direction')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wind gust direction', N'Direction of gusts of wind')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wind gust speed', N'Speed of gusts of wind')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wind Run', N'The length of flow of air past a point over a time interval. Windspeed times the interval of time.')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wind speed', N'Wind speed')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wind stress', N'Drag or trangential force per unit area exerted on a surface by the adjacent layer of moving air')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Wrack coverage', N'Areal coverage of dead vegetation')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Zeaxanthin', N'The phytoplankton pigment Zeaxanthin')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Zinc', N'Zinc (Zn)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Zinc, dissolved', N'Dissolved Zinc (Zn)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Zircon, dissolved', N'Dissolved Zircon (Zr)')
INSERT [dbo].[VariableNameCV] ([Term], [Definition]) VALUES (N'Zooplankton', N'Zooplanktonic organisms, non-specific')
INSERT [dbo].[VerticalDatumCV] ([Term], [Definition]) VALUES (N'MSL', N'Mean Sea Level')
INSERT [dbo].[VerticalDatumCV] ([Term], [Definition]) VALUES (N'NAVD88', N'North American Vertical Datum of 1988')
INSERT [dbo].[VerticalDatumCV] ([Term], [Definition]) VALUES (N'NGVD29', N'National Geodetic Vertical Datum of 1929')
INSERT [dbo].[VerticalDatumCV] ([Term], [Definition]) VALUES (N'Unknown', N'The vertical datum is unknown')
SET ANSI_PADDING ON
GO
/****** Object:  Index [UNIQUE_DataValues]    Script Date: 6/1/2017 11:13:16 PM ******/
ALTER TABLE [dbo].[DataValues] ADD  CONSTRAINT [UNIQUE_DataValues] UNIQUE NONCLUSTERED 
(
	[DataValue] ASC,
	[ValueAccuracy] ASC,
	[LocalDateTime] ASC,
	[UTCOffset] ASC,
	[DateTimeUTC] ASC,
	[SiteID] ASC,
	[VariableID] ASC,
	[OffsetValue] ASC,
	[OffsetTypeID] ASC,
	[CensorCode] ASC,
	[QualifierID] ASC,
	[MethodID] ASC,
	[SourceID] ASC,
	[SampleID] ASC,
	[DerivedFromID] ASC,
	[QualityControlLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_Sites_SiteCode]    Script Date: 6/1/2017 11:13:16 PM ******/
ALTER TABLE [dbo].[Sites] ADD  CONSTRAINT [AK_Sites_SiteCode] UNIQUE NONCLUSTERED 
(
	[SiteCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [AK_Variables_VariableCode]    Script Date: 6/1/2017 11:13:16 PM ******/
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [AK_Variables_VariableCode] UNIQUE NONCLUSTERED 
(
	[VariableCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DataValues] ADD  CONSTRAINT [DF_DataValues_CensorCode]  DEFAULT ('nc') FOR [CensorCode]
GO
ALTER TABLE [dbo].[DataValues] ADD  CONSTRAINT [DF_DataValues_MethodID]  DEFAULT ((0)) FOR [MethodID]
GO
ALTER TABLE [dbo].[DataValues] ADD  CONSTRAINT [DF_DataValues_QualityControlLevelID]  DEFAULT ((-9999)) FOR [QualityControlLevelID]
GO
ALTER TABLE [dbo].[ISOMetadata] ADD  CONSTRAINT [DF_ISOMetadata_TopicCategory]  DEFAULT ('Unknown') FOR [TopicCategory]
GO
ALTER TABLE [dbo].[ISOMetadata] ADD  CONSTRAINT [DF_ISOMetadata_Title]  DEFAULT ('Unknown') FOR [Title]
GO
ALTER TABLE [dbo].[ISOMetadata] ADD  CONSTRAINT [DF_ISOMetadata_Abstract]  DEFAULT ('Unknown') FOR [Abstract]
GO
ALTER TABLE [dbo].[ISOMetadata] ADD  CONSTRAINT [DF_ISOMetadata_ProfileVersion]  DEFAULT ('Unknown') FOR [ProfileVersion]
GO
ALTER TABLE [dbo].[LabMethods] ADD  CONSTRAINT [DF_LabMethods_LabName]  DEFAULT ('Unknown') FOR [LabName]
GO
ALTER TABLE [dbo].[LabMethods] ADD  CONSTRAINT [DF_LabMethods_LabOrganization]  DEFAULT ('Unknown') FOR [LabOrganization]
GO
ALTER TABLE [dbo].[LabMethods] ADD  CONSTRAINT [DF_LabMethods_LabMethodName]  DEFAULT ('Unknown') FOR [LabMethodName]
GO
ALTER TABLE [dbo].[LabMethods] ADD  CONSTRAINT [DF_LabMethods_LabMethodDescription]  DEFAULT ('Unknown') FOR [LabMethodDescription]
GO
ALTER TABLE [dbo].[Samples] ADD  CONSTRAINT [DF_Samples_SampleType]  DEFAULT ('Unknown') FOR [SampleType]
GO
ALTER TABLE [dbo].[Samples] ADD  CONSTRAINT [DF_Samples_LabMethodID]  DEFAULT ((0)) FOR [LabMethodID]
GO
ALTER TABLE [dbo].[Sites] ADD  CONSTRAINT [DF_Sites_LatLongDatumID]  DEFAULT ((0)) FOR [LatLongDatumID]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_ContactName]  DEFAULT ('Unknown') FOR [ContactName]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_Phone]  DEFAULT ('Unknown') FOR [Phone]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_Email]  DEFAULT ('Unknown') FOR [Email]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_Address]  DEFAULT ('Unknown') FOR [Address]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_City]  DEFAULT ('Unknown') FOR [City]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_State]  DEFAULT ('Unknown') FOR [State]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_ZipCode]  DEFAULT ('Unknown') FOR [ZipCode]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_Citation]  DEFAULT ('Unknown') FOR [Citation]
GO
ALTER TABLE [dbo].[Sources] ADD  CONSTRAINT [DF_Sources_MetadataID]  DEFAULT ((0)) FOR [MetadataID]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_Speciation]  DEFAULT ('Not Applicable') FOR [Speciation]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_SampleMedium]  DEFAULT ('Unknown') FOR [SampleMedium]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_ValueType]  DEFAULT ('Unknown') FOR [ValueType]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_IsRegular]  DEFAULT ((0)) FOR [IsRegular]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_TimeSupport]  DEFAULT ((0)) FOR [TimeSupport]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_TimeUnitsID]  DEFAULT ((103)) FOR [TimeUnitsID]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_DataType]  DEFAULT ('Unknown') FOR [DataType]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_GeneralCategory]  DEFAULT ('Unknown') FOR [GeneralCategory]
GO
ALTER TABLE [dbo].[Variables] ADD  CONSTRAINT [DF_Variables_NoDataValue]  DEFAULT ((-9999)) FOR [NoDataValue]
GO
ALTER TABLE [dbo].[Categories]  WITH NOCHECK ADD  CONSTRAINT [FK_Categories_Variables] FOREIGN KEY([VariableID])
REFERENCES [dbo].[Variables] ([VariableID])
GO
ALTER TABLE [dbo].[Categories] CHECK CONSTRAINT [FK_Categories_Variables]
GO
ALTER TABLE [dbo].[DataValues]  WITH CHECK ADD  CONSTRAINT [FK_DataValues_CensorCodeCV] FOREIGN KEY([CensorCode])
REFERENCES [dbo].[CensorCodeCV] ([Term])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_CensorCodeCV]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_Methods] FOREIGN KEY([MethodID])
REFERENCES [dbo].[Methods] ([MethodID])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_Methods]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_OffsetTypes] FOREIGN KEY([OffsetTypeID])
REFERENCES [dbo].[OffsetTypes] ([OffsetTypeID])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_OffsetTypes]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_Qualifiers] FOREIGN KEY([QualifierID])
REFERENCES [dbo].[Qualifiers] ([QualifierID])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_Qualifiers]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_QualityControlLevels] FOREIGN KEY([QualityControlLevelID])
REFERENCES [dbo].[QualityControlLevels] ([QualityControlLevelID])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_QualityControlLevels]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_Samples] FOREIGN KEY([SampleID])
REFERENCES [dbo].[Samples] ([SampleID])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_Samples]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_Sites] FOREIGN KEY([SiteID])
REFERENCES [dbo].[Sites] ([SiteID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_Sites]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_Sources] FOREIGN KEY([SourceID])
REFERENCES [dbo].[Sources] ([SourceID])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_Sources]
GO
ALTER TABLE [dbo].[DataValues]  WITH NOCHECK ADD  CONSTRAINT [FK_DataValues_Variables] FOREIGN KEY([VariableID])
REFERENCES [dbo].[Variables] ([VariableID])
GO
ALTER TABLE [dbo].[DataValues] CHECK CONSTRAINT [FK_DataValues_Variables]
GO
ALTER TABLE [dbo].[DerivedFrom]  WITH NOCHECK ADD  CONSTRAINT [FK_DerivedFrom_DataValues] FOREIGN KEY([ValueID])
REFERENCES [dbo].[DataValues] ([ValueID])
GO
ALTER TABLE [dbo].[DerivedFrom] CHECK CONSTRAINT [FK_DerivedFrom_DataValues]
GO
ALTER TABLE [dbo].[Groups]  WITH NOCHECK ADD  CONSTRAINT [FK_Groups_DataValues] FOREIGN KEY([ValueID])
REFERENCES [dbo].[DataValues] ([ValueID])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_DataValues]
GO
ALTER TABLE [dbo].[Groups]  WITH CHECK ADD  CONSTRAINT [FK_Groups_GroupDescriptions] FOREIGN KEY([GroupID])
REFERENCES [dbo].[GroupDescriptions] ([GroupID])
GO
ALTER TABLE [dbo].[Groups] CHECK CONSTRAINT [FK_Groups_GroupDescriptions]
GO
ALTER TABLE [dbo].[ISOMetadata]  WITH CHECK ADD  CONSTRAINT [FK_ISOMetadata_TopicCategoryCV] FOREIGN KEY([TopicCategory])
REFERENCES [dbo].[TopicCategoryCV] ([Term])
GO
ALTER TABLE [dbo].[ISOMetadata] CHECK CONSTRAINT [FK_ISOMetadata_TopicCategoryCV]
GO
ALTER TABLE [dbo].[OffsetTypes]  WITH CHECK ADD  CONSTRAINT [FK_OffsetTypes_Units] FOREIGN KEY([OffsetUnitsID])
REFERENCES [dbo].[Units] ([UnitsID])
GO
ALTER TABLE [dbo].[OffsetTypes] CHECK CONSTRAINT [FK_OffsetTypes_Units]
GO
ALTER TABLE [dbo].[Samples]  WITH NOCHECK ADD  CONSTRAINT [FK_Samples_LabMethods] FOREIGN KEY([LabMethodID])
REFERENCES [dbo].[LabMethods] ([LabMethodID])
GO
ALTER TABLE [dbo].[Samples] CHECK CONSTRAINT [FK_Samples_LabMethods]
GO
ALTER TABLE [dbo].[Samples]  WITH CHECK ADD  CONSTRAINT [FK_Samples_SampleTypeCV] FOREIGN KEY([SampleType])
REFERENCES [dbo].[SampleTypeCV] ([Term])
GO
ALTER TABLE [dbo].[Samples] CHECK CONSTRAINT [FK_Samples_SampleTypeCV]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_SiteTypeCV] FOREIGN KEY([SiteType])
REFERENCES [dbo].[SiteTypeCV] ([Term])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_SiteTypeCV]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_SpatialReferences] FOREIGN KEY([LatLongDatumID])
REFERENCES [dbo].[SpatialReferences] ([SpatialReferenceID])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_SpatialReferences]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_SpatialReferences1] FOREIGN KEY([LocalProjectionID])
REFERENCES [dbo].[SpatialReferences] ([SpatialReferenceID])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_SpatialReferences1]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [FK_Sites_VerticalDatumCV] FOREIGN KEY([VerticalDatum])
REFERENCES [dbo].[VerticalDatumCV] ([Term])
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [FK_Sites_VerticalDatumCV]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [FK_Sources_ISOMetaData] FOREIGN KEY([MetadataID])
REFERENCES [dbo].[ISOMetadata] ([MetadataID])
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [FK_Sources_ISOMetaData]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_DataTypeCV] FOREIGN KEY([DataType])
REFERENCES [dbo].[DataTypeCV] ([Term])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_DataTypeCV]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_GeneralCategoryCV] FOREIGN KEY([GeneralCategory])
REFERENCES [dbo].[GeneralCategoryCV] ([Term])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_GeneralCategoryCV]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_SampleMediumCV] FOREIGN KEY([SampleMedium])
REFERENCES [dbo].[SampleMediumCV] ([Term])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_SampleMediumCV]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_SpeciationCV] FOREIGN KEY([Speciation])
REFERENCES [dbo].[SpeciationCV] ([Term])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_SpeciationCV]
GO
ALTER TABLE [dbo].[Variables]  WITH NOCHECK ADD  CONSTRAINT [FK_Variables_Units] FOREIGN KEY([VariableUnitsID])
REFERENCES [dbo].[Units] ([UnitsID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_Units]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_Units1] FOREIGN KEY([TimeUnitsID])
REFERENCES [dbo].[Units] ([UnitsID])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_Units1]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_ValueTypeCV] FOREIGN KEY([ValueType])
REFERENCES [dbo].[ValueTypeCV] ([Term])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_ValueTypeCV]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [FK_Variables_VariableNameCV] FOREIGN KEY([VariableName])
REFERENCES [dbo].[VariableNameCV] ([Term])
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [FK_Variables_VariableNameCV]
GO
ALTER TABLE [dbo].[CensorCodeCV]  WITH CHECK ADD  CONSTRAINT [CK_CensorCodeCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[CensorCodeCV] CHECK CONSTRAINT [CK_CensorCodeCV_Term]
GO
ALTER TABLE [dbo].[DataTypeCV]  WITH CHECK ADD  CONSTRAINT [CK_DataTypeCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[DataTypeCV] CHECK CONSTRAINT [CK_DataTypeCV_Term]
GO
ALTER TABLE [dbo].[GeneralCategoryCV]  WITH CHECK ADD  CONSTRAINT [CK_GeneralCategoryCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[GeneralCategoryCV] CHECK CONSTRAINT [CK_GeneralCategoryCV_Term]
GO
ALTER TABLE [dbo].[ISOMetadata]  WITH CHECK ADD  CONSTRAINT [CK_ISOMetadata_ProfileVersion] CHECK  ((NOT [ProfileVersion] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[ISOMetadata] CHECK CONSTRAINT [CK_ISOMetadata_ProfileVersion]
GO
ALTER TABLE [dbo].[ISOMetadata]  WITH CHECK ADD  CONSTRAINT [CK_ISOMetadata_Title] CHECK  ((NOT [Title] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[ISOMetadata] CHECK CONSTRAINT [CK_ISOMetadata_Title]
GO
ALTER TABLE [dbo].[LabMethods]  WITH CHECK ADD  CONSTRAINT [CK_LabMethods_LabMethodName] CHECK  ((NOT [LabMethodName] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[LabMethods] CHECK CONSTRAINT [CK_LabMethods_LabMethodName]
GO
ALTER TABLE [dbo].[LabMethods]  WITH CHECK ADD  CONSTRAINT [CK_LabMethods_LabName] CHECK  ((NOT [LabName] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[LabMethods] CHECK CONSTRAINT [CK_LabMethods_LabName]
GO
ALTER TABLE [dbo].[LabMethods]  WITH CHECK ADD  CONSTRAINT [CK_LabMethods_LabOrganization] CHECK  ((NOT [LabOrganization] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[LabMethods] CHECK CONSTRAINT [CK_LabMethods_LabOrganization]
GO
ALTER TABLE [dbo].[ODMVersion]  WITH CHECK ADD  CONSTRAINT [CK_ODMVersion_VersionNumber] CHECK  ((NOT [VersionNumber] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[ODMVersion] CHECK CONSTRAINT [CK_ODMVersion_VersionNumber]
GO
ALTER TABLE [dbo].[Qualifiers]  WITH CHECK ADD  CONSTRAINT [CK_Qualifiers_QualifierCode] CHECK  ((NOT [QualifierCode] like (((('%['+char((9)))+char((10)))+char((13)))+char((32)))+']%'))
GO
ALTER TABLE [dbo].[Qualifiers] CHECK CONSTRAINT [CK_Qualifiers_QualifierCode]
GO
ALTER TABLE [dbo].[QualityControlLevels]  WITH CHECK ADD  CONSTRAINT [CK_QualityControlLevels_Definition] CHECK  ((NOT [Definition] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[QualityControlLevels] CHECK CONSTRAINT [CK_QualityControlLevels_Definition]
GO
ALTER TABLE [dbo].[QualityControlLevels]  WITH CHECK ADD  CONSTRAINT [CK_QualityControlLevels_QualityControlLevelCode] CHECK  ((NOT [QualityControlLevelCode] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[QualityControlLevels] CHECK CONSTRAINT [CK_QualityControlLevels_QualityControlLevelCode]
GO
ALTER TABLE [dbo].[SampleMediumCV]  WITH CHECK ADD  CONSTRAINT [CK_SampleMediumCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[SampleMediumCV] CHECK CONSTRAINT [CK_SampleMediumCV_Term]
GO
ALTER TABLE [dbo].[Samples]  WITH CHECK ADD  CONSTRAINT [CK_Samples_LabSampleCode] CHECK  ((NOT [LabSampleCode] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Samples] CHECK CONSTRAINT [CK_Samples_LabSampleCode]
GO
ALTER TABLE [dbo].[SampleTypeCV]  WITH CHECK ADD  CONSTRAINT [CK_SampleTypeCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[SampleTypeCV] CHECK CONSTRAINT [CK_SampleTypeCV_Term]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [CK_Sites_County] CHECK  ((NOT [County] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [CK_Sites_County]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [CK_Sites_Latitude] CHECK  (([Latitude]>=(-90) AND [Latitude]<=(90)))
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [CK_Sites_Latitude]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [CK_Sites_Longitude] CHECK  (([Longitude]>=(-180) AND [Longitude]<=(360)))
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [CK_Sites_Longitude]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [CK_Sites_SiteCode] CHECK  ((NOT [SiteCode] like '%[^-.A-Z0-9/_]%' escape '/' ))
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [CK_Sites_SiteCode]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [CK_Sites_SiteName] CHECK  ((NOT [SiteName] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [CK_Sites_SiteName]
GO
ALTER TABLE [dbo].[Sites]  WITH CHECK ADD  CONSTRAINT [CK_Sites_State] CHECK  ((NOT [State] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sites] CHECK CONSTRAINT [CK_Sites_State]
GO
ALTER TABLE [dbo].[SiteTypeCV]  WITH CHECK ADD  CONSTRAINT [CK_SiteTypeCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[SiteTypeCV] CHECK CONSTRAINT [CK_SiteTypeCV_Term]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_Address] CHECK  ((NOT [Address] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_Address]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_City] CHECK  ((NOT [City] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_City]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_ContactName] CHECK  ((NOT [ContactName] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_ContactName]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_Email] CHECK  ((NOT [Email] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_Email]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_Organization] CHECK  ((NOT [Organization] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_Organization]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_Phone] CHECK  ((NOT [Phone] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_Phone]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_State] CHECK  ((NOT [State] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_State]
GO
ALTER TABLE [dbo].[Sources]  WITH CHECK ADD  CONSTRAINT [CK_Sources_ZipCode] CHECK  ((NOT [ZipCode] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Sources] CHECK CONSTRAINT [CK_Sources_ZipCode]
GO
ALTER TABLE [dbo].[SpatialReferences]  WITH CHECK ADD  CONSTRAINT [CK_SpatialReferences_SRSName] CHECK  ((NOT [SRSName] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[SpatialReferences] CHECK CONSTRAINT [CK_SpatialReferences_SRSName]
GO
ALTER TABLE [dbo].[SpeciationCV]  WITH CHECK ADD  CONSTRAINT [CK_SpeciationCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[SpeciationCV] CHECK CONSTRAINT [CK_SpeciationCV_Term]
GO
ALTER TABLE [dbo].[TopicCategoryCV]  WITH CHECK ADD  CONSTRAINT [CK_TopicCategoryCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[TopicCategoryCV] CHECK CONSTRAINT [CK_TopicCategoryCV_Term]
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [CK_Units_UnitsAbbreviation] CHECK  ((NOT [UnitsAbbreviation] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [CK_Units_UnitsAbbreviation]
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [CK_Units_UnitsName] CHECK  ((NOT [UnitsName] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [CK_Units_UnitsName]
GO
ALTER TABLE [dbo].[Units]  WITH CHECK ADD  CONSTRAINT [CK_Units_UnitsType] CHECK  ((NOT [UnitsType] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[Units] CHECK CONSTRAINT [CK_Units_UnitsType]
GO
ALTER TABLE [dbo].[ValueTypeCV]  WITH CHECK ADD  CONSTRAINT [CK_ValueTypeCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[ValueTypeCV] CHECK CONSTRAINT [CK_ValueTypeCV_Term]
GO
ALTER TABLE [dbo].[VariableNameCV]  WITH CHECK ADD  CONSTRAINT [CK_VariableNameCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[VariableNameCV] CHECK CONSTRAINT [CK_VariableNameCV_Term]
GO
ALTER TABLE [dbo].[Variables]  WITH CHECK ADD  CONSTRAINT [CK_Variables_VariableCode] CHECK  ((NOT [VariableCode] like '%[^-.A-Z0-9/_]%' escape '/' ))
GO
ALTER TABLE [dbo].[Variables] CHECK CONSTRAINT [CK_Variables_VariableCode]
GO
ALTER TABLE [dbo].[VerticalDatumCV]  WITH CHECK ADD  CONSTRAINT [CK_VerticalDatumCV_Term] CHECK  ((NOT [Term] like ((('%['+char((9)))+char((10)))+char((13)))+']%'))
GO
ALTER TABLE [dbo].[VerticalDatumCV] CHECK CONSTRAINT [CK_VerticalDatumCV_Term]
GO
/****** Object:  StoredProcedure [dbo].[spUpdateSeriesCatalog]    Script Date: 6/1/2017 11:13:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jeff Horsburgh
-- Create date: 10-5-2006
-- Modified:  1-31-2007
-- Description:	Clears the SeriesCatalog table
-- and regenerates it from scratch.
-- =============================================

CREATE PROCEDURE [dbo].[spUpdateSeriesCatalog] AS

--Clear out the entire SeriesCatalog Table
DELETE FROM  [SeriesCatalog]

--Reset the primary key field
DBCC CHECKIDENT (SeriesCatalog, RESEED, 0)

--Recreate the records in the SeriesCatalog Table
INSERT INTO [SeriesCatalog]
SELECT     dv.SiteID, s.SiteCode, s.SiteName, s.SiteType, dv.VariableID, v.VariableCode, 
           v.VariableName, v.Speciation, v.VariableUnitsID, u.UnitsName AS VariableUnitsName, v.SampleMedium, 
           v.ValueType, v.TimeSupport, v.TimeUnitsID, u1.UnitsName AS TimeUnitsName, v.DataType, 
           v.GeneralCategory, dv.MethodID, m.MethodDescription, dv.SourceID, so.Organization, 
           so.SourceDescription, so.Citation, dv.QualityControlLevelID, qc.QualityControlLevelCode, dv.BeginDateTime, 
           dv.EndDateTime, dv.BeginDateTimeUTC, dv.EndDateTimeUTC, dv.ValueCount 
FROM  (
SELECT SiteID, VariableID, MethodID, QualityControlLevelID, SourceID, MIN(LocalDateTime) AS BeginDateTime, 
           MAX(LocalDateTime) AS EndDateTime, MIN(DateTimeUTC) AS BeginDateTimeUTC, MAX(DateTimeUTC) AS EndDateTimeUTC, 
		   COUNT(DataValue) AS ValueCount
FROM DataValues
GROUP BY SiteID, VariableID, MethodID, QualityControlLevelID, SourceID) dv
           INNER JOIN dbo.Sites s ON dv.SiteID = s.SiteID 
		   INNER JOIN dbo.Variables v ON dv.VariableID = v.VariableID 
		   INNER JOIN dbo.Units u ON v.VariableUnitsID = u.UnitsID 
		   INNER JOIN dbo.Methods m ON dv.MethodID = m.MethodID 
		   INNER JOIN dbo.Units u1 ON v.TimeUnitsID = u1.UnitsID 
		   INNER JOIN dbo.Sources so ON dv.SourceID = so.SourceID 
		   INNER JOIN dbo.QualityControlLevels qc ON dv.QualityControlLevelID = qc.QualityControlLevelID
GROUP BY   dv.SiteID, s.SiteCode, s.SiteName, s.SiteType, dv.VariableID, v.VariableCode, v.VariableName, v.Speciation,
           v.VariableUnitsID, u.UnitsName, v.SampleMedium, v.ValueType, v.TimeSupport, v.TimeUnitsID, u1.UnitsName, 
		   v.DataType, v.GeneralCategory, dv.MethodID, m.MethodDescription, dv.SourceID, so.Organization, 
		   so.SourceDescription, so.Citation, dv.QualityControlLevelID, qc.QualityControlLevelCode, dv.BeginDateTime,
		   dv.EndDateTime, dv.BeginDateTimeUTC, dv.EndDateTimeUTC, dv.ValueCount
ORDER BY   dv.SiteID, dv.VariableID, v.VariableUnitsID






GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CensorCodeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'CensorCodeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 9:57:00 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/14/2006 9:57:00 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'CensorCodeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'4' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CensorCodeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'觹洌乧쮻峯㹭鷰' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'DataTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'萌冘킱䤬ඞ繓ꖬꓜ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'DataTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 10:31:20 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/14/2006 10:31:20 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'DataTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'DataTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'鹰퓬⻃䤱⒑劶踏꫸' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'GeneralCategoryCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'GUID', @value=N'춤༑ᗍ䦳㖇綆᧏㍣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'GeneralCategoryCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 10:31:54 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/15/2006 1:59:39 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'GeneralCategoryCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'GeneralCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'SampleMediumCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'SampleMediumCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 10:28:35 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/14/2006 10:28:35 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SampleMediumCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleMediumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'SampleTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'SampleTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 10:40:20 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/14/2006 10:40:20 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'SampleTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SampleTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'TopicCategoryCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'TopicCategoryCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/15/2006 2:03:32 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/15/2006 2:03:32 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'TopicCategoryCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TopicCategoryCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ValueTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'ValueTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 10:29:10 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/14/2006 10:29:31 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'ValueTypeCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ValueTypeCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VariableCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VariableCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 10:00:56 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/14/2006 10:01:17 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'VariableCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VariableNameCV'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Term' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VerticalDatumCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Term'
GO
EXEC sys.sp_addextendedproperty @name=N'AllowZeroLength', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'CollatingOrder', @value=N'1033' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnHidden', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnOrder', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'ColumnWidth', @value=N'-1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'DataUpdatable', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DisplayControl', @value=N'109' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMEMode', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_IMESentMode', @value=N'3' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'OrdinalPosition', @value=N'1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Required', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Size', @value=N'50' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceField', @value=N'Definition' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'SourceTable', @value=N'VerticalDatumCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Type', @value=N'10' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'UnicodeCompression', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV', @level2type=N'COLUMN',@level2name=N'Definition'
GO
EXEC sys.sp_addextendedproperty @name=N'Attributes', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'DateCreated', @value=N'6/14/2006 11:21:53 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'LastUpdated', @value=N'6/14/2006 11:21:53 PM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DefaultView', @value=N'2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_OrderByOn', @value=N'False' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Orientation', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Name', @value=N'VerticalDatumCV' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'RecordCount', @value=N'0' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
EXEC sys.sp_addextendedproperty @name=N'Updatable', @value=N'True' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VerticalDatumCV'
GO
