USE [Nishwik]
GO
/****** Object:  Table [ann].[AlertsSchedular]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[AlertsSchedular](
	[SchedularId] [int] IDENTITY(1,1) NOT NULL,
	[SoftwareId] [int] NULL,
	[IName] [varchar](200) NULL,
	[ICode] [varchar](10) NULL,
	[IDesc] [varchar](1000) NULL,
	[FrequencyInMinutes] [int] NULL,
	[SchedularType] [varchar](100) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SchedularId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ann].[AlertsServiceMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[AlertsServiceMaster](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](100) NULL,
	[SDesc] [varchar](1000) NULL,
	[AlertType] [varchar](20) NULL,
	[HasAttachment] [int] NULL,
	[AttachmentType] [varchar](100) NULL,
	[AttachmentPath] [varchar](500) NULL,
	[AttachmentFileType] [varchar](50) NULL,
	[OutputFileName] [varchar](100) NULL,
	[DataSourceType] [varchar](30) NULL,
	[DataSourceDef] [nvarchar](4000) NULL,
	[PostSendDataSourceType] [varchar](30) NULL,
	[PostSendDataSourceDef] [nvarchar](4000) NULL,
	[EmailTo] [varchar](1000) NULL,
	[CCTo] [varchar](1000) NULL,
	[BccTo] [nvarchar](max) NULL,
	[ASubject] [varchar](1000) NULL,
	[ABody] [nvarchar](max) NULL,
	[WATemplateName] [varchar](50) NULL,
	[WATemplate] [nvarchar](max) NULL,
	[WALanguageCode] [nvarchar](30) NULL,
	[DBConnid] [int] NULL,
	[AlertConfigId] [int] NULL,
	[SchedularId] [int] NULL,
	[LastExecutedOn] [datetime] NULL,
	[NextExecutionTime] [datetime] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ann].[AlertsServiceSchedular]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[AlertsServiceSchedular](
	[MappperId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[SchedularId] [int] NULL,
	[LastExecutionTime] [datetime] NULL,
	[NextExecutionTime] [datetime] NULL,
	[StartsFrom] [datetime] NULL,
	[EndsOn] [datetime] NULL,
	[DailyStartOn] [time](3) NULL,
	[DailyEndsOn] [time](3) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatebBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappperId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ann].[AlertsServiceVariables]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[AlertsServiceVariables](
	[VariableId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceId] [int] NULL,
	[VarInstance] [varchar](100) NULL,
	[VarValue] [varchar](100) NULL,
	[VarType] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ann].[DBConnectionMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[DBConnectionMaster](
	[DBConnId] [int] IDENTITY(1,1) NOT NULL,
	[ConnName] [varchar](100) NULL,
	[ServerName] [nvarchar](200) NULL,
	[UserName] [varchar](100) NULL,
	[Passwrd] [varchar](200) NULL,
	[DBName] [varchar](100) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DBConnId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ann].[EmailConfig]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[EmailConfig](
	[EmailConfigId] [int] IDENTITY(1,1) NOT NULL,
	[IName] [varchar](100) NULL,
	[IDesc] [varchar](1000) NULL,
	[IHost] [varchar](500) NULL,
	[IPort] [varchar](10) NULL,
	[IFrom] [varchar](100) NULL,
	[IPassword] [varchar](100) NULL,
	[IEnableSsl] [bit] NULL,
	[IsBodyHtml] [bit] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](200) NULL,
	[OtherDetail4] [varchar](200) NULL,
	[OtherDetail5] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[EmailConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ann].[FileExtension]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[FileExtension](
	[FTId] [int] IDENTITY(1,1) NOT NULL,
	[FileType] [varchar](100) NULL,
	[FileUploadExtension] [varchar](50) NULL,
	[FileSaveExtension] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FTId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ann].[NotificationHistory]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[NotificationHistory](
	[NotificationId] [bigint] IDENTITY(1,1) NOT NULL,
	[NType] [varchar](100) NULL,
	[NSubject] [varchar](500) NULL,
	[NContent] [nvarchar](max) NULL,
	[NTo] [varchar](1000) NULL,
	[NCc] [varchar](1000) NULL,
	[NBcc] [nvarchar](max) NULL,
	[NStatus] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
	[ScheduledDate] [datetime] NULL,
	[AttachmentPath] [varchar](1000) NULL,
	[RetryCount] [int] NULL,
	[RetryDate] [datetime] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ann].[NotificationMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[NotificationMaster](
	[NotificationId] [bigint] IDENTITY(1,1) NOT NULL,
	[AlertConfigId] [int] NULL,
	[NType] [varchar](100) NULL,
	[NSubject] [varchar](500) NULL,
	[NContent] [nvarchar](max) NULL,
	[NTo] [varchar](1000) NULL,
	[NCc] [varchar](1000) NULL,
	[NBcc] [nvarchar](max) NULL,
	[NStatus] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
	[ScheduledDate] [datetime] NULL,
	[AttachmentPath] [varchar](1000) NULL,
	[RetryCount] [int] NULL,
	[RetryDate] [datetime] NULL,
	[PostSendDataSourceType] [varchar](30) NULL,
	[PostSendDataSourceDef] [nvarchar](4000) NULL,
	[DBConnId] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ann].[WhatsAppConfig]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ann].[WhatsAppConfig](
	[WAConfigId] [int] IDENTITY(1,1) NOT NULL,
	[IName] [varchar](100) NULL,
	[IDesc] [varchar](1000) NULL,
	[WAUrl] [nvarchar](500) NULL,
	[AccessToken] [varchar](4000) NULL,
	[MProduct] [varchar](100) NULL,
	[IType] [varchar](100) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[WAConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[AlertsSchedular]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[AlertsSchedular](
	[SchedularId] [int] NULL,
	[IName] [varchar](200) NULL,
	[ICode] [varchar](10) NULL,
	[IDesc] [varchar](1000) NULL,
	[FrequencyInMinutes] [int] NULL,
	[SchedularType] [varchar](100) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[AlertsServiceMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[AlertsServiceMaster](
	[ServiceId] [int] NULL,
	[Title] [varchar](100) NULL,
	[SDesc] [varchar](1000) NULL,
	[AlertType] [varchar](20) NULL,
	[HasAttachment] [int] NULL,
	[AttachmentType] [varchar](100) NULL,
	[AttachmentPath] [varchar](500) NULL,
	[AttachmentFileType] [varchar](50) NULL,
	[OutputFileName] [varchar](100) NULL,
	[DataSourceType] [varchar](30) NULL,
	[DataSourceDef] [nvarchar](4000) NULL,
	[PostSendDataSourceType] [varchar](30) NULL,
	[PostSendDataSourceDef] [nvarchar](4000) NULL,
	[EmailTo] [varchar](1000) NULL,
	[CCTo] [varchar](1000) NULL,
	[BccTo] [nvarchar](max) NULL,
	[ASubject] [varchar](1000) NULL,
	[ABody] [nvarchar](max) NULL,
	[WATemplateName] [varchar](50) NULL,
	[WATemplate] [nvarchar](max) NULL,
	[WALanguageCode] [nvarchar](30) NULL,
	[DBConnid] [int] NULL,
	[AlertConfigId] [int] NULL,
	[SchedularId] [int] NULL,
	[LastExecutedOn] [datetime] NULL,
	[NextExecutionTime] [datetime] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[AlertsServiceSchedular]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[AlertsServiceSchedular](
	[MappperId] [int] NULL,
	[ServiceId] [int] NULL,
	[SchedularId] [int] NULL,
	[LastExecutionTime] [datetime] NULL,
	[NextExecutionTime] [datetime] NULL,
	[StartsFrom] [datetime] NULL,
	[EndsOn] [datetime] NULL,
	[DailyStartOn] [time](3) NULL,
	[DailyEndsOn] [time](3) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatebBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[AlertsServiceVariables]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[AlertsServiceVariables](
	[VariableId] [int] NULL,
	[ServiceId] [int] NULL,
	[VarInstance] [varchar](100) NULL,
	[VarValue] [varchar](100) NULL,
	[VarType] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[DBConnectionMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[DBConnectionMaster](
	[DBConnId] [int] NULL,
	[ConnName] [varchar](100) NULL,
	[ServerName] [nvarchar](200) NULL,
	[UserName] [varchar](100) NULL,
	[Passwrd] [varchar](200) NULL,
	[DBName] [varchar](100) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[EmailConfig]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[EmailConfig](
	[EmailConfigId] [int] NULL,
	[IName] [varchar](100) NULL,
	[IDesc] [varchar](1000) NULL,
	[IHost] [varchar](500) NULL,
	[IPort] [varchar](10) NULL,
	[IFrom] [varchar](100) NULL,
	[IPassword] [varchar](100) NULL,
	[IEnableSsl] [bit] NULL,
	[IsBodyHtml] [bit] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](200) NULL,
	[OtherDetail4] [varchar](200) NULL,
	[OtherDetail5] [varchar](200) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[FileExtension]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[FileExtension](
	[FTId] [int] NULL,
	[FileType] [varchar](100) NULL,
	[FileUploadExtension] [varchar](50) NULL,
	[FileSaveExtension] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[NotificationHistory]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[NotificationHistory](
	[NotificationId] [bigint] NULL,
	[NType] [varchar](100) NULL,
	[NSubject] [varchar](500) NULL,
	[NContent] [nvarchar](max) NULL,
	[NTo] [varchar](1000) NULL,
	[NCc] [varchar](1000) NULL,
	[NBcc] [nvarchar](max) NULL,
	[IsDeleted] [int] NULL,
	[NStatus] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
	[ScheduledDate] [datetime] NULL,
	[AttachmentPath] [varchar](1000) NULL,
	[RetryCount] [int] NULL,
	[RetryDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[NotificationMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[NotificationMaster](
	[NotificationId] [bigint] NULL,
	[AlertConfigId] [int] NULL,
	[NType] [varchar](100) NULL,
	[NSubject] [varchar](500) NULL,
	[NContent] [nvarchar](max) NULL,
	[NTo] [varchar](1000) NULL,
	[NCc] [varchar](1000) NULL,
	[NBcc] [nvarchar](max) NULL,
	[NStatus] [varchar](50) NULL,
	[Remarks] [varchar](500) NULL,
	[ScheduledDate] [datetime] NULL,
	[AttachmentPath] [varchar](1000) NULL,
	[RetryCount] [int] NULL,
	[RetryDate] [datetime] NULL,
	[PostSendDataSourceType] [varchar](30) NULL,
	[PostSendDataSourceDef] [nvarchar](4000) NULL,
	[DBConnId] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [annaudit].[WhatsAppConfig]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [annaudit].[WhatsAppConfig](
	[WAConfigId] [int] NULL,
	[IName] [varchar](100) NULL,
	[IDesc] [varchar](1000) NULL,
	[WAUrl] [nvarchar](500) NULL,
	[AccessToken] [varchar](4000) NULL,
	[MProduct] [varchar](100) NULL,
	[IType] [varchar](100) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[CompanyEmailTemplateVariables]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[CompanyEmailTemplateVariables](
	[VariableId] [bigint] NULL,
	[TemplateId] [int] NULL,
	[VarInstance] [varchar](100) NULL,
	[VarValue] [varchar](100) NULL,
	[VarType] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[DocumentNumberLogic]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[DocumentNumberLogic](
	[DetailId] [bigint] NULL,
	[SchoolId] [int] NULL,
	[AdmissionNumberLogic] [nvarchar](max) NULL,
	[ANNPrefix] [varchar](10) NULL,
	[ANNPostFix] [varchar](10) NULL,
	[ANNLengthWOP] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [audit].[DocumentTemplate]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[DocumentTemplate](
	[TemplateId] [bigint] NULL,
	[TName] [varchar](100) NULL,
	[TDesc] [varchar](500) NULL,
	[ModuleName] [varchar](50) NULL,
	[SubModuleName] [varchar](50) NULL,
	[TBody] [nvarchar](max) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [audit].[DocumentTemplateVariables]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[DocumentTemplateVariables](
	[VariableId] [bigint] NULL,
	[TemplateId] [int] NULL,
	[VarInstance] [varchar](100) NULL,
	[VarValue] [varchar](100) NULL,
	[VarType] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[EmailTemplates]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[EmailTemplates](
	[TemplateId] [int] NULL,
	[TName] [varchar](100) NULL,
	[TDesc] [varchar](500) NULL,
	[ModuleName] [varchar](50) NULL,
	[SubModuleName] [varchar](50) NULL,
	[DBConnId] [int] NULL,
	[DataSourceType] [varchar](30) NULL,
	[DataSourceDefination] [varchar](4000) NULL,
	[PostDataSourceType] [varchar](30) NULL,
	[PostDataSourceDefination] [nvarchar](4000) NULL,
	[EmailTO] [varchar](1000) NULL,
	[CCTo] [varchar](1000) NULL,
	[BccTo] [nvarchar](max) NULL,
	[ASubject] [varchar](1000) NULL,
	[ABody] [nvarchar](max) NULL,
	[EmailConfigId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [audit].[EmailTemplateVariables]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[EmailTemplateVariables](
	[VariableId] [bigint] NULL,
	[TemplateId] [int] NULL,
	[VarInstance] [varchar](100) NULL,
	[VarValue] [varchar](100) NULL,
	[VarType] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[MenuFeature]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[MenuFeature](
	[FeatureId] [int] NULL,
	[MenuId] [int] NULL,
	[FName] [varchar](50) NULL,
	[FCode] [varchar](20) NULL,
	[FDescription] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[MenuMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[MenuMaster](
	[MenuId] [int] NULL,
	[MenuName] [varchar](50) NULL,
	[MenuCode] [varchar](50) NULL,
	[MenuDesc] [varchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[ParentMenuId] [int] NULL,
	[DefaultChildMenuId] [int] NULL,
	[MenuIconUrl] [varchar](500) NULL,
	[TemplatePath] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[OPCalendar]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[OPCalendar](
	[CompanyId] [int] NULL,
	[Date] [date] NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[DayName] [varchar](50) NULL,
	[WorkingDayOfYear] [int] NULL,
	[IsWorkingDay] [int] NULL,
	[IsWeekend] [int] NULL,
	[IsHoliday] [int] NULL,
	[Description] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[Roles]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[Roles](
	[RoleId] [int] NULL,
	[RoleName] [varchar](100) NULL,
	[RoleCode] [varchar](50) NULL,
	[RoleDesc] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NULL,
	[GroupName] [varchar](200) NULL,
	[Priority] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[SubRoles]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[SubRoles](
	[SubRoleId] [int] NULL,
	[RoleId] [int] NULL,
	[SubRoleName] [varchar](50) NULL,
	[SubRoleCode] [varchar](50) NULL,
	[SubRoleDesc] [varchar](500) NULL,
	[MenuId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[IsDefault] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[UserLogin]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[UserLogin](
	[LoginId] [int] NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](500) NULL,
	[FailedLoginAttempt] [int] NULL,
	[LastLoggedDate] [datetime] NULL,
	[IsActive] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[UserLoginLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[UserLoginLog](
	[LogId] [bigint] NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](500) NULL,
	[LoggedTime] [datetime] NULL,
	[LogDescription] [varchar](500) NULL,
	[LogStatus] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[UserMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[UserMaster](
	[UserId] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[MobileNo] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[ProfileImage] [varchar](255) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Address] [varchar](500) NULL,
	[Country] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[BloodGroup] [varchar](10) NULL,
	[Gender] [varchar](10) NULL,
	[AadharNumber] [varchar](20) NULL,
	[PanNumber] [varchar](20) NULL,
	[Nationality] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[Caste] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[EmergencyContactName] [varchar](100) NULL,
	[EmergencyContactNo] [varchar](15) NULL,
	[MaritalStatus] [varchar](20) NULL,
	[PinCode] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[UserPermission]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[UserPermission](
	[PermissionId] [int] NULL,
	[FeatureId] [int] NULL,
	[SubRoleId] [int] NULL,
	[FAccess] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[UserRoles]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[UserRoles](
	[UserRoleId] [int] NULL,
	[RoleId] [int] NULL,
	[UserId] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[ValueList]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[ValueList](
	[ValueListId] [int] NULL,
	[VlCode] [varchar](50) NULL,
	[VlName] [varchar](200) NULL,
	[VlDesc] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModuleName] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [audit].[ValueListItem]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [audit].[ValueListItem](
	[ValueListItemId] [int] NULL,
	[ValueListId] [int] NULL,
	[VliCode] [varchar](200) NULL,
	[VliName] [varchar](200) NULL,
	[VliDesc] [varchar](500) NULL,
	[DisplaySeq] [int] NULL,
	[AddField1] [varchar](200) NULL,
	[AddField2] [varchar](200) NULL,
	[AddField3] [varchar](200) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [bbps].[Biller]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbps].[Biller](
	[BillerId] [int] IDENTITY(1,1) NOT NULL,
	[BillerName] [varchar](150) NOT NULL,
	[BillerLogo] [varchar](500) NULL,
	[BillerDetailJson] [nvarchar](max) NULL,
	[CategoryId] [varchar](500) NULL,
	[BillerCode] [varchar](50) NOT NULL,
	[SupportBillFetch] [int] NULL,
	[SupportBillPayment] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BillerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbps].[BillerCategory]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbps].[BillerCategory](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[CategoryIconUrl] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bbps].[BillerParameter]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbps].[BillerParameter](
	[ParameterId] [int] IDENTITY(1,1) NOT NULL,
	[BillerId] [int] NULL,
	[ParameterName] [varchar](100) NOT NULL,
	[DisplayName] [varchar](100) NULL,
	[IsMandatory] [int] NULL,
	[DataType] [varchar](50) NOT NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ParameterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bbps].[BillFetchRequest]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbps].[BillFetchRequest](
	[RequestId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BillerId] [int] NULL,
	[RequestJSON] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[BBPSRefId] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbps].[BillFetchResponse]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbps].[BillFetchResponse](
	[ResponseId] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestId] [bigint] NOT NULL,
	[ResponseJSON] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NULL,
	[BillDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[ErrorCode] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResponseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbps].[BillPayment]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbps].[BillPayment](
	[PaymentId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BillerId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[BBPSRefId] [varchar](100) NULL,
	[TransactionRefNo] [varchar](100) NULL,
	[RequestJSON] [nvarchar](max) NULL,
	[ResponseJSON] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[PaymentDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbps].[ErrorLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbps].[ErrorLog](
	[LogId] [bigint] IDENTITY(1,1) NOT NULL,
	[Source] [varchar](100) NULL,
	[ReferenceId] [bigint] NULL,
	[ErrorCode] [varchar](50) NULL,
	[ErrorMessage] [varchar](255) NULL,
	[RawResponse] [nvarchar](max) NULL,
	[LoggedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbpsaudit].[Biller]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbpsaudit].[Biller](
	[BillerId] [int] NULL,
	[BillerName] [varchar](150) NULL,
	[BillerLogo] [varchar](500) NULL,
	[BillerDetailJson] [nvarchar](max) NULL,
	[CategoryId] [varchar](500) NULL,
	[BillerCode] [varchar](50) NULL,
	[SupportBillFetch] [int] NULL,
	[SupportBillPayment] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbpsaudit].[BillerCategory]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbpsaudit].[BillerCategory](
	[CategoryId] [int] NULL,
	[CategoryName] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[CategoryIconUrl] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [bbpsaudit].[BillerParameter]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbpsaudit].[BillerParameter](
	[ParameterId] [int] NULL,
	[BillerId] [int] NULL,
	[ParameterName] [varchar](100) NULL,
	[DisplayName] [varchar](100) NULL,
	[IsMandatory] [int] NULL,
	[DataType] [varchar](50) NOT NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [bbpsaudit].[BillFetchRequest]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbpsaudit].[BillFetchRequest](
	[RequestId] [bigint] NULL,
	[UserId] [int] NULL,
	[BillerId] [int] NULL,
	[RequestJSON] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[BBPSRefId] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbpsaudit].[BillFetchResponse]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbpsaudit].[BillFetchResponse](
	[ResponseId] [bigint] NULL,
	[RequestId] [bigint] NULL,
	[ResponseJSON] [nvarchar](max) NULL,
	[Amount] [decimal](18, 2) NULL,
	[BillDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[ErrorCode] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbpsaudit].[BillPayment]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbpsaudit].[BillPayment](
	[PaymentId] [bigint] NULL,
	[UserId] [int] NULL,
	[BillerId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[BBPSRefId] [varchar](100) NULL,
	[TransactionRefNo] [varchar](100) NULL,
	[RequestJSON] [nvarchar](max) NULL,
	[ResponseJSON] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[PaymentDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [bbpsaudit].[ErrorLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bbpsaudit].[ErrorLog](
	[LogId] [bigint] NULL,
	[Source] [varchar](100) NULL,
	[ReferenceId] [bigint] NULL,
	[ErrorCode] [varchar](50) NULL,
	[ErrorMessage] [varchar](255) NULL,
	[RawResponse] [nvarchar](max) NULL,
	[LoggedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [ccp].[CreditCard]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccp].[CreditCard](
	[CardId] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [bigint] NULL,
	[CardNumber] [varchar](16) NOT NULL,
	[CVV] [varchar](4) NOT NULL,
	[ExpiryDate] [datetime] NULL,
	[ActivationDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CurrentLimit] [decimal](18, 2) NULL,
	[AvailableLimit] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[CardNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ccp].[CreditCardApplication]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccp].[CreditCardApplication](
	[ApplicationId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NULL,
	[ApplicationDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CreditLimitRequested] [decimal](18, 2) NULL,
	[ApprovedLimit] [decimal](5, 2) NULL,
	[RejectionReason] [varchar](255) NULL,
	[KYCStatus] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ccp].[CreditCardKYC]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccp].[CreditCardKYC](
	[KYCId] [bigint] IDENTITY(1,1) NOT NULL,
	[ApplicationId] [bigint] NULL,
	[DocumentType] [varchar](100) NULL,
	[DocumentNumber] [varchar](50) NULL,
	[FilePath] [varchar](255) NULL,
	[Verified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KYCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ccp].[CreditCardProduct]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccp].[CreditCardProduct](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[Description] [varchar](255) NULL,
	[MaxCreditLimit] [decimal](18, 2) NULL,
	[MinCreditLimit] [decimal](18, 2) NULL,
	[InterestRate] [decimal](5, 2) NULL,
	[TenureMonths] [int] NULL,
	[JoiningFee] [decimal](18, 2) NULL,
	[AnnualFee] [decimal](18, 2) NULL,
	[ContactPhone] [varchar](15) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ccp].[CreditCardRepayment]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccp].[CreditCardRepayment](
	[RepaymentId] [bigint] IDENTITY(1,1) NOT NULL,
	[CardId] [bigint] NULL,
	[BillingMonth] [varchar](7) NULL,
	[DueDate] [datetime] NULL,
	[TotalDue] [decimal](18, 2) NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[LateFee] [decimal](18, 2) NULL,
	[InterestCharged] [decimal](18, 2) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RepaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ccp].[CreditCardTransaction]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccp].[CreditCardTransaction](
	[TransactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[CardID] [bigint] NULL,
	[MerchantName] [varchar](16) NULL,
	[Amount] [decimal](18, 2) NULL,
	[TransactionDate] [datetime] NULL,
	[Description] [varchar](255) NULL,
	[Type] [varchar](50) NULL,
	[EMI_Tenure] [int] NULL,
	[MonthlyEMIAmount] [decimal](18, 2) NULL,
	[RemainingEMIs] [int] NULL,
	[Status] [varchar](50) NULL,
	[ReferenceNo] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [ccpaudit].[CreditCard]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccpaudit].[CreditCard](
	[CardId] [bigint] NULL,
	[ApplicationId] [bigint] NULL,
	[CardNumber] [varchar](16) NULL,
	[CVV] [varchar](4) NULL,
	[ExpiryDate] [datetime] NULL,
	[ActivationDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CurrentLimit] [decimal](18, 2) NULL,
	[AvailableLimit] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ccpaudit].[CreditCardApplication]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccpaudit].[CreditCardApplication](
	[ApplicationId] [bigint] NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[ApplicationDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CreditLimitRequested] [decimal](18, 2) NULL,
	[ApprovedLimit] [decimal](5, 2) NULL,
	[RejectionReason] [varchar](255) NULL,
	[KYCStatus] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ccpaudit].[CreditCardKYC]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccpaudit].[CreditCardKYC](
	[KYCId] [bigint] NULL,
	[ApplicationId] [bigint] NULL,
	[DocumentType] [varchar](100) NULL,
	[DocumentNumber] [varchar](50) NULL,
	[FilePath] [varchar](255) NULL,
	[Verified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ccpaudit].[CreditCardProduct]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccpaudit].[CreditCardProduct](
	[ProductId] [int] NULL,
	[ProductName] [varchar](100) NULL,
	[Description] [varchar](255) NULL,
	[MaxCreditLimit] [decimal](18, 2) NULL,
	[MinCreditLimit] [decimal](18, 2) NULL,
	[InterestRate] [decimal](5, 2) NULL,
	[TenureMonths] [int] NULL,
	[JoiningFee] [decimal](18, 2) NULL,
	[AnnualFee] [decimal](18, 2) NULL,
	[ContactPhone] [varchar](15) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ccpaudit].[CreditCardRepayment]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccpaudit].[CreditCardRepayment](
	[RepaymentId] [bigint] NULL,
	[CardId] [bigint] NULL,
	[BillingMonth] [varchar](7) NULL,
	[DueDate] [datetime] NULL,
	[TotalDue] [decimal](18, 2) NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[LateFee] [decimal](18, 2) NULL,
	[InterestCharged] [decimal](18, 2) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [ccpaudit].[CreditCardTransaction]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [ccpaudit].[CreditCardTransaction](
	[TransactionId] [bigint] NULL,
	[CardID] [bigint] NULL,
	[MerchantName] [varchar](16) NULL,
	[Amount] [decimal](18, 2) NULL,
	[TransactionDate] [datetime] NULL,
	[Description] [varchar](255) NULL,
	[Type] [varchar](50) NULL,
	[EMI_Tenure] [int] NULL,
	[MonthlyEMIAmount] [decimal](18, 2) NULL,
	[RemainingEMIs] [int] NULL,
	[Status] [varchar](50) NULL,
	[ReferenceNo] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentNumberLogic]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentNumberLogic](
	[DetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[AdmissionNumberLogic] [nvarchar](max) NULL,
	[ANNPrefix] [varchar](10) NULL,
	[ANNPostFix] [varchar](10) NULL,
	[ANNLengthWOP] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTemplate]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTemplate](
	[TemplateId] [bigint] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](100) NULL,
	[TDesc] [varchar](500) NULL,
	[ModuleName] [varchar](50) NULL,
	[SubModuleName] [varchar](50) NULL,
	[TBody] [nvarchar](max) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTemplateVariables]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTemplateVariables](
	[VariableId] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NULL,
	[VarInstance] [varchar](100) NULL,
	[VarValue] [varchar](100) NULL,
	[VarType] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplates]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplates](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TName] [varchar](100) NULL,
	[TDesc] [varchar](500) NULL,
	[ModuleName] [varchar](50) NULL,
	[SubModuleName] [varchar](50) NULL,
	[DBConnId] [int] NULL,
	[DataSourceType] [varchar](30) NULL,
	[DataSourceDefination] [varchar](4000) NULL,
	[PostDataSourceType] [varchar](30) NULL,
	[PostDataSourceDefination] [nvarchar](4000) NULL,
	[EmailTO] [varchar](1000) NULL,
	[CCTo] [varchar](1000) NULL,
	[BccTo] [nvarchar](max) NULL,
	[ASubject] [varchar](1000) NULL,
	[ABody] [nvarchar](max) NULL,
	[EmailConfigId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplateVariables]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplateVariables](
	[VariableId] [bigint] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NULL,
	[VarInstance] [varchar](100) NULL,
	[VarValue] [varchar](100) NULL,
	[VarType] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VariableId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuFeature]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuFeature](
	[FeatureId] [int] IDENTITY(1,1) NOT NULL,
	[MenuId] [int] NULL,
	[FName] [varchar](50) NULL,
	[FCode] [varchar](20) NULL,
	[FDescription] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeatureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MenuMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MenuMaster](
	[MenuId] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [varchar](50) NULL,
	[MenuCode] [varchar](50) NULL,
	[MenuDesc] [varchar](500) NULL,
	[DisplayOrder] [int] NULL,
	[ParentMenuId] [int] NULL,
	[DefaultChildMenuId] [int] NULL,
	[MenuIconUrl] [varchar](500) NULL,
	[TemplatePath] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MenuId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OPCalendar]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OPCalendar](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[Day] [int] NULL,
	[DayName] [varchar](50) NULL,
	[WorkingDayOfYear] [int] NULL,
	[IsWorkingDay] [int] NULL,
	[IsWeekend] [int] NULL,
	[IsHoliday] [int] NULL,
	[Description] [varchar](50) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[DayOfWeek] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](100) NULL,
	[RoleCode] [varchar](50) NULL,
	[RoleDesc] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NULL,
	[GroupName] [varchar](200) NULL,
	[Priority] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubRoles]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubRoles](
	[SubRoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[SubRoleName] [varchar](50) NULL,
	[SubRoleCode] [varchar](50) NULL,
	[SubRoleDesc] [varchar](500) NULL,
	[MenuId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[IsDefault] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLogin]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLogin](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](500) NULL,
	[FailedLoginAttempt] [int] NULL,
	[LastLoggedDate] [datetime] NULL,
	[IsActive] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NULL,
	[Status] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserLoginLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserLoginLog](
	[LogId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[UserName] [varchar](50) NULL,
	[UserPassword] [varchar](500) NULL,
	[LoggedTime] [datetime] NULL,
	[LogDescription] [varchar](500) NULL,
	[LogStatus] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[DOB] [datetime] NULL,
	[MobileNo] [varchar](50) NULL,
	[EmailId] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[ProfileImage] [varchar](255) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Address] [varchar](500) NULL,
	[Country] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[BloodGroup] [varchar](10) NULL,
	[Gender] [varchar](10) NULL,
	[AadharNumber] [varchar](20) NULL,
	[PanNumber] [varchar](50) NULL,
	[Nationality] [varchar](50) NULL,
	[Religion] [varchar](50) NULL,
	[Caste] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[EmergencyContactName] [varchar](100) NULL,
	[EmergencyContactNo] [varchar](15) NULL,
	[MaritalStatus] [varchar](20) NULL,
	[PinCode] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserOtpVerification]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOtpVerification](
	[OtpId] [int] IDENTITY(1,1) NOT NULL,
	[MobileNo] [varchar](50) NOT NULL,
	[OTP] [varchar](10) NOT NULL,
	[ExpiryTime] [datetime] NOT NULL,
	[IsUsed] [bit] NULL,
	[Attempts] [int] NULL,
	[LastOtpSentAt] [datetime] NULL,
	[Purpose] [varchar](30) NOT NULL,
	[Status] [varchar](20) NULL,
	[CreatedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OtpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserPermission]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserPermission](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[FeatureId] [int] NULL,
	[SubRoleId] [int] NULL,
	[FAccess] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[UserRoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NULL,
	[UserId] [int] NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserRoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValueList]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValueList](
	[ValueListId] [int] IDENTITY(1,1) NOT NULL,
	[VlCode] [varchar](50) NULL,
	[VlName] [varchar](200) NULL,
	[VlDesc] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ModuleName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ValueListId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValueListItem]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValueListItem](
	[ValueListItemId] [int] IDENTITY(1,1) NOT NULL,
	[ValueListId] [int] NULL,
	[VliCode] [varchar](200) NULL,
	[VliName] [varchar](200) NULL,
	[VliDesc] [varchar](500) NULL,
	[DisplaySeq] [int] NULL,
	[AddField1] [varchar](200) NULL,
	[AddField2] [varchar](200) NULL,
	[AddField3] [varchar](200) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ValueListItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[AppoinmentMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[AppoinmentMaster](
	[AppointmentId] [bigint] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[AppointmentDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[AppointmentDetail](
	[DetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[AppointmentId] [bigint] NULL,
	[AppointmentDay] [varchar](15) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[AppointmentDuration] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[AppointmentScheduleMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[AppointmentScheduleMaster](
	[AppointmentId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[PatientId] [int] NULL,
	[ServiceId] [int] NULL,
	[DoctorId] [int] NULL,
	[AppointmentType] [varchar](200) NULL,
	[AppointmentDate] [datetime] NULL,
	[AppointmentTime] [datetime] NULL,
	[ConsultationMode] [varchar](100) NULL,
	[AppointmentDuration] [int] NULL,
	[status] [varchar](20) NULL,
	[IsFirstVisit] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Description] [varchar](500) NULL,
	[TokenNo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AppointmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[FeedbackMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[FeedbackMaster](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](20) NULL,
	[Rating] [int] NULL,
	[ExperienceLevel] [varchar](20) NULL,
	[Description] [nvarchar](1000) NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[FeedbackPatientDischarge]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[FeedbackPatientDischarge](
	[PatientFeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackId] [int] NULL,
	[PatientId] [int] NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[BedId] [int] NULL,
	[TreatmentId] [int] NULL,
	[DischargeDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PatientFeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[HospitalBedMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[HospitalBedMaster](
	[BedId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[BedNumber] [varchar](50) NULL,
	[BedType] [varchar](50) NULL,
	[Isoccupied] [int] NULL,
	[OccupiedBy] [int] NULL,
	[OccupiedFrom] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[BaseCharge] [decimal](18, 0) NULL,
	[TaxPercentage] [int] NULL,
	[TaxAmount] [decimal](18, 0) NULL,
	[TotalCharge] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[HospitalDocMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[HospitalDocMaster](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[HospitalImgMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[HospitalImgMaster](
	[ImgId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[HospitalMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[HospitalMaster](
	[HospitalId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalName] [varchar](200) NULL,
	[HospitalCode] [varchar](50) NULL,
	[HospitalDesc] [varchar](500) NULL,
	[Address] [varchar](255) NULL,
	[Email] [varchar](100) NULL,
	[ContactNumber] [varchar](20) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[RegistrationNumber] [varchar](50) NULL,
	[HospitalLogoURL] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[HospitalRoomMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[HospitalRoomMaster](
	[RoomId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[WingId] [int] NULL,
	[WardId] [int] NULL,
	[RoomNumber] [varchar](50) NULL,
	[RoomType] [varchar](50) NULL,
	[FloorNumber] [int] NULL,
	[BedCapacity] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoomId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[HospitalWardMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[HospitalWardMaster](
	[WardId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[WingId] [int] NULL,
	[WardName] [varchar](100) NULL,
	[WardCode] [varchar](50) NULL,
	[WardType] [varchar](50) NULL,
	[Capacity] [int] NULL,
	[GenderType] [varchar](20) NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[WardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[HospitalWingMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[HospitalWingMaster](
	[WingId] [bigint] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[WingName] [varchar](100) NULL,
	[WingCode] [varchar](50) NULL,
	[FloorCount] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[WingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[InvoiceDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[InvoiceDetail](
	[DetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [bigint] NULL,
	[Remarks] [varchar](500) NULL,
	[Charges] [decimal](18, 2) NULL,
	[TaxName] [varchar](50) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[DiscountName] [varchar](50) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[DoctorId] [int] NULL,
	[UserId] [int] NULL,
	[BaseAmount] [decimal](18, 2) NULL,
	[PmtStatus] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[InvoiceMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[InvoiceMaster](
	[InvoiceId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNumber] [varchar](100) NULL,
	[InvoiceDate] [datetime] NULL,
	[HospitalId] [int] NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[UserId] [int] NULL,
	[CheckInTime] [datetime] NULL,
	[CheckOutTime] [datetime] NULL,
	[PmtStatus] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[NotificationLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[NotificationLog](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[AppointmentId] [int] NULL,
	[PatientId] [int] NULL,
	[DoctorId] [int] NULL,
	[MessageText] [nvarchar](max) NULL,
	[SentTime] [datetime] NULL,
	[SentStatus] [nvarchar](50) NULL,
	[Channel] [nvarchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[CreatedBy] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [hm].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[OnboardingPreCheck](
	[PreCheckId] [bigint] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PreCheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[PatientBedAllocationMapping]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[PatientBedAllocationMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[PatientId] [int] NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[BedId] [int] NULL,
	[WingId] [int] NULL,
	[OccupiedFrom] [datetime] NULL,
	[OccupiedTo] [datetime] NULL,
	[IsOccupied] [int] NULL,
	[PmtStatus] [varchar](80) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[PatientRegistrationBackup]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[PatientRegistrationBackup](
	[BackupId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[FirstName] [varchar](200) NULL,
	[MiddleName] [varchar](200) NULL,
	[LastName] [varchar](200) NULL,
	[DOB] [date] NULL,
	[MobileNo] [varchar](20) NULL,
	[EmailId] [varchar](200) NULL,
	[Gender] [varchar](10) NULL,
	[AadharNumber] [varchar](20) NULL,
	[ProfileImage] [varchar](max) NULL,
	[Address] [varchar](max) NULL,
	[BackupDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BackupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [hm].[PatientReport]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[PatientReport](
	[ReportId] [bigint] IDENTITY(1,1) NOT NULL,
	[HospitalId] [bigint] NULL,
	[PatientId] [bigint] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[BedId] [bigint] NULL,
	[DoctorId] [bigint] NULL,
	[ReportType] [varchar](100) NULL,
	[ReportName] [varchar](200) NULL,
	[ReportURL] [varchar](500) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ServiceId] [bigint] NULL,
	[TotalCost] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[PrintMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[PrintMaster](
	[PrintId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NULL,
	[HospitalId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [nvarchar](100) NULL,
	[PName] [nvarchar](255) NULL,
	[PDesc] [nvarchar](max) NULL,
	[PContent] [nvarchar](max) NULL,
	[PSeq] [int] NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PrintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [hm].[PrintTemplate]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[PrintTemplate](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateName] [varchar](100) NULL,
	[TemplateType] [varchar](50) NULL,
	[HospitalId] [int] NULL,
	[PageCss] [nvarchar](max) NULL,
	[HeaderHTML] [nvarchar](max) NULL,
	[ClientHeaderHTML] [nvarchar](max) NULL,
	[BodyHTML] [nvarchar](max) NULL,
	[ContinuedFooterHTML] [nvarchar](max) NULL,
	[LastPageFooterHTML] [nvarchar](max) NULL,
	[RowHTML] [nvarchar](max) NULL,
	[LogoImage] [varchar](max) NULL,
	[WatermarkText] [varchar](200) NULL,
	[WatermarkImage] [varchar](max) NULL,
	[PaperSize] [varchar](20) NULL,
	[Orientation] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[RowsInPage] [int] NULL,
	[PrintQuery] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [hm].[ReceiptDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[ReceiptDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterAmt] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[ReceiptMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[ReceiptMaster](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[RStatus] [varchar](20) NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[ServiceDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[ServiceDetail](
	[ServiceDetailId] [int] IDENTITY(1,1) NOT NULL,
	[ServiceDetailName] [varchar](100) NULL,
	[ServiceDescrition] [varchar](500) NULL,
	[Charges] [decimal](18, 2) NULL,
	[ChargeType] [varchar](50) NULL,
	[ChargeBasis] [varchar](100) NULL,
	[ChargeQuantity] [decimal](18, 2) NULL,
	[TotalCharge] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceDetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[ServiceMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[ServiceMaster](
	[ServiceId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NOT NULL,
	[ServiceName] [varchar](100) NULL,
	[ServiceCode] [varchar](50) NULL,
	[ServiceDescription] [varchar](500) NULL,
	[TotalCharge] [decimal](18, 2) NULL,
	[EstimateDays] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[TreatmentPlanDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[TreatmentPlanDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[PlanId] [int] NULL,
	[StaffType] [varchar](50) NULL,
	[StaffId] [int] NULL,
	[ServiceId] [int] NULL,
	[ActionTime] [time](7) NULL,
	[ActionDetail] [varchar](500) NULL,
	[ServiceCost] [decimal](18, 2) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[TaxValue] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[IsCompleted] [int] NULL,
	[DiscountType] [varchar](50) NULL,
	[TaxType] [varchar](50) NULL,
	[PmtStatus] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PlanDate] [datetime] NULL,
	[InvoiceId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[TreatmentPlanMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[TreatmentPlanMaster](
	[PlanId] [int] IDENTITY(1,1) NOT NULL,
	[PatientId] [int] NULL,
	[StartDate] [datetime] NULL,
	[DoctorId] [int] NULL,
	[BedId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[HospitalId] [int] NULL,
	[TotalCost] [decimal](18, 2) NULL,
	[EndDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[TreatmentTemplateDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[TreatmentTemplateDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NULL,
	[StaffType] [varchar](100) NULL,
	[ServiceId] [int] NULL,
	[Actiondetail] [varchar](500) NULL,
	[DiscountPercentage] [int] NULL,
	[TaxPercentage] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ServiceAmount] [decimal](18, 2) NULL,
	[TotalCharge] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[TreatmentTemplateMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[TreatmentTemplateMaster](
	[TemplateId] [int] IDENTITY(1,1) NOT NULL,
	[HospitalId] [int] NULL,
	[TemplateName] [varchar](100) NULL,
	[Remark] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TemplateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hm].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hm].[UserAffiliationMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[HospitalId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Department] [varchar](100) NULL,
	[Specialization] [varchar](100) NULL,
	[Education] [varchar](100) NULL,
	[EmploymentType] [varchar](50) NULL,
	[ConsultationFee] [decimal](18, 2) NULL,
	[YearsOfExperience] [decimal](18, 2) NULL,
	[RegistrationNumber] [varchar](50) NULL,
	[LicensingAuthority] [varchar](100) NULL,
	[YearOfRegistration] [int] NULL,
	[RegistrationDate] [date] NULL,
	[JoiningDate] [date] NULL,
	[ShiftType] [varchar](50) NULL,
	[VisitType] [varchar](50) NULL,
	[ReferredBy] [varchar](100) NULL,
	[SocialLink] [varchar](255) NULL,
	[Allergies] [varchar](255) NULL,
	[ChronicCondition] [varchar](255) NULL,
	[InsuranceProvider] [varchar](255) NULL,
	[InsurancePolicyNo] [varchar](100) NULL,
	[EmiEligibilityStatus] [varchar](50) NULL,
	[LoanReferenceId] [varchar](100) NULL,
	[TermsAccepted] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[AppoinmentMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[AppoinmentMaster](
	[AppointmentId] [bigint] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[AppointmentDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[AppointmentDetail](
	[DetailId] [bigint] NULL,
	[AppointmentId] [bigint] NULL,
	[AppointmentDay] [varchar](15) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[AppointmentDuration] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[AppointmentScheduleMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[AppointmentScheduleMaster](
	[AppointmentId] [int] NULL,
	[HospitalId] [int] NULL,
	[PatientId] [int] NULL,
	[ServiceId] [int] NULL,
	[DoctorId] [int] NULL,
	[AppointmentType] [varchar](200) NULL,
	[AppointmentDate] [datetime] NULL,
	[AppointmentTime] [datetime] NULL,
	[ConsultationMode] [varchar](100) NULL,
	[AppointmentDuration] [int] NULL,
	[status] [varchar](20) NULL,
	[IsFirstVisit] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Description] [varchar](500) NULL,
	[TokenNo] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[FeedbackMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[FeedbackMaster](
	[FeedbackId] [int] NULL,
	[HospitalId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](20) NULL,
	[Rating] [int] NULL,
	[ExperienceLevel] [varchar](20) NULL,
	[Description] [nvarchar](1000) NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[FeedbackPatientDischarge]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[FeedbackPatientDischarge](
	[PatientFeedbackId] [int] NULL,
	[FeedbackId] [int] NULL,
	[PatientId] [int] NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[BedId] [int] NULL,
	[TreatmentId] [int] NULL,
	[DischargeDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[HospitalBedMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[HospitalBedMaster](
	[BedId] [int] NULL,
	[HospitalId] [int] NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[BedNumber] [varchar](50) NULL,
	[BedType] [varchar](50) NULL,
	[Isoccupied] [int] NULL,
	[OccupiedBy] [int] NULL,
	[OccupiedFrom] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[BaseCharge] [decimal](18, 0) NULL,
	[TaxPercentage] [int] NULL,
	[TaxAmount] [decimal](18, 0) NULL,
	[TotalCharge] [decimal](18, 0) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[HospitalDocMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[HospitalDocMaster](
	[DocId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[HospitalImgMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[HospitalImgMaster](
	[ImgId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[HospitalMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[HospitalMaster](
	[HospitalId] [int] NULL,
	[HospitalName] [varchar](200) NULL,
	[HospitalCode] [varchar](50) NULL,
	[HospitalDesc] [varchar](500) NULL,
	[Address] [varchar](255) NULL,
	[Email] [varchar](100) NULL,
	[ContactNumber] [varchar](20) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[RegistrationNumber] [varchar](50) NULL,
	[HospitalLogoURL] [varchar](1000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[HospitalRoomMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[HospitalRoomMaster](
	[RoomId] [int] NULL,
	[HospitalId] [int] NULL,
	[WingId] [int] NULL,
	[WardId] [int] NULL,
	[RoomNumber] [varchar](50) NULL,
	[RoomType] [varchar](50) NULL,
	[FloorNumber] [int] NULL,
	[BedCapacity] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[HospitalWardMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[HospitalWardMaster](
	[WardId] [int] NULL,
	[HospitalId] [int] NULL,
	[WingId] [int] NULL,
	[WardName] [varchar](100) NULL,
	[WardCode] [varchar](50) NULL,
	[WardType] [varchar](50) NULL,
	[Capacity] [int] NULL,
	[GenderType] [varchar](20) NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[HospitalWingMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[HospitalWingMaster](
	[WingId] [bigint] NULL,
	[HospitalId] [int] NULL,
	[WingName] [varchar](100) NULL,
	[WingCode] [varchar](50) NULL,
	[FloorCount] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[InvoiceDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[InvoiceDetail](
	[DetailId] [bigint] NULL,
	[InvoiceId] [bigint] NULL,
	[Remarks] [varchar](500) NULL,
	[Charges] [decimal](18, 2) NULL,
	[TaxName] [varchar](50) NULL,
	[TaxAmount] [decimal](18, 2) NULL,
	[DiscountName] [varchar](50) NULL,
	[DiscountAmount] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[DoctorId] [int] NULL,
	[UserId] [int] NULL,
	[BaseAmount] [decimal](18, 2) NULL,
	[PmtStatus] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[InvoiceMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[InvoiceMaster](
	[InvoiceId] [int] NULL,
	[InvoiceNumber] [varchar](100) NULL,
	[InvoiceDate] [datetime] NULL,
	[HospitalId] [int] NULL,
	[TotalAmount] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[UserId] [int] NULL,
	[CheckInTime] [datetime] NULL,
	[CheckOutTime] [datetime] NULL,
	[PmtStatus] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[OnboardingPreCheck](
	[PreCheckId] [bigint] NULL,
	[HospitalId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[PatientBedAllocationMapping]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[PatientBedAllocationMapping](
	[MappingId] [int] NULL,
	[HospitalId] [int] NULL,
	[PatientId] [int] NULL,
	[WardId] [int] NULL,
	[RoomId] [int] NULL,
	[BedId] [int] NULL,
	[WingId] [int] NULL,
	[OccupiedFrom] [datetime] NULL,
	[OccupiedTo] [datetime] NULL,
	[IsOccupied] [int] NULL,
	[PmtStatus] [varchar](80) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[PatientReport]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[PatientReport](
	[ReportId] [bigint] NULL,
	[HospitalId] [bigint] NULL,
	[PatientId] [bigint] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[BedId] [bigint] NULL,
	[DoctorId] [bigint] NULL,
	[ReportType] [varchar](100) NULL,
	[ReportName] [varchar](200) NULL,
	[ReportURL] [varchar](500) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ServiceId] [int] NULL,
	[TotalCost] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[PrintMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[PrintMaster](
	[PrintId] [int] IDENTITY(1,1) NOT NULL,
	[TemplateId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [nvarchar](100) NULL,
	[PName] [nvarchar](255) NULL,
	[PDesc] [nvarchar](max) NULL,
	[PContent] [nvarchar](max) NULL,
	[PSeq] [int] NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
	[HospitalId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[PrintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[PrintTemplate]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[PrintTemplate](
	[TemplateId] [int] NULL,
	[TemplateName] [varchar](100) NULL,
	[TemplateType] [varchar](50) NULL,
	[HospitalId] [int] NULL,
	[PageCss] [nvarchar](max) NULL,
	[HeaderHTML] [nvarchar](max) NULL,
	[ClientHeaderHTML] [nvarchar](max) NULL,
	[BodyHTML] [nvarchar](max) NULL,
	[ContinuedFooterHTML] [nvarchar](max) NULL,
	[LastPageFooterHTML] [nvarchar](max) NULL,
	[RowHTML] [nvarchar](max) NULL,
	[LogoImage] [varchar](max) NULL,
	[WatermarkText] [varchar](200) NULL,
	[WatermarkImage] [varchar](max) NULL,
	[PaperSize] [varchar](20) NULL,
	[Orientation] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[RowsInPage] [int] NULL,
	[PrintQuery] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[ReceiptDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[ReceiptDetail](
	[DetailId] [int] NULL,
	[ReceiptId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterAmt] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[ReceiptMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[ReceiptMaster](
	[ReceiptId] [int] NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[RStatus] [varchar](20) NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[ServiceDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[ServiceDetail](
	[ServiceDetailId] [int] NULL,
	[ServiceDetailName] [varchar](100) NULL,
	[ServiceDescrition] [varchar](500) NULL,
	[Charges] [decimal](18, 2) NULL,
	[ChargeType] [varchar](50) NULL,
	[ChargeBasis] [varchar](100) NULL,
	[ChargeQuantity] [decimal](18, 2) NULL,
	[TotalCharge] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[ServiceMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[ServiceMaster](
	[ServiceId] [int] NULL,
	[HospitalId] [int] NULL,
	[ServiceName] [varchar](100) NULL,
	[ServiceCode] [varchar](50) NULL,
	[ServiceDescription] [varchar](500) NULL,
	[TotalCharge] [decimal](18, 2) NULL,
	[EstimateDays] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[TreatmentPlanDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[TreatmentPlanDetail](
	[DetailId] [int] NULL,
	[PlanId] [int] NULL,
	[StaffType] [varchar](50) NULL,
	[StaffId] [int] NULL,
	[ServiceId] [int] NULL,
	[ActionTime] [time](7) NULL,
	[ActionDetail] [varchar](500) NULL,
	[ServiceCost] [decimal](18, 2) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[TaxValue] [decimal](18, 2) NULL,
	[NetAmount] [decimal](18, 2) NULL,
	[IsCompleted] [int] NULL,
	[DiscountType] [varchar](50) NULL,
	[TaxType] [varchar](50) NULL,
	[PmtStatus] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PlanDate] [datetime] NULL,
	[InvoiceId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[TreatmentPlanMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[TreatmentPlanMaster](
	[PlanId] [int] NULL,
	[PatientId] [int] NULL,
	[StartDate] [datetime] NULL,
	[DoctorId] [int] NULL,
	[BedId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[HospitalId] [int] NULL,
	[TotalCost] [decimal](18, 2) NULL,
	[EndDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[TreatmentTemplateDetail]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[TreatmentTemplateDetail](
	[DetailId] [int] NULL,
	[TemplateId] [int] NULL,
	[StaffType] [varchar](100) NULL,
	[ServiceId] [int] NULL,
	[Actiondetail] [varchar](500) NULL,
	[DiscountPercentage] [int] NULL,
	[TaxPercentage] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ServiceAmount] [decimal](18, 2) NULL,
	[TotalCharge] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[TreatmentTemplateMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[TreatmentTemplateMaster](
	[TemplateId] [int] NULL,
	[HospitalId] [int] NULL,
	[TemplateName] [varchar](100) NULL,
	[Remark] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [hmaudit].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [hmaudit].[UserAffiliationMapping](
	[MappingId] [int] NULL,
	[UserId] [int] NULL,
	[HospitalId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Department] [varchar](100) NULL,
	[Specialization] [varchar](100) NULL,
	[Education] [varchar](100) NULL,
	[EmploymentType] [varchar](50) NULL,
	[ConsultationFee] [decimal](18, 2) NULL,
	[YearsOfExperience] [decimal](18, 2) NULL,
	[RegistrationNumber] [varchar](50) NULL,
	[LicensingAuthority] [varchar](100) NULL,
	[YearOfRegistration] [int] NULL,
	[RegistrationDate] [date] NULL,
	[JoiningDate] [date] NULL,
	[ShiftType] [varchar](50) NULL,
	[VisitType] [varchar](50) NULL,
	[ReferredBy] [varchar](100) NULL,
	[SocialLink] [varchar](255) NULL,
	[Allergies] [varchar](255) NULL,
	[ChronicCondition] [varchar](255) NULL,
	[InsuranceProvider] [varchar](255) NULL,
	[InsurancePolicyNo] [varchar](100) NULL,
	[EmiEligibilityStatus] [varchar](50) NULL,
	[LoanReferenceId] [varchar](100) NULL,
	[TermsAccepted] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[AccountLedger]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[AccountLedger](
	[LedgerId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[TransType] [varchar](10) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CurrencyCode] [varchar](10) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[Remarks] [nvarchar](255) NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LedgerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[Accounts]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[Accounts](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[OwnerType] [varchar](20) NOT NULL,
	[AccountType] [varchar](20) NOT NULL,
	[ModuleName] [varchar](50) NULL,
	[EntityId] [int] NOT NULL,
	[BankName] [varchar](100) NULL,
	[AccountHolderName] [varchar](100) NULL,
	[AccountNo] [varchar](50) NULL,
	[IFSC] [varchar](20) NULL,
	[BranchName] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[AccountBalance] [decimal](18, 2) NOT NULL,
	[CurrencyCode] [varchar](10) NOT NULL,
	[ContactNo] [varchar](50) NULL,
	[IsDefault] [int] NOT NULL,
	[IsVerified] [int] NOT NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[Application]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[Application](
	[ApplicationId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[ApplicationStatus] [varchar](50) NOT NULL,
	[RequestedAmount] [decimal](18, 2) NULL,
	[ApprovedAmount] [decimal](18, 2) NULL,
	[TenureMonths] [int] NULL,
	[CreditScore] [int] NULL,
	[ApplicationDate] [datetime] NULL,
	[ApprovalDate] [datetime] NULL,
	[ApprovedBy] [varchar](100) NULL,
	[RejectionReason] [varchar](255) NULL,
	[RejectedBy] [varchar](100) NULL,
	[IsKYCVerified] [int] NULL,
	[KYCVerifiedOn] [datetime] NULL,
	[IsDisbursed] [int] NULL,
	[DisbursedOn] [datetime] NULL,
	[DisbursedAmount] [decimal](18, 2) NULL,
	[KycDocId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[SubUserId] [int] NULL,
	[BusinessId] [int] NULL,
	[ProductCode] [varchar](50) NULL,
	[EmployerName] [varchar](50) NULL,
	[Occupation] [varchar](100) NULL,
	[EmploymentType] [varchar](50) NULL,
	[MinimumNetMonthlyIncome] [decimal](18, 2) NULL,
	[IncomeStabilityInMonths] [int] NULL,
	[BankMinimumAverageBalance] [decimal](18, 2) NULL,
	[BankMaximumBounceCount] [int] NULL,
	[PRRN] [varchar](50) NULL,
	[ApplicationNumber] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[CreditEngineConfiguration]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[CreditEngineConfiguration](
	[ConfigId] [int] IDENTITY(1,1) NOT NULL,
	[MasterId] [int] NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[AgeFrom] [int] NULL,
	[AgeTo] [int] NULL,
	[OccupationType] [varchar](50) NULL,
	[Weightage] [decimal](5, 2) NULL,
	[MinimumNetMonthlyIncome] [decimal](12, 2) NULL,
	[IncomeStabilityInMonths] [int] NULL,
	[BankMinimumAverageBalance] [decimal](12, 2) NULL,
	[BankMaximumBounceCount] [int] NULL,
	[FOIR] [decimal](5, 2) NULL,
	[MaximumLoanTenureInMonths] [int] NULL,
	[BaseInterestRate] [decimal](5, 2) NULL,
	[RiskVariance] [decimal](5, 2) NULL,
	[MinimumLoanAmount] [decimal](15, 2) NULL,
	[MaximumLoanAmount] [decimal](15, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ExistingEmiAmount] [decimal](18, 2) NULL,
	[ResidenceType] [varchar](50) NULL,
	[MonthsAtCurrentAddress] [int] NULL,
	[AddressRisk] [varchar](50) NULL,
	[ITR26ASAvailable] [int] NULL,
	[EmploymentType] [varchar](50) NULL,
	[ProductCode] [varchar](50) NULL,
	[CreditScore] [int] NULL,
	[Dpd12M] [int] NULL,
	[ActiveLoans] [int] NULL,
	[SimAgeMonths] [int] NULL,
	[GeoPinRiskIndex] [decimal](5, 2) NULL,
	[SchoolPaymentHistoryScore] [decimal](5, 2) NULL,
	[VaultBalanceAverage] [decimal](15, 2) NULL,
	[IncomeTruthIndex] [decimal](4, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ConfigId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[DigilockerSessionKey]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[DigilockerSessionKey](
	[KeyId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[SessionKey] [varchar](100) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KeyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[KYCDocument]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[KYCDocument](
	[DocumentId] [int] IDENTITY(1,1) NOT NULL,
	[KYCId] [int] NOT NULL,
	[DocumentTypeId] [int] NOT NULL,
	[DocumentName] [varchar](200) NULL,
	[FilePath] [varchar](1000) NULL,
	[DocumentStatus] [varchar](50) NULL,
	[VerifiedBy] [int] NULL,
	[VerifiedOn] [datetime] NULL,
	[RejectionReason] [varchar](500) NULL,
	[UploadedOn] [datetime] NOT NULL,
	[UploadedBy] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[KYCDocumentType]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[KYCDocumentType](
	[DocumentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) NULL,
	[DocumentName] [varchar](200) NULL,
	[EntityType] [varchar](50) NOT NULL,
	[IsMandatory] [int] NOT NULL,
	[MaxFileSizeMB] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocumentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[PayLaterImgMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[PayLaterImgMaster](
	[ImgId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[PaymentReceipts]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[PaymentReceipts](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[TransactionId] [int] NOT NULL,
	[ReceiptNo] [varchar](50) NOT NULL,
	[UserId] [int] NOT NULL,
	[BusinessId] [int] NULL,
	[ModuleType] [varchar](50) NOT NULL,
	[ModuleEntityId] [int] NOT NULL,
	[ReceiptAmount] [decimal](18, 2) NOT NULL,
	[CurrencyCode] [varchar](10) NOT NULL,
	[PaymentMethod] [varchar](50) NOT NULL,
	[StatusCode] [varchar](20) NOT NULL,
	[IssuedDate] [datetime] NOT NULL,
	[Notes] [nvarchar](500) NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ReceiptNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[PaymentTransactions]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[PaymentTransactions](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[ParentTransactionId] [int] NULL,
	[ReferenceTransactionId] [int] NULL,
	[LoanId] [int] NULL,
	[UserId] [int] NOT NULL,
	[PRRN] [varchar](50) NOT NULL,
	[TransactionType] [varchar](50) NOT NULL,
	[PaymentMethod] [varchar](50) NOT NULL,
	[TransactionAmount] [decimal](18, 2) NOT NULL,
	[CurrencyCode] [varchar](10) NOT NULL,
	[StatusCode] [varchar](20) NOT NULL,
	[ModuleType] [varchar](50) NOT NULL,
	[ModuleEntityId] [int] NOT NULL,
	[BusinessId] [int] NULL,
	[InitiatedAt] [datetime] NULL,
	[CompletedAt] [datetime] NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PRRN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[Product]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[ProductCode] [varchar](20) NULL,
	[ProductType] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[MaxLoanAmount] [decimal](18, 2) NOT NULL,
	[MinLoanAmount] [decimal](18, 2) NOT NULL,
	[InterestRate] [decimal](5, 2) NOT NULL,
	[MinTenureMonths] [int] NULL,
	[MaxTenureMonths] [int] NOT NULL,
	[ProcessingFeePercent] [decimal](5, 2) NULL,
	[MinCreditScore] [int] NULL,
	[MinIncomePerMonth] [decimal](18, 2) NULL,
	[AllowPreclosure] [int] NULL,
	[PreclosureChargesPercent] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[ReceiptMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[ReceiptMaster](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[ModuleName] [varchar](20) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OrderId] [varchar](50) NULL,
	[PaymentId] [varchar](50) NULL,
	[Mode] [varchar](20) NULL,
	[Status] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[Repayment]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[Repayment](
	[RepaymentId] [bigint] IDENTITY(1,1) NOT NULL,
	[AccountId] [int] NOT NULL,
	[DueDate] [datetime] NOT NULL,
	[EMIAmount] [decimal](18, 2) NOT NULL,
	[PrincipalComponent] [decimal](18, 2) NOT NULL,
	[InterestComponent] [decimal](18, 2) NOT NULL,
	[PaymentDate] [datetime] NULL,
	[PaidAmount] [decimal](18, 2) NULL,
	[PenaltyAmount] [decimal](18, 2) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RepaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[RoundOffSaving]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[RoundOffSaving](
	[RoundOffSavingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[RoundOffAmount] [decimal](10, 2) NULL,
	[Description] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RoundOffSavingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[RoundOffTransaction]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[RoundOffTransaction](
	[TransactionId] [bigint] IDENTITY(1,1) NOT NULL,
	[RoundOffSavingId] [bigint] NOT NULL,
	[UserId] [bigint] NOT NULL,
	[MasterId] [bigint] NOT NULL,
	[MasterType] [varchar](100) NULL,
	[TransactionType] [varchar](50) NOT NULL,
	[TransactionAmount] [decimal](18, 2) NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[PaymentMethod] [varchar](50) NULL,
	[ReferenceNumber] [varchar](100) NULL,
	[Remarks] [nvarchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[ServiceProvider]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[ServiceProvider](
	[ServiceProviderId] [int] IDENTITY(1,1) NOT NULL,
	[ProviderCode] [varchar](50) NOT NULL,
	[ProviderName] [varchar](200) NOT NULL,
	[ProviderType] [varchar](100) NULL,
	[BaseUrl] [varchar](500) NULL,
	[EnvName] [varchar](100) NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceProviderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [pl].[ServiceRequestLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[ServiceRequestLog](
	[RequestLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceProviderId] [int] NOT NULL,
	[ServiceName] [varchar](200) NULL,
	[EndpointUrl] [varchar](1000) NULL,
	[HttpMethod] [varchar](10) NULL,
	[RequestHeaders] [nvarchar](max) NULL,
	[RequestBody] [nvarchar](max) NULL,
	[CorrelationId] [varchar](100) NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[SourceSystem] [varchar](100) NULL,
	[RequestedOn] [datetime] NOT NULL,
	[RequestTimeoutMs] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [pl].[ServiceResponseLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[ServiceResponseLog](
	[ResponseLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[RequestLogId] [bigint] NOT NULL,
	[HttpStatusCode] [int] NULL,
	[IsSuccess] [int] NOT NULL,
	[ErrorCode] [varchar](100) NULL,
	[ErrorMessage] [nvarchar](1000) NULL,
	[ResponseHeaders] [nvarchar](max) NULL,
	[ResponseBody] [nvarchar](max) NULL,
	[RespondedOn] [datetime2](3) NULL,
	[DurationMs] [int] NULL,
	[RetryAttemptNo] [int] NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ResponseLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [pl].[UserKYC]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [pl].[UserKYC](
	[KycId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[CareOf] [nvarchar](255) NULL,
	[FullAddress] [nvarchar](max) NULL,
	[DateOfBirth] [date] NULL,
	[YearOfBirth] [int] NULL,
	[Email] [nvarchar](255) NULL,
	[Mobile] [nvarchar](255) NULL,
	[Gender] [nvarchar](10) NULL,
	[Name] [nvarchar](255) NULL,
	[AadharNumber] [nvarchar](255) NULL,
	[PanNumber] [nvarchar](255) NULL,
	[Photo] [nvarchar](max) NULL,
	[ShareCode] [nvarchar](50) NULL,
	[Country] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[District] [nvarchar](100) NULL,
	[SubDistrict] [nvarchar](100) NULL,
	[VTC] [nvarchar](100) NULL,
	[Street] [nvarchar](255) NULL,
	[House] [nvarchar](255) NULL,
	[Landmark] [nvarchar](255) NULL,
	[PostOffice] [nvarchar](255) NULL,
	[Pincode] [nvarchar](20) NULL,
	[IsAadharVerified] [int] NULL,
	[IsPanVerified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Relation] [varchar](50) NULL,
	[MonthlyIncome] [decimal](18, 2) NULL,
	[OccupationType] [varchar](50) NULL,
	[EmploymentType] [varchar](50) NULL,
	[AadhaarXML] [varchar](20) NULL,
	[PanXML] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[KycId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[AccountLedger]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[AccountLedger](
	[LedgerId] [int] NULL,
	[TransactionId] [int] NOT NULL,
	[AccountId] [int] NOT NULL,
	[TransType] [varchar](10) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[CurrencyCode] [varchar](10) NOT NULL,
	[EntryDate] [datetime] NOT NULL,
	[Remarks] [nvarchar](255) NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[Accounts]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[Accounts](
	[AccountId] [int] NULL,
	[OwnerType] [varchar](20) NULL,
	[AccountType] [varchar](20) NULL,
	[ModuleName] [varchar](50) NULL,
	[EntityId] [int] NULL,
	[BankName] [varchar](100) NULL,
	[AccountHolderName] [varchar](100) NULL,
	[AccountNo] [varchar](50) NULL,
	[IFSC] [varchar](20) NULL,
	[BranchName] [varchar](100) NULL,
	[Address] [varchar](500) NULL,
	[AccountBalance] [decimal](18, 2) NULL,
	[CurrencyCode] [varchar](10) NULL,
	[ContactNo] [varchar](50) NULL,
	[IsDefault] [int] NULL,
	[IsVerified] [int] NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[Application]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[Application](
	[ApplicationId] [bigint] NULL,
	[UserId] [int] NULL,
	[ProductId] [int] NULL,
	[ApplicationStatus] [varchar](50) NULL,
	[RequestedAmount] [decimal](18, 2) NULL,
	[ApprovedAmount] [decimal](18, 2) NULL,
	[TenureMonths] [int] NULL,
	[CreditScore] [int] NULL,
	[ApplicationDate] [datetime] NULL,
	[ApprovalDate] [datetime] NULL,
	[ApprovedBy] [varchar](100) NULL,
	[RejectionReason] [varchar](255) NULL,
	[RejectedBy] [varchar](100) NULL,
	[IsKYCVerified] [int] NULL,
	[KYCVerifiedOn] [datetime] NULL,
	[IsDisbursed] [int] NULL,
	[DisbursedOn] [datetime] NULL,
	[DisbursedAmount] [decimal](18, 2) NULL,
	[KycDocId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[SubUserId] [int] NULL,
	[BusinessId] [int] NULL,
	[ProductCode] [varchar](50) NULL,
	[EmployerName] [varchar](50) NULL,
	[Occupation] [varchar](100) NULL,
	[EmploymentType] [varchar](50) NULL,
	[MinimumNetMonthlyIncome] [decimal](18, 2) NULL,
	[IncomeStabilityInMonths] [int] NULL,
	[BankMinimumAverageBalance] [decimal](18, 2) NULL,
	[BankMaximumBounceCount] [int] NULL,
	[PRRN] [varchar](50) NULL,
	[ApplicationNumber] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[CreditEngineConfiguration]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[CreditEngineConfiguration](
	[ConfigId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[AgeFrom] [int] NULL,
	[AgeTo] [int] NULL,
	[OccupationType] [varchar](50) NULL,
	[Weightage] [decimal](5, 2) NULL,
	[MinimumNetMonthlyIncome] [decimal](12, 2) NULL,
	[IncomeStabilityInMonths] [int] NULL,
	[BankMinimumAverageBalance] [decimal](12, 2) NULL,
	[BankMaximumBounceCount] [int] NULL,
	[FOIR] [decimal](5, 2) NULL,
	[MaximumLoanTenureInMonths] [int] NULL,
	[BaseInterestRate] [decimal](5, 2) NULL,
	[RiskVariance] [decimal](5, 2) NULL,
	[MinimumLoanAmount] [decimal](15, 2) NULL,
	[MaximumLoanAmount] [decimal](15, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ExistingEmiAmount] [decimal](18, 2) NULL,
	[ResidenceType] [varchar](50) NULL,
	[MonthsAtCurrentAddress] [int] NULL,
	[AddressRisk] [varchar](50) NULL,
	[ITR26ASAvailable] [int] NULL,
	[EmploymentType] [varchar](50) NULL,
	[ProductCode] [varchar](50) NULL,
	[CreditScore] [int] NULL,
	[Dpd12M] [int] NULL,
	[ActiveLoans] [int] NULL,
	[SimAgeMonths] [int] NULL,
	[GeoPinRiskIndex] [decimal](5, 2) NULL,
	[SchoolPaymentHistoryScore] [decimal](5, 2) NULL,
	[VaultBalanceAverage] [decimal](15, 2) NULL,
	[IncomeTruthIndex] [decimal](4, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[DigilockerSessionKey]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[DigilockerSessionKey](
	[KeyId] [bigint] NULL,
	[UserId] [int] NULL,
	[SessionKey] [varchar](100) NULL,
	[ValidFrom] [datetime] NULL,
	[ValidTo] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[KYCDocument]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[KYCDocument](
	[DocumentId] [int] NULL,
	[KYCId] [int] NULL,
	[DocumentTypeId] [int] NULL,
	[DocumentName] [varchar](200) NULL,
	[FilePath] [varchar](1000) NULL,
	[DocumentStatus] [varchar](50) NULL,
	[VerifiedBy] [int] NULL,
	[VerifiedOn] [datetime] NULL,
	[RejectionReason] [varchar](500) NULL,
	[UploadedOn] [datetime] NOT NULL,
	[UploadedBy] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[KYCDocumentType]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[KYCDocumentType](
	[DocumentTypeId] [int] NULL,
	[Code] [varchar](50) NULL,
	[DocumentName] [varchar](200) NULL,
	[EntityType] [varchar](50) NOT NULL,
	[IsMandatory] [int] NOT NULL,
	[MaxFileSizeMB] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[PayLaterImgMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[PayLaterImgMaster](
	[ImgId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[PaymentReceipts]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[PaymentReceipts](
	[ReceiptId] [int] NULL,
	[TransactionId] [int] NULL,
	[ReceiptNo] [varchar](50) NULL,
	[UserId] [int] NULL,
	[BusinessId] [int] NULL,
	[ModuleType] [varchar](50) NULL,
	[ModuleEntityId] [int] NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[CurrencyCode] [varchar](10) NULL,
	[PaymentMethod] [varchar](50) NULL,
	[StatusCode] [varchar](20) NULL,
	[IssuedDate] [datetime] NULL,
	[Notes] [nvarchar](500) NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[PaymentTransactions]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[PaymentTransactions](
	[AuditId] [int] NULL,
	[TransactionId] [int] NULL,
	[AuditAction] [varchar](10) NULL,
	[AuditTimestamp] [datetime] NULL,
	[AuditUser] [varchar](50) NULL,
	[ParentTransactionId] [int] NULL,
	[ReferenceTransactionId] [int] NULL,
	[LoanId] [int] NULL,
	[UserId] [int] NULL,
	[PRRN] [varchar](50) NULL,
	[TransactionType] [varchar](50) NULL,
	[PaymentMethod] [varchar](50) NULL,
	[TransactionAmount] [decimal](18, 2) NULL,
	[CurrencyCode] [varchar](10) NULL,
	[StatusCode] [varchar](20) NULL,
	[ModuleType] [varchar](50) NULL,
	[ModuleEntityId] [int] NULL,
	[BusinessId] [int] NULL,
	[InitiatedAt] [datetime] NULL,
	[CompletedAt] [datetime] NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[Product]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[Product](
	[ProductId] [int] NULL,
	[ProductName] [varchar](100) NULL,
	[ProductCode] [varchar](20) NULL,
	[ProductType] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[MaxLoanAmount] [decimal](18, 2) NULL,
	[MinLoanAmount] [decimal](18, 2) NULL,
	[InterestRate] [decimal](5, 2) NULL,
	[MinTenureMonths] [int] NULL,
	[MaxTenureMonths] [int] NULL,
	[ProcessingFeePercent] [decimal](5, 2) NULL,
	[MinCreditScore] [int] NULL,
	[MinIncomePerMonth] [decimal](18, 2) NULL,
	[AllowPreclosure] [bit] NOT NULL,
	[PreclosureChargesPercent] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[ReceiptMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[ReceiptMaster](
	[ReceiptId] [int] NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[ModuleName] [varchar](20) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OrderId] [varchar](50) NULL,
	[PaymentId] [varchar](50) NULL,
	[Mode] [varchar](20) NULL,
	[Status] [varchar](20) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[Repayment]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[Repayment](
	[RepaymentId] [bigint] NULL,
	[AccountId] [int] NULL,
	[DueDate] [datetime] NULL,
	[EMIAmount] [decimal](18, 2) NULL,
	[PrincipalComponent] [decimal](18, 2) NULL,
	[InterestComponent] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[PaidAmount] [decimal](18, 2) NULL,
	[PenaltyAmount] [decimal](18, 2) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[RoundOffSaving]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[RoundOffSaving](
	[RoundOffSavingId] [int] NULL,
	[UserId] [int] NOT NULL,
	[RoundOffAmount] [decimal](10, 2) NULL,
	[Description] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[RoundOffTransaction]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[RoundOffTransaction](
	[TransactionId] [bigint] NULL,
	[RoundOffSavingId] [bigint] NULL,
	[UserId] [bigint] NULL,
	[MasterId] [bigint] NULL,
	[MasterType] [varchar](100) NULL,
	[TransactionType] [varchar](50) NULL,
	[TransactionAmount] [decimal](18, 2) NULL,
	[TransactionDate] [datetime] NULL,
	[PaymentMethod] [varchar](50) NULL,
	[ReferenceNumber] [varchar](100) NULL,
	[Remarks] [nvarchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[ServiceProvider]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[ServiceProvider](
	[ServiceProviderId] [int] NULL,
	[ProviderCode] [varchar](50) NOT NULL,
	[ProviderName] [varchar](200) NOT NULL,
	[ProviderType] [varchar](100) NULL,
	[BaseUrl] [varchar](500) NULL,
	[EnvName] [varchar](100) NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[ServiceRequestLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[ServiceRequestLog](
	[RequestLogId] [bigint] NULL,
	[ServiceProviderId] [int] NOT NULL,
	[ServiceName] [varchar](200) NULL,
	[EndpointUrl] [varchar](1000) NULL,
	[HttpMethod] [varchar](10) NULL,
	[RequestHeaders] [nvarchar](max) NULL,
	[RequestBody] [nvarchar](max) NULL,
	[CorrelationId] [varchar](100) NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[SourceSystem] [varchar](100) NULL,
	[RequestedOn] [datetime] NULL,
	[RequestTimeoutMs] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[ServiceResponseLog]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[ServiceResponseLog](
	[ResponseLogId] [bigint] NULL,
	[RequestLogId] [bigint] NULL,
	[HttpStatusCode] [int] NULL,
	[IsSuccess] [int] NULL,
	[ErrorCode] [varchar](100) NULL,
	[ErrorMessage] [nvarchar](1000) NULL,
	[ResponseHeaders] [nvarchar](max) NULL,
	[ResponseBody] [nvarchar](max) NULL,
	[RespondedOn] [datetime2](3) NULL,
	[DurationMs] [int] NULL,
	[RetryAttemptNo] [int] NULL,
	[OtherDetail1] [varchar](200) NULL,
	[OtherDetail2] [varchar](200) NULL,
	[OtherDetail3] [varchar](300) NULL,
	[OtherDetail4] [varchar](300) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [plaudit].[UserKYC]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [plaudit].[UserKYC](
	[KycId] [int] NULL,
	[UserId] [int] NULL,
	[CareOf] [nvarchar](255) NULL,
	[FullAddress] [nvarchar](max) NULL,
	[DateOfBirth] [date] NULL,
	[YearOfBirth] [int] NULL,
	[Email] [nvarchar](255) NULL,
	[Mobile] [nvarchar](255) NULL,
	[Gender] [nvarchar](10) NULL,
	[Name] [nvarchar](255) NULL,
	[AadharNumber] [nvarchar](255) NULL,
	[PanNumber] [nvarchar](255) NULL,
	[Photo] [nvarchar](max) NULL,
	[ShareCode] [nvarchar](50) NULL,
	[Country] [nvarchar](100) NULL,
	[State] [nvarchar](100) NULL,
	[District] [nvarchar](100) NULL,
	[SubDistrict] [nvarchar](100) NULL,
	[VTC] [nvarchar](100) NULL,
	[Street] [nvarchar](255) NULL,
	[House] [nvarchar](255) NULL,
	[Landmark] [nvarchar](255) NULL,
	[PostOffice] [nvarchar](255) NULL,
	[Pincode] [nvarchar](20) NULL,
	[IsAadharVerified] [int] NULL,
	[IsPanVerified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Relation] [varchar](50) NULL,
	[MonthlyIncome] [decimal](18, 2) NULL,
	[OccupationType] [varchar](50) NULL,
	[EmploymentType] [varchar](50) NULL,
	[AadhaarXML] [varchar](20) NULL,
	[PanXML] [varchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [re].[AmenitiesMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[AmenitiesMaster](
	[AmenityId] [bigint] IDENTITY(1,1) NOT NULL,
	[AmenityName] [varchar](100) NULL,
	[AmenityCategory] [varchar](50) NULL,
	[IconPath] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AmenityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[BankMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[BankMaster](
	[BankId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[AccountHolderName] [varchar](100) NULL,
	[BankName] [varchar](100) NULL,
	[AccountNo] [varchar](50) NOT NULL,
	[AccountType] [varchar](50) NULL,
	[BranchName] [varchar](100) NULL,
	[IFSCCode] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Contact] [varchar](200) NULL,
	[IsDefault] [int] NULL,
	[IsVerified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[BusinessMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[BusinessMaster](
	[BusinessId] [int] IDENTITY(1,1) NOT NULL,
	[BusinessName] [varchar](100) NOT NULL,
	[BusinessType] [varchar](50) NOT NULL,
	[ReraNumber] [varchar](50) NULL,
	[PanNumber] [varchar](20) NULL,
	[GstNumber] [varchar](20) NULL,
	[LogoUrl] [varchar](500) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[ContactEmail] [varchar](100) NULL,
	[ContactPhone] [varchar](10) NULL,
	[WebsiteUrl] [varchar](50) NULL,
	[IsVerified] [int] NULL,
	[Latitude] [decimal](18, 2) NULL,
	[Longitude] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Description] [varchar](500) NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[TotalProjects] [decimal](18, 2) NULL,
	[Experience] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BusinessId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[FeedbackMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[FeedbackMaster](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[BusinessId] [int] NULL,
	[MasterId] [int] NOT NULL,
	[MasterType] [varchar](20) NOT NULL,
	[Rating] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedOn] [datetime] NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[OnboardingPreCheck](
	[PreCheckId] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PreCheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[Project]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[Project](
	[ProjectId] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessId] [int] NULL,
	[ProjectName] [varchar](255) NULL,
	[Description] [varchar](500) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Locality] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[Latitude] [decimal](10, 6) NULL,
	[Longitude] [decimal](10, 6) NULL,
	[Status] [varchar](50) NULL,
	[LaunchDate] [date] NULL,
	[PossessionDate] [date] NULL,
	[TotalUnits] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ProjectArea] [decimal](5, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[ProjectBuilding]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[ProjectBuilding](
	[BuildingId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProjectId] [bigint] NULL,
	[BuildingName] [varchar](100) NULL,
	[Floors] [int] NULL,
	[Units] [int] NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BuildingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[ProjectUnitType]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[ProjectUnitType](
	[UnitTypeId] [bigint] IDENTITY(1,1) NOT NULL,
	[ProjectId] [bigint] NULL,
	[BuildingId] [bigint] NULL,
	[UnitTypeName] [varchar](100) NULL,
	[BHK] [int] NULL,
	[SuperArea] [decimal](10, 2) NULL,
	[CarpetArea] [decimal](10, 2) NULL,
	[Furnishing] [varchar](50) NULL,
	[BasePrice] [decimal](18, 2) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Facing] [varchar](50) NULL,
	[Bathroom] [int] NULL,
	[Balcony] [int] NULL,
	[Parking] [varchar](50) NULL,
	[Type] [varchar](20) NULL,
	[PricePerSqFt] [decimal](18, 2) NULL,
	[View] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[UnitTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[Property]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[Property](
	[PropertyId] [bigint] IDENTITY(1,1) NOT NULL,
	[BusinessId] [int] NULL,
	[PostedBy] [int] NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Description] [varchar](255) NULL,
	[PropertyType] [varchar](50) NULL,
	[ListingType] [varchar](10) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Locality] [varchar](150) NULL,
	[Address] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[Latitude] [decimal](18, 8) NULL,
	[Longitude] [decimal](18, 8) NULL,
	[Status] [varchar](50) NULL,
	[ListedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PropertyName] [varchar](100) NULL,
	[ProjectId] [bigint] NULL,
	[BuildingId] [bigint] NULL,
	[UnitTypeId] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[PropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[PropertyAmenities]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[PropertyAmenities](
	[AmenityId] [bigint] NULL,
	[IsAvailable] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [re].[PropertyDetails]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[PropertyDetails](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [bigint] NOT NULL,
	[BHK] [int] NULL,
	[SuperArea] [decimal](18, 2) NULL,
	[CarpetArea] [decimal](18, 2) NULL,
	[Furnishing] [varchar](50) NULL,
	[FloorNumber] [int] NULL,
	[TotalFloors] [int] NULL,
	[AgeOfConstruction] [int] NULL,
	[Facing] [varchar](50) NULL,
	[OwnershipType] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Bathroom] [int] NULL,
	[Balcony] [int] NULL,
	[Parking] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[PropertyInquiries]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[PropertyInquiries](
	[ContactLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[OwnerUserId] [int] NOT NULL,
	[ClickedOn] [datetime] NOT NULL,
	[ContactType] [varchar](20) NULL,
	[Source] [varchar](50) NULL,
	[IPAddress] [varchar](45) NULL,
	[UserAgent] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[PropertyListing]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[PropertyListing](
	[ListingId] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyId] [bigint] NOT NULL,
	[ListingType] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[MaintenanceCharge] [decimal](18, 2) NULL,
	[DepositAmount] [decimal](18, 2) NULL,
	[AvailableFrom] [datetime] NULL,
	[PostedBy] [int] NULL,
	[ListingStatus] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PropertyName] [varchar](200) NULL,
	[Negotiable] [int] NULL,
	[PropertyStatus] [varchar](50) NULL,
	[IsVerified] [int] NULL,
	[ValidityPeriod] [int] NULL,
	[ValidFrom] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ListingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[PropertyOffer]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[PropertyOffer](
	[OfferId] [bigint] IDENTITY(1,1) NOT NULL,
	[ListingId] [bigint] NULL,
	[OfferedBy] [int] NULL,
	[OfferAmount] [decimal](18, 2) NULL,
	[OfferDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CounterOfferAmount] [decimal](18, 2) NULL,
	[Remarks] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OfferId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[PropertyTransaction]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[PropertyTransaction](
	[TransactionId] [int] IDENTITY(1,1) NOT NULL,
	[PropertyId] [int] NOT NULL,
	[Status] [varchar](50) NOT NULL,
	[TransactionDate] [datetime] NOT NULL,
	[Remarks] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[PropertyVisit]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[PropertyVisit](
	[VisitId] [bigint] IDENTITY(1,1) NOT NULL,
	[VisitorUserId] [int] NULL,
	[ScheduledDate] [datetime] NULL,
	[TimeSlot] [varchar](20) NULL,
	[Status] [varchar](50) NULL,
	[Notes] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AssignedTo] [int] NULL,
	[RescheduledDate] [datetime] NULL,
	[VisitFeedback] [varchar](50) NULL,
	[FollowUpRequired] [int] NULL,
	[VisitorInterestLevel] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[VisitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[RealEstateDocMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[RealEstateDocMaster](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[RealEstateImgMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[RealEstateImgMaster](
	[ImgId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[REBackendDiscount]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[REBackendDiscount](
	[BackendDiscountId] [int] IDENTITY(1,1) NOT NULL,
	[BusinessId] [int] NOT NULL,
	[ProjectId] [int] NULL,
	[BuildingId] [int] NULL,
	[UnitTypeId] [int] NULL,
	[DiscountType] [varchar](50) NOT NULL,
	[DiscountValue] [decimal](18, 2) NOT NULL,
	[CommitmentPeriod] [int] NULL,
	[SaleCommitment] [varchar](20) NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MeasurementType] [varchar](50) NULL,
	[MarkUp] [decimal](4, 2) NULL,
	[CostPrice] [decimal](18, 2) NULL,
	[FinalPrice] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[BackendDiscountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[RentalAgreement]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[RentalAgreement](
	[AgreementId] [bigint] IDENTITY(1,1) NOT NULL,
	[AgreementNo] [varchar](50) NULL,
	[PropertyId] [bigint] NULL,
	[TenantUserId] [int] NULL,
	[OwnerUserId] [int] NULL,
	[AgreementType] [varchar](50) NULL,
	[LeaseStartDate] [date] NULL,
	[LeaseEndDate] [date] NULL,
	[RentAmount] [decimal](18, 2) NULL,
	[DepositAmount] [decimal](18, 2) NULL,
	[NoticePeriodDays] [int] NULL,
	[AgreementStatus] [varchar](50) NULL,
	[eSigned] [int] NOT NULL,
	[SignedOn] [datetime] NULL,
	[PoliceVerification] [int] NULL,
	[DocumentId] [bigint] NULL,
	[AgreementContent] [nvarchar](max) NULL,
	[AgreementURL] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MaintenanceAmount] [decimal](18, 2) NULL,
	[MaintenancePayableBy] [varchar](50) NULL,
	[DepositPaid] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[AgreementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [re].[ReportedListing]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[ReportedListing](
	[ReportId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[BusinessId] [bigint] NOT NULL,
	[Reason] [varchar](100) NULL,
	[Comment] [varchar](500) NULL,
	[ReportedOn] [datetime] NOT NULL,
	[Status] [varchar](20) NULL,
	[Name] [varchar](100) NULL,
	[PhoneNo] [varchar](20) NULL,
	[ReviewedBy] [int] NULL,
	[ReviewedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[UserAffiliationMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[BusinessId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[UserPropertyShortlist]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[UserPropertyShortlist](
	[ShortlistId] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ShortlistedOn] [datetime] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ShortlistId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [re].[UserRoleInProperty]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [re].[UserRoleInProperty](
	[RecordId] [bigint] IDENTITY(1,1) NOT NULL,
	[PropertyId] [bigint] NOT NULL,
	[UserId] [int] NULL,
	[Role] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[FullName] [varchar](150) NULL,
	[ContactNumber] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[AgencyName] [varchar](150) NULL,
	[RERARegistrationNo] [varchar](100) NULL,
	[Verified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RecordId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[AmenitiesMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[AmenitiesMaster](
	[AmenityId] [bigint] NULL,
	[AmenityName] [varchar](100) NULL,
	[AmenityCategory] [varchar](50) NULL,
	[IconPath] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[BankMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[BankMaster](
	[BankId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[AccountHolderName] [varchar](100) NULL,
	[BankName] [varchar](100) NULL,
	[AccountNo] [varchar](50) NOT NULL,
	[AccountType] [varchar](50) NULL,
	[BranchName] [varchar](100) NULL,
	[IFSCCode] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Contact] [varchar](200) NULL,
	[IsDefault] [int] NULL,
	[IsVerified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[BusinessMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[BusinessMaster](
	[BusinessId] [int] NULL,
	[BusinessName] [varchar](100) NULL,
	[BusinessType] [varchar](50) NULL,
	[ReraNumber] [varchar](50) NULL,
	[PanNumber] [varchar](20) NULL,
	[GstNumber] [varchar](20) NULL,
	[LogoUrl] [varchar](500) NULL,
	[Address] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[ContactEmail] [varchar](100) NULL,
	[ContactPhone] [varchar](10) NULL,
	[WebsiteUrl] [varchar](50) NULL,
	[IsVerified] [int] NULL,
	[Latitude] [decimal](18, 2) NULL,
	[Longitude] [decimal](18, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Description] [varchar](500) NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[TotalProjects] [decimal](18, 2) NULL,
	[Experience] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[FeedbackMaster]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[FeedbackMaster](
	[FeedbackId] [int] NULL,
	[BusinessId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](20) NULL,
	[Rating] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedOn] [datetime] NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[OnboardingPreCheck](
	[PreCheckId] [bigint] NULL,
	[BusinessId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[Project]    Script Date: 11/24/2025 5:55:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[Project](
	[ProjectId] [bigint] NULL,
	[BusinessId] [int] NULL,
	[ProjectName] [varchar](255) NULL,
	[Description] [varchar](500) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Locality] [varchar](100) NULL,
	[Address] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[Latitude] [decimal](10, 6) NULL,
	[Longitude] [decimal](10, 6) NULL,
	[Status] [varchar](50) NULL,
	[LaunchDate] [date] NULL,
	[PossessionDate] [date] NULL,
	[TotalUnits] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ProjectArea] [decimal](5, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[ProjectBuilding]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[ProjectBuilding](
	[BuildingId] [bigint] NULL,
	[ProjectId] [bigint] NULL,
	[BuildingName] [varchar](100) NULL,
	[Floors] [int] NULL,
	[Units] [int] NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[ProjectUnitType]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[ProjectUnitType](
	[UnitTypeId] [bigint] NULL,
	[ProjectId] [bigint] NULL,
	[BuildingId] [bigint] NULL,
	[UnitTypeName] [varchar](100) NULL,
	[BHK] [int] NULL,
	[SuperArea] [decimal](10, 2) NULL,
	[CarpetArea] [decimal](10, 2) NULL,
	[Furnishing] [varchar](50) NULL,
	[BasePrice] [decimal](18, 2) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Facing] [varchar](50) NULL,
	[Bathroom] [int] NULL,
	[Balcony] [int] NULL,
	[Parking] [varchar](50) NULL,
	[Type] [varchar](20) NULL,
	[PricePerSqFt] [decimal](18, 2) NULL,
	[View] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[Property]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[Property](
	[PropertyId] [bigint] NULL,
	[BusinessId] [int] NULL,
	[PostedBy] [int] NOT NULL,
	[Title] [varchar](255) NULL,
	[Description] [varchar](255) NULL,
	[PropertyType] [varchar](50) NULL,
	[ListingType] [varchar](10) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Locality] [varchar](150) NULL,
	[Address] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[Latitude] [decimal](18, 8) NULL,
	[Longitude] [decimal](18, 8) NULL,
	[Status] [varchar](50) NULL,
	[ListedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PropertyName] [varchar](100) NULL,
	[ProjectId] [bigint] NULL,
	[BuildingId] [bigint] NULL,
	[UnitTypeId] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[PropertyAmenities]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[PropertyAmenities](
	[AmenityId] [bigint] NULL,
	[IsAvailable] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[PropertyDetails]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[PropertyDetails](
	[DetailId] [int] NULL,
	[PropertyId] [bigint] NULL,
	[BHK] [int] NULL,
	[SuperArea] [decimal](18, 2) NULL,
	[CarpetArea] [decimal](18, 2) NULL,
	[Furnishing] [varchar](50) NULL,
	[FloorNumber] [int] NULL,
	[TotalFloors] [int] NULL,
	[AgeOfConstruction] [int] NULL,
	[Facing] [varchar](50) NULL,
	[OwnershipType] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Bathroom] [int] NULL,
	[Balcony] [int] NULL,
	[Parking] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[PropertyInquiries]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[PropertyInquiries](
	[ContactLogId] [bigint] NULL,
	[UserId] [int] NULL,
	[OwnerUserId] [int] NULL,
	[ClickedOn] [datetime] NULL,
	[ContactType] [varchar](20) NULL,
	[Source] [varchar](50) NULL,
	[IPAddress] [varchar](45) NULL,
	[UserAgent] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[PropertyListing]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[PropertyListing](
	[ListingId] [bigint] NULL,
	[PropertyId] [bigint] NULL,
	[ListingType] [varchar](50) NULL,
	[Price] [decimal](18, 2) NULL,
	[MaintenanceCharge] [decimal](18, 2) NULL,
	[DepositAmount] [decimal](18, 2) NULL,
	[AvailableFrom] [datetime] NULL,
	[PostedBy] [int] NULL,
	[ListingStatus] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PropertyName] [varchar](200) NULL,
	[Negotiable] [int] NULL,
	[PropertyStatus] [varchar](50) NULL,
	[IsVerified] [int] NULL,
	[ValidityPeriod] [int] NULL,
	[ValidFrom] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[PropertyOffer]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[PropertyOffer](
	[OfferId] [bigint] NULL,
	[ListingId] [bigint] NULL,
	[OfferedBy] [int] NULL,
	[OfferAmount] [decimal](18, 2) NULL,
	[OfferDate] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CounterOfferAmount] [decimal](18, 2) NULL,
	[Remarks] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[PropertyVisit]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[PropertyVisit](
	[VisitId] [bigint] NULL,
	[PropertyId] [bigint] NULL,
	[VisitorUserId] [int] NULL,
	[ScheduledDate] [datetime] NULL,
	[TimeSlot] [varchar](20) NULL,
	[Status] [varchar](50) NULL,
	[Notes] [varchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AssignedTo] [int] NULL,
	[RescheduledDate] [datetime] NULL,
	[VisitFeedback] [varchar](50) NULL,
	[FollowUpRequired] [int] NULL,
	[VisitorInterestLevel] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[RealEstateDocMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[RealEstateDocMaster](
	[DocId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[RealEstateImgMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[RealEstateImgMaster](
	[ImgId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[REBackendDiscount]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[REBackendDiscount](
	[BackendDiscountId] [int] NULL,
	[BusinessId] [int] NULL,
	[ProjectId] [int] NULL,
	[BuildingId] [int] NULL,
	[UnitTypeId] [int] NULL,
	[DiscountType] [varchar](50) NULL,
	[DiscountValue] [decimal](18, 2) NULL,
	[CommitmentPeriod] [int] NULL,
	[SaleCommitment] [varchar](20) NULL,
	[ValidFrom] [date] NULL,
	[ValidTo] [date] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MeasurementType] [varchar](50) NULL,
	[MarkUp] [decimal](4, 2) NULL,
	[CostPrice] [decimal](18, 2) NULL,
	[FinalPrice] [decimal](18, 2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[RentalAgreement]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[RentalAgreement](
	[AgreementId] [bigint] NULL,
	[AgreementNo] [varchar](50) NULL,
	[PropertyId] [bigint] NULL,
	[TenantUserId] [int] NULL,
	[OwnerUserId] [int] NULL,
	[AgreementType] [varchar](50) NULL,
	[LeaseStartDate] [date] NULL,
	[LeaseEndDate] [date] NULL,
	[RentAmount] [decimal](18, 2) NULL,
	[DepositAmount] [decimal](18, 2) NULL,
	[NoticePeriodDays] [int] NULL,
	[AgreementStatus] [varchar](50) NULL,
	[eSigned] [int] NOT NULL,
	[SignedOn] [datetime] NULL,
	[PoliceVerification] [int] NULL,
	[DocumentId] [bigint] NULL,
	[AgreementContent] [nvarchar](max) NULL,
	[AgreementURL] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MaintenanceAmount] [decimal](18, 2) NULL,
	[MaintenancePayableBy] [varchar](50) NULL,
	[DepositPaid] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[ReportedListing]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[ReportedListing](
	[ReportId] [bigint] NULL,
	[UserId] [int] NOT NULL,
	[PropertyId] [bigint] NULL,
	[BusinessId] [bigint] NULL,
	[Reason] [varchar](100) NULL,
	[Comment] [varchar](500) NULL,
	[ReportedOn] [datetime] NOT NULL,
	[Status] [varchar](20) NULL,
	[Name] [varchar](100) NULL,
	[PhoneNo] [varchar](20) NULL,
	[ReviewedBy] [int] NULL,
	[ReviewedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[UserAffiliationMapping](
	[MappingId] [int] NULL,
	[UserId] [int] NULL,
	[BusinessId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[UserPropertyShortlist]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[UserPropertyShortlist](
	[ShortlistId] [bigint] NULL,
	[UserId] [int] NULL,
	[PropertyId] [bigint] NULL,
	[ShortlistedOn] [datetime] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [reaudit].[UserRoleInProperty]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [reaudit].[UserRoleInProperty](
	[RecordId] [bigint] NULL,
	[PropertyId] [bigint] NULL,
	[UserId] [int] NULL,
	[Role] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[FullName] [varchar](150) NULL,
	[ContactNumber] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[AgencyName] [varchar](150) NULL,
	[RERARegistrationNo] [varchar](100) NULL,
	[Verified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Announcement]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Announcement](
	[AnnouncementId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[Title] [varchar](200) NULL,
	[Message] [nvarchar](2000) NULL,
	[Audience] [varchar](50) NULL,
	[PostedBy] [int] NULL,
	[PostedAt] [datetime] NULL,
	[ValidUntil] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Languages] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [sm].[Building]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Building](
	[BuildingId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[BuildingName] [varchar](100) NOT NULL,
	[Floors] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[DiscussionDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[DiscussionDetail](
	[DetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[DiscussionId] [int] NULL,
	[PostedByFlatId] [int] NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[DiscussionMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[DiscussionMaster](
	[DiscussionId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[BuildingId] [int] NULL,
	[DiscTitle] [varchar](500) NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[PostedByFlatId] [int] NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscussionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Facility]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Facility](
	[FacilityId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[FacilityName] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[BookingCharges] [decimal](18, 2) NULL,
	[AdvanceNoticeHours] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChargeType] [varchar](20) NOT NULL,
	[SlotDurationMinutes] [int] NULL,
	[IsSlotBased] [int] NOT NULL,
	[IsApprovalRequired] [int] NOT NULL,
	[MaxBookingPerDay] [int] NULL,
	[MaintenanceBlackoutDays] [nvarchar](100) NULL,
	[MaxUsersPerSlot] [int] NULL,
	[AllowGuestAccess] [int] NOT NULL,
	[FacilityImageUrl] [nvarchar](200) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[FacilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FacilityBooking]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FacilityBooking](
	[BookingId] [int] IDENTITY(1,1) NOT NULL,
	[FacilityId] [int] NULL,
	[FlatId] [int] NULL,
	[BookingDate] [datetime] NULL,
	[TimeSlot] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[PaymentRefNo] [varchar](100) NULL,
	[BookedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedOn] [datetime] NULL,
	[GuestCount] [int] NULL,
	[Notes] [nvarchar](500) NULL,
	[SocietyId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BookingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Flat]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Flat](
	[FlatId] [int] IDENTITY(1,1) NOT NULL,
	[BuildingId] [int] NULL,
	[Wing] [varchar](10) NULL,
	[FlatNumber] [varchar](50) NULL,
	[Floor] [int] NULL,
	[Status] [varchar](50) NULL,
	[OccupantType] [varchar](20) NULL,
	[OwnerId] [int] NULL,
	[PossessionDate] [datetime] NULL,
	[ParkingSlotNumber] [varchar](20) NULL,
	[IntercomNumber] [varchar](10) NULL,
	[MaintenanceStatus] [varchar](20) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FlatTypeId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FlatId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Flat_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Flat_BACKUP](
	[FlatId] [int] IDENTITY(1,1) NOT NULL,
	[BuildingId] [int] NULL,
	[Wing] [varchar](10) NULL,
	[FlatNumber] [varchar](50) NULL,
	[Floor] [int] NULL,
	[Status] [varchar](50) NULL,
	[OccupantType] [varchar](20) NULL,
	[OwnerId] [int] NULL,
	[PossessionDate] [datetime] NULL,
	[ParkingSlotNumber] [varchar](20) NULL,
	[IntercomNumber] [varchar](10) NULL,
	[MaintenanceStatus] [varchar](20) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FlatTypeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatFacility]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatFacility](
	[FacilityId] [bigint] IDENTITY(1,1) NOT NULL,
	[FlatId] [bigint] NULL,
	[DetailId] [bigint] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FacilityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatMaintenance]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatMaintenance](
	[FMId] [int] IDENTITY(1,1) NOT NULL,
	[FlatId] [int] NULL,
	[FlatTypeId] [int] NULL,
	[SocietyId] [int] NULL,
	[TotalMaintenance] [decimal](18, 2) NULL,
	[BillingMonth] [varchar](50) NULL,
	[DueDate] [datetime] NULL,
	[PaidAmount] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentStatus] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatMaintenanceDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatMaintenanceDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[FMId] [int] NULL,
	[ChargeId] [int] NULL,
	[ChargeName] [varchar](50) NULL,
	[ChargeDescription] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChargeAmt] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatMember]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatMember](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[FlatId] [int] NULL,
	[UserId] [int] NULL,
	[FullName] [varchar](150) NULL,
	[MobileNumber] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[Role] [varchar](50) NULL,
	[IsPrimaryOwner] [int] NULL,
	[MoveInDate] [datetime] NULL,
	[MoveOutDate] [datetime] NULL,
	[KYCStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatMember_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatMember_BACKUP](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[FlatId] [int] NULL,
	[UserId] [int] NULL,
	[FullName] [varchar](150) NULL,
	[MobileNumber] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[Role] [varchar](50) NULL,
	[IsPrimaryOwner] [int] NULL,
	[MoveInDate] [datetime] NULL,
	[MoveOutDate] [datetime] NULL,
	[KYCStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatMember_BACKUP_OLD]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatMember_BACKUP_OLD](
	[MemberId] [int] IDENTITY(1,1) NOT NULL,
	[FlatId] [int] NULL,
	[UserId] [int] NULL,
	[FullName] [varchar](150) NULL,
	[MobileNumber] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[Role] [varchar](50) NULL,
	[IsPrimaryOwner] [int] NULL,
	[MoveInDate] [datetime] NULL,
	[MoveOutDate] [datetime] NULL,
	[KYCStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatMemberKYC]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatMemberKYC](
	[KYCId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[DocumentType] [varchar](50) NULL,
	[DocumentNumber] [varchar](50) NULL,
	[FilePath] [varchar](255) NULL,
	[Verified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[KYCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatMemberKYC_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatMemberKYC_BACKUP](
	[KYCId] [int] IDENTITY(1,1) NOT NULL,
	[MemberId] [int] NULL,
	[DocumentType] [varchar](50) NULL,
	[DocumentNumber] [varchar](50) NULL,
	[FilePath] [varchar](255) NULL,
	[Verified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[FlatType]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[FlatType](
	[FlatTypeId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[TypeName] [varchar](100) NULL,
	[TypeDescription] [varchar](500) NULL,
	[BHK] [int] NULL,
	[Status] [varchar](50) NULL,
	[SuperArea] [decimal](10, 2) NULL,
	[CarpetArea] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FlatTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[MaintenanceChargeDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[MaintenanceChargeDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[ChargeId] [int] NULL,
	[ChargeName] [varchar](50) NULL,
	[ChargeDescription] [varchar](50) NULL,
	[ChargeAmt] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChargeType] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[MaintenanceChargeDetail_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[MaintenanceChargeDetail_BACKUP](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[ChargeId] [int] NULL,
	[ChargeName] [varchar](50) NULL,
	[ChargeDescription] [varchar](50) NULL,
	[ChargeAmt] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChargeType] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[MaintenanceChargeMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[MaintenanceChargeMaster](
	[ChargeId] [int] IDENTITY(1,1) NOT NULL,
	[FlatTypeId] [int] NULL,
	[SocietyId] [int] NULL,
	[MaintenanceCharges] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ChargeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[MaintenanceChargeMaster_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[MaintenanceChargeMaster_BACKUP](
	[ChargeId] [int] IDENTITY(1,1) NOT NULL,
	[FlatTypeId] [int] NULL,
	[SocietyId] [int] NULL,
	[MaintenanceCharges] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[MaintenancePayment]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[MaintenancePayment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[ChargeId] [int] NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[ModeOfPayment] [varchar](50) NULL,
	[TransactionRefNo] [varchar](100) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ProductType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[MaintenancePayment_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[MaintenancePayment_BACKUP](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[ChargeId] [int] NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[ModeOfPayment] [varchar](50) NULL,
	[TransactionRefNo] [varchar](100) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ProductType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Meeting]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Meeting](
	[MeetingId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[Title] [varchar](200) NULL,
	[Agenda] [varchar](50) NULL,
	[MeetingDate] [datetime] NULL,
	[Mode] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MeetingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[MeetingVote]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[MeetingVote](
	[VoteId] [int] IDENTITY(1,1) NOT NULL,
	[MeetingId] [int] NULL,
	[FlatId] [int] NULL,
	[VoteOption] [varchar](50) NULL,
	[VotedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VoteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[OnboardingPreCheck](
	[PreCheckId] [bigint] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Parking]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Parking](
	[ParkingId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NOT NULL,
	[BuildingId] [int] NOT NULL,
	[FlatId] [int] NULL,
	[ParkingNumber] [nvarchar](50) NOT NULL,
	[ParkingType] [nvarchar](50) NOT NULL,
	[Level] [nvarchar](50) NULL,
	[VehicleType] [nvarchar](50) NULL,
	[IsReserved] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OwnershipType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ParkingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[ReceiptDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[ReceiptDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterAmt] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[ReceiptDetail_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[ReceiptDetail_BACKUP](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterAmt] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[ReceiptMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[ReceiptMaster](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[RStatus] [varchar](20) NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[ReceiptMaster_BACKUP]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[ReceiptMaster_BACKUP](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[RStatus] [varchar](20) NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Security]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Security](
	[EntryId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[FlatId] [int] NULL,
	[BuildingId] [int] NULL,
	[UserId] [int] NULL,
	[VisitorName] [varchar](255) NULL,
	[VisitorMobileNo] [varchar](50) NULL,
	[VehicleNumber] [varchar](50) NULL,
	[EntryType] [varchar](500) NULL,
	[OTPCode] [varchar](6) NULL,
	[QRCode] [varchar](255) NULL,
	[Purpose] [varchar](255) NULL,
	[EntryTime] [datetime] NULL,
	[ExitTime] [datetime] NULL,
	[Remarks] [varchar](500) NULL,
	[RequestedBy] [int] NULL,
	[ApprovalStatus] [varchar](500) NULL,
	[ApprovalBy] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EntryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[ServiceRequest]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[ServiceRequest](
	[RequestId] [int] IDENTITY(1,1) NOT NULL,
	[FlatId] [int] NULL,
	[Category] [varchar](100) NULL,
	[Subject] [varchar](200) NULL,
	[Description] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[Society]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[Society](
	[SocietyId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyName] [varchar](200) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[ZipCode] [varchar](10) NULL,
	[ContactEmail] [varchar](100) NULL,
	[ContactPhone] [varchar](15) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[SocietyDescription] [varchar](500) NULL,
	[RegistrationNumber] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SocietyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[SocietyDocMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[SocietyDocMaster](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[SocietyImgMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[SocietyImgMaster](
	[ImgId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[UserAffiliationMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[SocietyId] [int] NULL,
	[BuildingId] [int] NULL,
	[FlatId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[VaultDocument]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[VaultDocument](
	[VaultDocId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NULL,
	[Title] [varchar](200) NOT NULL,
	[FilePath] [varchar](255) NOT NULL,
	[Description] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[UploadedBy] [int] NULL,
	[UploadDate] [datetime] NULL,
	[IsConfidential] [int] NULL,
	[AccessLevel] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VaultDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[VisitorLog]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[VisitorLog](
	[VisitorLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[FlatId] [int] NULL,
	[VisitorName] [varchar](100) NULL,
	[VisitorMobile] [varchar](15) NULL,
	[VisitPurpose] [varchar](100) NULL,
	[CheckIn] [datetime] NULL,
	[CheckOut] [datetime] NULL,
	[ApprovedBy] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VisitorLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[VotingDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[VotingDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[VotingId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
	[OptionSelected] [nvarchar](100) NOT NULL,
	[Remarks] [nvarchar](500) NOT NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FlatId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sm].[VotingMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sm].[VotingMaster](
	[VotingId] [int] IDENTITY(1,1) NOT NULL,
	[SocietyId] [int] NOT NULL,
	[VotingDate] [datetime] NULL,
	[MasterCode] [varchar](50) NULL,
	[Question] [nvarchar](500) NOT NULL,
	[Options] [nvarchar](max) NOT NULL,
	[IsAnonymous] [int] NULL,
	[VotingDescription] [varchar](500) NULL,
	[RequestedBy] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VotingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Announcement]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Announcement](
	[AnnouncementId] [int] NULL,
	[SocietyId] [int] NULL,
	[Title] [varchar](200) NULL,
	[Message] [nvarchar](2000) NULL,
	[Audience] [varchar](50) NULL,
	[PostedBy] [int] NULL,
	[PostedAt] [datetime] NULL,
	[ValidUntil] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Languages] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Building]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Building](
	[BuildingId] [int] NULL,
	[SocietyId] [int] NULL,
	[BuildingName] [varchar](100) NOT NULL,
	[Floors] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[DiscussionDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[DiscussionDetail](
	[DetailId] [bigint] NULL,
	[DiscussionId] [int] NULL,
	[PostedByFlatId] [int] NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[DiscussionMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[DiscussionMaster](
	[DiscussionId] [int] NULL,
	[SocietyId] [int] NULL,
	[BuildingId] [int] NULL,
	[DiscTitle] [varchar](500) NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[PostedByFlatId] [int] NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Facility]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Facility](
	[FacilityId] [int] NULL,
	[SocietyId] [int] NULL,
	[FacilityName] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[BookingCharges] [decimal](18, 2) NULL,
	[AdvanceNoticeHours] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChargeType] [varchar](20) NOT NULL,
	[SlotDurationMinutes] [int] NULL,
	[IsSlotBased] [int] NOT NULL,
	[IsApprovalRequired] [int] NOT NULL,
	[MaxBookingPerDay] [int] NULL,
	[MaintenanceBlackoutDays] [nvarchar](100) NULL,
	[MaxUsersPerSlot] [int] NULL,
	[AllowGuestAccess] [int] NOT NULL,
	[FacilityImageUrl] [nvarchar](200) NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[FacilityBooking]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[FacilityBooking](
	[BookingId] [int] NULL,
	[FacilityId] [int] NULL,
	[FlatId] [int] NULL,
	[BookingDate] [datetime] NULL,
	[TimeSlot] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[PaymentRefNo] [varchar](100) NULL,
	[BookedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[StartTime] [time](7) NULL,
	[EndTime] [time](7) NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedOn] [datetime] NULL,
	[GuestCount] [int] NULL,
	[Notes] [nvarchar](500) NULL,
	[SocietyId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Flat]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Flat](
	[FlatId] [int] NULL,
	[BuildingId] [int] NULL,
	[Wing] [varchar](10) NULL,
	[FlatNumber] [varchar](50) NULL,
	[Floor] [int] NULL,
	[Status] [varchar](50) NULL,
	[OccupantType] [varchar](20) NULL,
	[OwnerId] [int] NULL,
	[PossessionDate] [datetime] NULL,
	[ParkingSlotNumber] [varchar](20) NULL,
	[IntercomNumber] [varchar](10) NULL,
	[MaintenanceStatus] [varchar](20) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FlatTypeId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[FlatFacility]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[FlatFacility](
	[FacilityId] [bigint] NULL,
	[FlatId] [bigint] NULL,
	[DetailId] [bigint] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[FlatMaintenance]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[FlatMaintenance](
	[FMId] [int] NULL,
	[FlatId] [int] NULL,
	[FlatTypeId] [int] NULL,
	[SocietyId] [int] NULL,
	[TotalMaintenance] [decimal](18, 2) NULL,
	[BillingMonth] [varchar](50) NULL,
	[DueDate] [datetime] NULL,
	[PaidAmount] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[PaymentStatus] [varchar](50) NULL,
	[Remarks] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[FlatMaintenanceDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[FlatMaintenanceDetail](
	[DetailId] [int] NULL,
	[FMId] [int] NULL,
	[ChargeId] [int] NULL,
	[ChargeName] [varchar](50) NULL,
	[ChargeDescription] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChargeAmt] [nchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[FlatMember]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[FlatMember](
	[MemberId] [int] NULL,
	[FlatId] [int] NULL,
	[UserId] [int] NULL,
	[FullName] [varchar](150) NULL,
	[MobileNumber] [varchar](15) NULL,
	[Email] [varchar](100) NULL,
	[Role] [varchar](50) NULL,
	[IsPrimaryOwner] [int] NULL,
	[MoveInDate] [datetime] NULL,
	[MoveOutDate] [datetime] NULL,
	[KYCStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[FlatMemberKYC]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[FlatMemberKYC](
	[KYCId] [int] NULL,
	[MemberId] [int] NULL,
	[DocumentType] [varchar](50) NULL,
	[DocumentNumber] [varchar](50) NULL,
	[FilePath] [varchar](255) NULL,
	[Verified] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[FlatType]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[FlatType](
	[FlatTypeId] [int] NULL,
	[SocietyId] [int] NULL,
	[TypeName] [varchar](100) NULL,
	[TypeDescription] [varchar](500) NULL,
	[BHK] [int] NULL,
	[Status] [varchar](50) NULL,
	[SuperArea] [decimal](10, 2) NULL,
	[CarpetArea] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[MaintenanceChargeDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[MaintenanceChargeDetail](
	[DetailId] [int] NULL,
	[ChargeId] [int] NULL,
	[ChargeName] [varchar](50) NULL,
	[ChargeDescription] [varchar](50) NULL,
	[ChargeAmt] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ChargeType] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[MaintenanceChargeMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[MaintenanceChargeMaster](
	[ChargeId] [int] NULL,
	[FlatTypeId] [int] NULL,
	[SocietyId] [int] NULL,
	[MaintenanceCharges] [decimal](10, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[MaintenancePayment]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[MaintenancePayment](
	[PaymentId] [int] NULL,
	[ChargeId] [int] NULL,
	[AmountPaid] [decimal](18, 2) NULL,
	[PaymentDate] [datetime] NULL,
	[ModeOfPayment] [varchar](50) NULL,
	[TransactionRefNo] [varchar](100) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[ProductType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Meeting]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Meeting](
	[MeetingId] [int] NULL,
	[SocietyId] [int] NULL,
	[Title] [varchar](200) NULL,
	[Agenda] [varchar](50) NULL,
	[MeetingDate] [datetime] NULL,
	[Mode] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[MeetingVote]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[MeetingVote](
	[VoteId] [int] NULL,
	[MeetingId] [int] NULL,
	[FlatId] [int] NULL,
	[VoteOption] [varchar](50) NULL,
	[VotedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[OnboardingPreCheck](
	[PreCheckId] [bigint] NULL,
	[SocietyId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Parking]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Parking](
	[ParkingId] [int] NULL,
	[SocietyId] [int] NULL,
	[BuildingId] [int] NULL,
	[FlatId] [int] NULL,
	[ParkingNumber] [nvarchar](50) NULL,
	[ParkingType] [nvarchar](50) NULL,
	[Level] [nvarchar](50) NULL,
	[VehicleType] [nvarchar](50) NULL,
	[IsReserved] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OwnershipType] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[ReceiptDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[ReceiptDetail](
	[DetailId] [int] NULL,
	[ReceiptId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterAmt] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[ReceiptMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[ReceiptMaster](
	[ReceiptId] [int] NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[RStatus] [varchar](20) NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Security]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Security](
	[EntryId] [int] NULL,
	[SocietyId] [int] NULL,
	[FlatId] [int] NULL,
	[BuildingId] [int] NULL,
	[UserId] [int] NULL,
	[VisitorName] [varchar](255) NULL,
	[VisitorMobileNo] [varchar](50) NULL,
	[VehicleNumber] [varchar](50) NULL,
	[EntryType] [varchar](500) NULL,
	[OTPCode] [varchar](6) NULL,
	[QRCode] [varchar](255) NULL,
	[Purpose] [varchar](255) NULL,
	[EntryTime] [datetime] NULL,
	[ExitTime] [datetime] NULL,
	[Remarks] [varchar](500) NULL,
	[RequestedBy] [int] NULL,
	[ApprovalStatus] [varchar](500) NULL,
	[ApprovalBy] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[ServiceRequest]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[ServiceRequest](
	[RequestId] [int] NULL,
	[FlatId] [int] NULL,
	[Category] [varchar](100) NULL,
	[Subject] [varchar](200) NULL,
	[Description] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[Society]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[Society](
	[SocietyId] [int] NULL,
	[SocietyName] [varchar](200) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[ZipCode] [varchar](10) NULL,
	[ContactEmail] [varchar](100) NULL,
	[ContactPhone] [varchar](15) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[SocietyDescription] [varchar](500) NULL,
	[RegistrationNumber] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[SocietyDocMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[SocietyDocMaster](
	[DocId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[SocietyImgMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[SocietyImgMaster](
	[ImgId] [int] NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[UserAffiliationMapping](
	[MappingId] [int] NULL,
	[UserId] [int] NULL,
	[SocietyId] [int] NULL,
	[BuildingId] [int] NULL,
	[FlatId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[VaultDocument]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[VaultDocument](
	[VaultDocId] [int] NULL,
	[SocietyId] [int] NULL,
	[Title] [varchar](200) NULL,
	[FilePath] [varchar](255) NULL,
	[Description] [varchar](50) NULL,
	[Category] [varchar](50) NULL,
	[UploadedBy] [int] NULL,
	[UploadDate] [datetime] NULL,
	[IsConfidential] [int] NULL,
	[AccessLevel] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[VisitorLog]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[VisitorLog](
	[VisitorLogId] [bigint] NULL,
	[FlatId] [int] NULL,
	[VisitorName] [varchar](100) NULL,
	[VisitorMobile] [varchar](15) NULL,
	[VisitPurpose] [varchar](100) NULL,
	[CheckIn] [datetime] NULL,
	[CheckOut] [datetime] NULL,
	[ApprovedBy] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[VotingDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[VotingDetail](
	[DetailId] [int] NULL,
	[VotingId] [int] NULL,
	[UserId] [int] NULL,
	[OptionSelected] [nvarchar](100) NULL,
	[Remarks] [nvarchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FlatId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [smaudit].[VotingMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [smaudit].[VotingMaster](
	[VotingId] [int] NULL,
	[SocietyId] [int] NULL,
	[VotingDate] [datetime] NULL,
	[MasterCode] [varchar](50) NULL,
	[Question] [nvarchar](500) NULL,
	[Options] [nvarchar](max) NULL,
	[IsAnonymous] [int] NULL,
	[VotingDescription] [varchar](500) NULL,
	[RequestedBy] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[Status] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [spe].[Activity]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[Activity](
	[ActivityId] [int] IDENTITY(1,1) NOT NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](20) NULL,
	[Message] [nvarchar](max) NOT NULL,
	[MessageType] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [spe].[Announcement]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[Announcement](
	[AnnouncementId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[MasterId] [varchar](100) NULL,
	[Message] [nvarchar](2000) NULL,
	[Audience] [varchar](max) NULL,
	[PostedAt] [datetime] NULL,
	[ValidUntil] [datetime] NULL,
	[Languages] [nvarchar](max) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterType] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [spe].[AssignmentMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[AssignmentMaster](
	[AssignmentId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[TeacherId] [int] NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[AssignedDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[SubmissionType] [varchar](20) NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FileUrl] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[ClassMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[ClassMaster](
	[ClassId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[ClassName] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ClassId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[CurriculumMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[CurriculumMaster](
	[CurriculumId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[ClassId] [int] NULL,
	[CurriculumName] [varchar](100) NOT NULL,
	[Description] [varchar](500) NOT NULL,
	[StartYear] [datetime] NULL,
	[EndYear] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AcademicYear] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CurriculumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[CurriculumSubjectMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[CurriculumSubjectMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[CurriculumId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[SequenceOrder] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[DiscussionDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[DiscussionDetail](
	[DetailId] [bigint] IDENTITY(1,1) NOT NULL,
	[DiscussionId] [int] NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[DiscussionMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[DiscussionMaster](
	[DiscussionId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[DiscTitle] [varchar](500) NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DiscussionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[EventMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[EventMaster](
	[EventId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[Title] [nvarchar](200) NOT NULL,
	[EventCategory] [varchar](50) NULL,
	[EventDate] [date] NULL,
	[EventType] [varchar](20) NULL,
	[Description] [nvarchar](max) NULL,
	[IsPublished] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [spe].[ExamMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[ExamMaster](
	[ExamId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[AcademicYear] [varchar](50) NULL,
	[ExamName] [nvarchar](100) NULL,
	[ExamType] [varchar](20) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [varchar](20) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[GraceMarks] [int] NULL,
	[Description] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[ExamId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[ExamSchedule]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[ExamSchedule](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[ExamId] [int] NOT NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[ExamDate] [date] NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[Duration] [int] NULL,
	[Weightage] [decimal](5, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Description] [varchar](500) NULL,
	[IsPublished] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[FeeComponentMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[FeeComponentMaster](
	[FeeComponentId] [int] IDENTITY(1,1) NOT NULL,
	[InstallmentId] [int] NOT NULL,
	[ComponentName] [varchar](50) NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeeComponentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[Feedback]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[Feedback](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](20) NULL,
	[TeacherId] [int] NULL,
	[SchoolId] [int] NULL,
	[Rating] [int] NULL,
	[Feedback] [nvarchar](max) NULL,
	[FeedbackType] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [spe].[FeeInstallmentMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[FeeInstallmentMaster](
	[InstallmentId] [int] IDENTITY(1,1) NOT NULL,
	[FeeStructureId] [int] NULL,
	[InstallmentName] [varchar](100) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[InstallmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[FeeStructureMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[FeeStructureMaster](
	[FeeStructureId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NOT NULL,
	[FeeType] [varchar](50) NOT NULL,
	[Frequency] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[ApplicableFrom] [datetime] NULL,
	[ApplicableTo] [datetime] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FName] [varchar](100) NULL,
	[IsMandatory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeeStructureId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[LoanRequest]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[LoanRequest](
	[LoanRequestId] [bigint] IDENTITY(1,1) NOT NULL,
	[ServiceProviderRRN] [varchar](100) NULL,
	[UserId] [bigint] NOT NULL,
	[SubUserId] [bigint] NULL,
	[BusinessId] [bigint] NOT NULL,
	[LoanAmount] [decimal](18, 2) NOT NULL,
	[ProductType] [varchar](50) NOT NULL,
	[Purpose] [varchar](255) NULL,
	[CurrencyCode] [varchar](50) NULL,
	[DeviceType] [varchar](50) NULL,
	[DeviceName] [varchar](100) NULL,
	[IPAddress] [varchar](50) NULL,
	[GeoLatitude] [decimal](18, 6) NULL,
	[GeoLongitude] [decimal](18, 6) NULL,
	[Status] [varchar](50) NULL,
	[LoanProviderRRN] [varchar](100) NULL,
	[LoanProviderTxnId] [varchar](100) NULL,
	[RequestDate] [datetime] NULL,
	[ResponseDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[LoanRequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[OnboardingPreCheck](
	[PreCheckId] [bigint] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PreCheckId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[ParentStudentMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[ParentStudentMapping](
	[MapId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[StudentId] [int] NOT NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MapId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[PrintMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[PrintMaster](
	[PrintId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[TemplateId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [nvarchar](100) NULL,
	[PName] [nvarchar](255) NULL,
	[PDesc] [nvarchar](max) NULL,
	[PContent] [nvarchar](max) NULL,
	[PSeq] [int] NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[PrintId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [spe].[ReceiptDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[ReceiptDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterAmt] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[ReceiptMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[ReceiptMaster](
	[ReceiptId] [int] IDENTITY(1,1) NOT NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[RStatus] [varchar](20) NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ReceiptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[SchoolBankMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[SchoolBankMaster](
	[BankId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[AccountNo] [varchar](50) NOT NULL,
	[BankName] [varchar](100) NULL,
	[BranchName] [varchar](100) NULL,
	[IFSCCode] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Contact] [varchar](200) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDefault] [int] NULL,
	[AccountHolderName] [varchar](100) NULL,
	[AccountType] [varchar](50) NULL,
	[IsVerified] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[BankId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[SchoolDocMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[SchoolDocMaster](
	[DocId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[SchoolImgMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[SchoolImgMaster](
	[ImgId] [int] IDENTITY(1,1) NOT NULL,
	[MasterType] [varchar](50) NOT NULL,
	[MasterId] [int] NOT NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ImgId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[SchoolMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[SchoolMaster](
	[SchoolId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolName] [varchar](200) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[AffiliationNumber] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Longitude] [decimal](9, 6) NULL,
	[Latitude] [decimal](9, 6) NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[ImgPath] [nvarchar](500) NULL,
	[PhoneNo] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[Description] [varchar](500) NULL,
	[SchoolType] [varchar](100) NULL,
	[Website] [varchar](255) NULL,
	[BoardName] [varchar](100) NULL,
	[MediumOfInstruction] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[SchoolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[SectionMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[SectionMaster](
	[SectionId] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[SectionName] [varchar](50) NOT NULL,
	[Capacity] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SectionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[StudentAdmission]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[StudentAdmission](
	[AdmissionId] [int] IDENTITY(1,1) NOT NULL,
	[AdmissionNo] [nvarchar](50) NULL,
	[SUserId] [int] NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[ProfileImg] [nvarchar](500) NULL,
	[DOB] [date] NULL,
	[Gender] [nvarchar](10) NOT NULL,
	[BloodGroup] [nvarchar](5) NULL,
	[MobileNo] [nvarchar](15) NOT NULL,
	[EmailId] [nvarchar](200) NULL,
	[AadharNumber] [nvarchar](20) NULL,
	[PanNumber] [nvarchar](20) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Caste] [nvarchar](50) NULL,
	[MotherTongue] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[PinCode] [nvarchar](10) NULL,
	[SpecialNeeds] [nvarchar](250) NULL,
	[DisabilityStatus] [nvarchar](50) NULL,
	[SchoolId] [int] NOT NULL,
	[AcademicYear] [varchar](20) NOT NULL,
	[ClassId] [int] NOT NULL,
	[AdmissionCategory] [nvarchar](50) NULL,
	[AdmissionStatus] [nvarchar](50) NULL,
	[ApplicationDate] [date] NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedDate] [date] NULL,
	[Remarks] [nvarchar](250) NULL,
	[AdmissionDate] [date] NULL,
	[AdmissionMedium] [nvarchar](200) NULL,
	[AdmissionType] [nvarchar](50) NULL,
	[AdmissionBoard] [nvarchar](50) NULL,
	[PreviousSchoolName] [nvarchar](200) NULL,
	[PreviousSchoolAddress] [nvarchar](250) NULL,
	[PreviousMedium] [nvarchar](200) NULL,
	[PreviousLastClass] [nvarchar](50) NULL,
	[PreviousMarksObtained] [decimal](5, 2) NULL,
	[PreviousBoard] [nvarchar](50) NULL,
	[ReasonForTransfer] [nvarchar](250) NULL,
	[TransferCertificateNo] [nvarchar](50) NULL,
	[TCDate] [date] NULL,
	[PGRelation] [nvarchar](50) NULL,
	[PGUserId] [int] NULL,
	[PGName] [nvarchar](200) NULL,
	[PGDOB] [date] NULL,
	[PGProfileImg] [nvarchar](500) NULL,
	[PGEducation] [nvarchar](200) NULL,
	[PGMobileNo] [nvarchar](15) NULL,
	[PGOccupation] [nvarchar](100) NULL,
	[PGDesignation] [nvarchar](100) NULL,
	[PGAnnualIncome] [nvarchar](100) NULL,
	[PGEmailId] [nvarchar](100) NULL,
	[PGAadharNumber] [nvarchar](20) NULL,
	[PGPanNumber] [nvarchar](20) NULL,
	[SGRelation] [nvarchar](50) NULL,
	[SGUserId] [int] NULL,
	[SGName] [nvarchar](200) NULL,
	[SGDOB] [date] NULL,
	[SGProfileImg] [nvarchar](500) NULL,
	[SGEducation] [nvarchar](200) NULL,
	[SGMobileNo] [nvarchar](15) NULL,
	[SGOccupation] [nvarchar](100) NULL,
	[SGDesignation] [nvarchar](100) NULL,
	[SGAnnualIncome] [nvarchar](100) NULL,
	[SGEmailId] [nvarchar](100) NULL,
	[SGAadharNumber] [nvarchar](20) NULL,
	[SGPanNumber] [nvarchar](20) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AdmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[StudentAssignmentSubmission]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[StudentAssignmentSubmission](
	[SubmissionId] [int] IDENTITY(1,1) NOT NULL,
	[AssignmentId] [int] NULL,
	[StudentId] [int] NULL,
	[SubmissionDate] [datetime] NULL,
	[FileUrl] [nvarchar](500) NULL,
	[Status] [varchar](20) NULL,
	[MarksObtained] [int] NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[Remarks] [nvarchar](max) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubmissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [spe].[StudentClassMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[StudentClassMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[SectionId] [int] NULL,
	[AcademicYear] [varchar](10) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[StudentExamMarks]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[StudentExamMarks](
	[MarkId] [int] IDENTITY(1,1) NOT NULL,
	[ScheduleId] [int] NOT NULL,
	[StudentId] [int] NULL,
	[ObtainedMarks] [decimal](5, 2) NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[Percentage] [decimal](5, 2) NULL,
	[Grade] [varchar](10) NULL,
	[Result] [varchar](20) NULL,
	[Remarks] [varchar](250) NULL,
	[GraceMarks] [int] NULL,
	[GraceMarksGiven] [int] NULL,
	[IsAbsent] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsConfirm] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[StudentFeeStructureMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[StudentFeeStructureMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[StudentId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[FeeStructureId] [int] NOT NULL,
	[FeeType] [nvarchar](100) NOT NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[StudentRegistration]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[StudentRegistration](
	[RegistrationId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[UserId] [int] NULL,
	[AdmissionNo] [varchar](20) NULL,
	[AdmissionType] [varchar](20) NULL,
	[AdmissionStatus] [varchar](20) NULL,
	[MotherTongue] [varchar](50) NULL,
	[IncomeProof] [varchar](500) NULL,
	[PreviousSchoolName] [varchar](255) NULL,
	[PLastClass] [varchar](50) NULL,
	[PMarksObtained] [varchar](20) NULL,
	[TransferCertificateNo] [varchar](50) NULL,
	[TCDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AdmissionDate] [datetime] NULL,
	[AcademicYear] [varchar](20) NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[AdmissionCategory] [varchar](100) NULL,
	[PreviousSchoolAddress] [varchar](500) NULL,
	[PBoard] [varchar](100) NULL,
	[ReasonForTransfer] [varchar](500) NULL,
	[GuardianType] [varchar](50) NULL,
	[GuardianName] [varchar](100) NULL,
	[GuardianContactNo] [varchar](20) NULL,
	[AlternateContactNo] [varchar](20) NULL,
	[SpecialNeeds] [varchar](500) NULL,
	[DisabilityStatus] [varchar](100) NULL,
	[MappingId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[RegistrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[StudentRouteMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[StudentRouteMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RouteId] [int] NULL,
	[PickupDetailId] [int] NULL,
	[DropDetailId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[SubjectMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[SubjectMaster](
	[SubjectId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[ClassId] [int] NULL,
	[SubjectCode] [varchar](20) NOT NULL,
	[SubjectName] [varchar](50) NOT NULL,
	[Description] [varchar](500) NULL,
	[AcademicLevel] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[TeacherClassSubjectMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[TeacherClassSubjectMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[TeacherId] [int] NULL,
	[SchoolId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[AcademicYear] [nvarchar](20) NOT NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[TeacherScheduleMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[TeacherScheduleMaster](
	[ScheduleId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NOT NULL,
	[ScheduleDate] [datetime] NULL,
	[TeacherId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[SectionId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
	[ScheduleType] [varchar](50) NULL,
	[StartTime] [time](7) NOT NULL,
	[Duration] [int] NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Mode] [varchar](50) NOT NULL,
	[MeetingLink] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[DayOfWeek] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ScheduleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[UserAffiliationMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[SchoolId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Occupation] [varchar](100) NULL,
	[Income] [decimal](18, 2) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AssignedRoleId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[VehicleDriverAssignment]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[VehicleDriverAssignment](
	[AssignmentId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NULL,
	[DriverId] [int] NULL,
	[RouteId] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsPrimaryDriver] [int] NULL,
	[Shift] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AssignmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[VehicleMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[VehicleMaster](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[SchoolId] [int] NULL,
	[VehicleNo] [varchar](20) NULL,
	[ImgPath] [varchar](255) NULL,
	[Capacity] [int] NULL,
	[Type] [varchar](20) NULL,
	[OwnershipType] [varchar](20) NULL,
	[ChassisNo] [varchar](50) NULL,
	[InsuranceExpiryDate] [datetime] NULL,
	[PermitNo] [varchar](50) NULL,
	[PermitExpiryDate] [datetime] NULL,
	[Status] [varchar](10) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[VehicleRouteDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[VehicleRouteDetail](
	[DetailId] [int] IDENTITY(1,1) NOT NULL,
	[RouteId] [int] NULL,
	[StopName] [varchar](100) NULL,
	[Latitude] [decimal](18, 6) NULL,
	[Longitude] [decimal](18, 6) NULL,
	[SequenceNo] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[DetailId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[VehicleRouteMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[VehicleRouteMapping](
	[MappingId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MappingId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spe].[VehicleRouteMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spe].[VehicleRouteMaster](
	[RouteId] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [varchar](50) NULL,
	[SchoolId] [int] NULL,
	[StartLocation] [varchar](250) NULL,
	[EndLocation] [varchar](50) NULL,
	[Distance] [decimal](18, 2) NULL,
	[EstimatedTime] [decimal](5, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[RouteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[Activity]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[Activity](
	[ActivityId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](20) NULL,
	[Message] [nvarchar](max) NULL,
	[MessageType] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[Announcement]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[Announcement](
	[AnnouncementId] [int] NULL,
	[SchoolId] [int] NULL,
	[Title] [nvarchar](250) NULL,
	[MasterId] [varchar](100) NULL,
	[Message] [nvarchar](2000) NULL,
	[Audience] [varchar](max) NULL,
	[PostedAt] [datetime] NULL,
	[ValidUntil] [datetime] NULL,
	[Languages] [nvarchar](max) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[MasterType] [varchar](50) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[AssignmentMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[AssignmentMaster](
	[AssignmentId] [int] NULL,
	[SchoolId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[TeacherId] [int] NULL,
	[Title] [nvarchar](200) NULL,
	[Description] [nvarchar](500) NULL,
	[AssignedDate] [datetime] NULL,
	[DueDate] [datetime] NULL,
	[SubmissionType] [varchar](20) NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FileUrl] [nvarchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[ClassMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[ClassMaster](
	[ClassId] [int] NULL,
	[SchoolId] [int] NULL,
	[ClassName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[CurriculumMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[CurriculumMaster](
	[CurriculumId] [int] NULL,
	[SchoolId] [int] NULL,
	[ClassId] [int] NULL,
	[CurriculumName] [varchar](100) NULL,
	[Description] [varchar](500) NULL,
	[StartYear] [datetime] NULL,
	[EndYear] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AcademicYear] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[CurriculumSubjectMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[CurriculumSubjectMapping](
	[MappingId] [int] NULL,
	[CurriculumId] [int] NULL,
	[SubjectId] [int] NULL,
	[ClassId] [int] NULL,
	[SequenceOrder] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[DiscussionDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[DiscussionDetail](
	[DetailId] [bigint] NULL,
	[DiscussionId] [int] NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[DiscussionMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[DiscussionMaster](
	[DiscussionId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[DiscTitle] [varchar](500) NULL,
	[DiscDesc] [nvarchar](4000) NULL,
	[PostedBy] [varchar](50) NULL,
	[PostedAt] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[EventMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[EventMaster](
	[EventId] [int] NULL,
	[SchoolId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[Title] [nvarchar](200) NULL,
	[EventCategory] [varchar](50) NULL,
	[EventDate] [date] NULL,
	[EventType] [varchar](20) NULL,
	[Description] [nvarchar](max) NULL,
	[IsPublished] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[ExamMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[ExamMaster](
	[ExamId] [int] NULL,
	[SchoolId] [int] NULL,
	[AcademicYear] [varchar](50) NULL,
	[ExamName] [nvarchar](100) NULL,
	[ExamType] [varchar](20) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[Status] [varchar](20) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[GraceMarks] [int] NULL,
	[Description] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[ExamSchedule]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[ExamSchedule](
	[ScheduleId] [int] NULL,
	[ExamId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[ExamDate] [date] NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[Duration] [int] NULL,
	[Weightage] [decimal](5, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Description] [varchar](500) NULL,
	[IsPublished] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[FeeComponent]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[FeeComponent](
	[FeeComponentId] [int] NULL,
	[FeeStructureId] [int] NULL,
	[ComponentName] [nvarchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Remarks] [nvarchar](255) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[FeeComponentMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[FeeComponentMaster](
	[FeeComponentId] [int] NULL,
	[InstallmentId] [int] NULL,
	[ComponentName] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[Feedback]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[Feedback](
	[FeedbackId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [varchar](20) NULL,
	[TeacherId] [int] NULL,
	[SchoolId] [int] NULL,
	[Rating] [int] NULL,
	[Feedback] [nvarchar](max) NULL,
	[FeedbackType] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[FeeInstallmentMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[FeeInstallmentMaster](
	[InstallmentId] [int] NULL,
	[FeeStructureId] [int] NULL,
	[InstallmentName] [varchar](100) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[FeeStructureMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[FeeStructureMaster](
	[FeeStructureId] [int] NULL,
	[ClassId] [int] NULL,
	[FeeType] [varchar](50) NULL,
	[Frequency] [varchar](50) NULL,
	[Amount] [decimal](18, 2) NULL,
	[ApplicableFrom] [datetime] NULL,
	[ApplicableTo] [datetime] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[FName] [varchar](100) NULL,
	[IsMandatory] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[LoanRequest]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[LoanRequest](
	[LoanRequestId] [bigint] NULL,
	[ServiceProviderRRN] [varchar](100) NULL,
	[UserId] [bigint] NULL,
	[SubUserId] [bigint] NULL,
	[BusinessId] [bigint] NULL,
	[LoanAmount] [decimal](18, 2) NULL,
	[ProductType] [varchar](50) NULL,
	[Purpose] [varchar](255) NULL,
	[CurrencyCode] [varchar](50) NULL,
	[DeviceType] [varchar](50) NULL,
	[DeviceName] [varchar](100) NULL,
	[IPAddress] [varchar](50) NULL,
	[GeoLatitude] [decimal](18, 6) NULL,
	[GeoLongitude] [decimal](18, 6) NULL,
	[Status] [varchar](50) NULL,
	[LoanProviderRRN] [varchar](100) NULL,
	[LoanProviderTxnId] [varchar](100) NULL,
	[RequestDate] [datetime] NULL,
	[ResponseDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[OnboardingPreCheck]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[OnboardingPreCheck](
	[PreCheckId] [bigint] NULL,
	[SchoolId] [int] NULL,
	[PName] [varchar](100) NULL,
	[PDesc] [varchar](500) NULL,
	[IsVerified] [int] NULL,
	[VerifiedBy] [varchar](100) NULL,
	[VerifiedDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[ParentStudentMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[ParentStudentMapping](
	[MapId] [int] NULL,
	[ParentId] [int] NULL,
	[StudentId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[PrintMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[PrintMaster](
	[PrintId] [int] NULL,
	[SchoolId] [int] NULL,
	[TemplateId] [int] NULL,
	[MasterId] [int] NULL,
	[MasterType] [nvarchar](100) NULL,
	[PName] [nvarchar](255) NULL,
	[PDesc] [nvarchar](max) NULL,
	[PContent] [nvarchar](max) NULL,
	[PSeq] [int] NULL,
	[OtherDetail1] [nvarchar](255) NULL,
	[OtherDetail2] [nvarchar](255) NULL,
	[OtherDetail3] [nvarchar](255) NULL,
	[OtherDetail4] [nvarchar](255) NULL,
	[OtherDetail5] [nvarchar](255) NULL,
	[OtherDetail6] [nvarchar](255) NULL,
	[IsActive] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](100) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [nvarchar](100) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[ReceiptDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[ReceiptDetail](
	[DetailId] [int] NULL,
	[ReceiptId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[MasterAmt] [decimal](18, 2) NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[ReceiptMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[ReceiptMaster](
	[ReceiptId] [int] NULL,
	[ReceiptDate] [datetime] NULL,
	[ReceiptNumber] [varchar](20) NULL,
	[PRRN] [varchar](20) NULL,
	[ReceiptAmount] [decimal](18, 2) NULL,
	[RStatus] [varchar](20) NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[SchoolBankMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[SchoolBankMaster](
	[BankId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[AccountNo] [varchar](50) NULL,
	[BankName] [varchar](100) NULL,
	[BranchName] [varchar](100) NULL,
	[IFSCCode] [varchar](50) NULL,
	[Address] [varchar](500) NULL,
	[Contact] [varchar](200) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDefault] [int] NULL,
	[AccountHolderName] [varchar](100) NULL,
	[AccountType] [varchar](50) NULL,
	[IsVerified] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[SchoolDocMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[SchoolDocMaster](
	[DocId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[DocType] [varchar](50) NULL,
	[DocNo] [varchar](50) NULL,
	[DocDescription] [varchar](200) NULL,
	[DocPath] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[SchoolImgMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[SchoolImgMaster](
	[ImgId] [int] NULL,
	[MasterType] [varchar](50) NULL,
	[MasterId] [int] NULL,
	[ImgPath] [varchar](500) NULL,
	[ImgTitle] [varchar](100) NULL,
	[IsDefault] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[SchoolMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[SchoolMaster](
	[SchoolId] [int] NULL,
	[SchoolName] [varchar](200) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[Pincode] [varchar](10) NULL,
	[AffiliationNumber] [varchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Longitude] [decimal](9, 6) NULL,
	[Latitude] [decimal](9, 6) NULL,
	[OnBoardingStatus] [varchar](50) NULL,
	[ImgPath] [nvarchar](500) NULL,
	[PhoneNo] [varchar](20) NULL,
	[Email] [varchar](255) NULL,
	[Description] [varchar](500) NULL,
	[SchoolType] [varchar](100) NULL,
	[Website] [varchar](255) NULL,
	[BoardName] [varchar](100) NULL,
	[MediumOfInstruction] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[SectionMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[SectionMaster](
	[SectionId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionName] [varchar](50) NOT NULL,
	[Capacity] [int] NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[StudentAdmission]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[StudentAdmission](
	[AdmissionId] [int] NULL,
	[AdmissionNo] [nvarchar](50) NULL,
	[SUserId] [int] NULL,
	[FirstName] [nvarchar](100) NULL,
	[MiddleName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ProfileImg] [nvarchar](500) NULL,
	[DOB] [date] NULL,
	[Gender] [nvarchar](10) NULL,
	[BloodGroup] [nvarchar](5) NULL,
	[MobileNo] [nvarchar](15) NULL,
	[EmailId] [nvarchar](200) NULL,
	[AadharNumber] [nvarchar](20) NULL,
	[PanNumber] [nvarchar](20) NULL,
	[Nationality] [nvarchar](50) NULL,
	[Religion] [nvarchar](50) NULL,
	[Caste] [nvarchar](50) NULL,
	[MotherTongue] [nvarchar](50) NULL,
	[Address] [nvarchar](250) NULL,
	[Country] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[PinCode] [nvarchar](10) NULL,
	[SpecialNeeds] [nvarchar](250) NULL,
	[DisabilityStatus] [nvarchar](50) NULL,
	[SchoolId] [int] NULL,
	[AcademicYear] [varchar](20) NULL,
	[ClassId] [int] NULL,
	[AdmissionCategory] [nvarchar](50) NULL,
	[AdmissionStatus] [nvarchar](50) NULL,
	[ApplicationDate] [date] NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedDate] [date] NULL,
	[Remarks] [nvarchar](250) NULL,
	[AdmissionDate] [date] NULL,
	[AdmissionMedium] [nvarchar](200) NULL,
	[AdmissionType] [nvarchar](50) NULL,
	[AdmissionBoard] [nvarchar](50) NULL,
	[PreviousSchoolName] [nvarchar](200) NULL,
	[PreviousSchoolAddress] [nvarchar](250) NULL,
	[PreviousMedium] [nvarchar](200) NULL,
	[PreviousLastClass] [nvarchar](50) NULL,
	[PreviousMarksObtained] [decimal](5, 2) NULL,
	[PreviousBoard] [nvarchar](50) NULL,
	[ReasonForTransfer] [nvarchar](250) NULL,
	[TransferCertificateNo] [nvarchar](50) NULL,
	[TCDate] [date] NULL,
	[PGRelation] [nvarchar](50) NULL,
	[PGUserId] [int] NULL,
	[PGName] [nvarchar](200) NULL,
	[PGDOB] [date] NULL,
	[PGProfileImg] [nvarchar](500) NULL,
	[PGEducation] [nvarchar](200) NULL,
	[PGMobileNo] [nvarchar](15) NULL,
	[PGOccupation] [nvarchar](100) NULL,
	[PGDesignation] [nvarchar](100) NULL,
	[PGAnnualIncome] [nvarchar](100) NULL,
	[PGEmailId] [nvarchar](100) NULL,
	[PGAadharNumber] [nvarchar](20) NULL,
	[PGPanNumber] [nvarchar](20) NULL,
	[SGRelation] [nvarchar](50) NULL,
	[SGUserId] [int] NULL,
	[SGName] [nvarchar](200) NULL,
	[SGDOB] [date] NULL,
	[SGProfileImg] [nvarchar](500) NULL,
	[SGEducation] [nvarchar](200) NULL,
	[SGMobileNo] [nvarchar](15) NULL,
	[SGOccupation] [nvarchar](100) NULL,
	[SGDesignation] [nvarchar](100) NULL,
	[SGAnnualIncome] [nvarchar](100) NULL,
	[SGEmailId] [nvarchar](100) NULL,
	[SGAadharNumber] [nvarchar](20) NULL,
	[SGPanNumber] [nvarchar](20) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[StudentAssignmentSubmission]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[StudentAssignmentSubmission](
	[SubmissionId] [int] NULL,
	[AssignmentId] [int] NULL,
	[StudentId] [int] NULL,
	[SubmissionDate] [datetime] NULL,
	[FileUrl] [nvarchar](500) NULL,
	[Status] [varchar](20) NULL,
	[MarksObtained] [int] NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[Remarks] [nvarchar](max) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[StudentClassMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[StudentClassMapping](
	[MappingId] [int] NULL,
	[UserId] [int] NOT NULL,
	[ClassId] [int] NOT NULL,
	[SectionId] [int] NULL,
	[AcademicYear] [varchar](10) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[StudentExamMarks]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[StudentExamMarks](
	[MarkId] [int] NULL,
	[ScheduleId] [int] NULL,
	[StudentId] [int] NULL,
	[ObtainedMarks] [decimal](5, 2) NULL,
	[TotalMarks] [decimal](5, 2) NULL,
	[Percentage] [decimal](5, 2) NULL,
	[Grade] [varchar](10) NULL,
	[Result] [varchar](20) NULL,
	[Remarks] [varchar](250) NULL,
	[GraceMarks] [int] NULL,
	[GraceMarksGiven] [int] NULL,
	[IsAbsent] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsConfirm] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[StudentFeeStructureMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[StudentFeeStructureMapping](
	[MappingId] [int] NULL,
	[StudentId] [int] NULL,
	[ClassId] [int] NULL,
	[FeeStructureId] [int] NULL,
	[FeeType] [nvarchar](100) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[StudentRegistration]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[StudentRegistration](
	[RegistrationId] [int] NULL,
	[SchoolId] [int] NULL,
	[UserId] [int] NULL,
	[AdmissionNo] [varchar](20) NULL,
	[AdmissionType] [varchar](20) NULL,
	[AdmissionStatus] [varchar](20) NULL,
	[MotherTongue] [varchar](50) NULL,
	[IncomeProof] [varchar](500) NULL,
	[PreviousSchoolName] [varchar](255) NULL,
	[PLastClass] [varchar](50) NULL,
	[PMarksObtained] [varchar](20) NULL,
	[TransferCertificateNo] [varchar](50) NULL,
	[TCDate] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AdmissionDate] [datetime] NULL,
	[AcademicYear] [varchar](20) NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[AdmissionCategory] [varchar](100) NULL,
	[PreviousSchoolAddress] [varchar](500) NULL,
	[PBoard] [varchar](100) NULL,
	[ReasonForTransfer] [varchar](500) NULL,
	[GuardianType] [varchar](50) NULL,
	[GuardianName] [varchar](100) NULL,
	[GuardianContactNo] [varchar](20) NULL,
	[AlternateContactNo] [varchar](20) NULL,
	[SpecialNeeds] [varchar](500) NULL,
	[DisabilityStatus] [varchar](100) NULL,
	[MappingId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[StudentRouteMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[StudentRouteMapping](
	[MappingId] [int] NULL,
	[UserId] [int] NULL,
	[RouteId] [int] NULL,
	[PickupDetailId] [int] NULL,
	[DropDetailId] [int] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[SubjectMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[SubjectMaster](
	[SubjectId] [int] NULL,
	[SchoolId] [int] NULL,
	[ClassId] [int] NULL,
	[SubjectCode] [varchar](20) NULL,
	[SubjectName] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[AcademicLevel] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[TeacherClassSubjectMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[TeacherClassSubjectMapping](
	[MappingId] [int] NULL,
	[TeacherId] [int] NULL,
	[SchoolId] [int] NULL,
	[ClassId] [int] NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[AcademicYear] [nvarchar](20) NOT NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[TeacherScheduleMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[TeacherScheduleMaster](
	[ScheduleId] [int] NULL,
	[SchoolId] [int] NULL,
	[ScheduleDate] [datetime] NULL,
	[TeacherId] [int] NULL,
	[ClassId] [int] NOT NULL,
	[SectionId] [int] NULL,
	[SubjectId] [int] NULL,
	[ScheduleType] [varchar](50) NULL,
	[StartTime] [time](7) NULL,
	[Duration] [int] NULL,
	[EndTime] [time](7) NULL,
	[Mode] [varchar](50) NULL,
	[MeetingLink] [varchar](250) NULL,
	[Status] [varchar](50) NULL,
	[Description] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[DayOfWeek] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[UserAffiliationMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[UserAffiliationMapping](
	[MappingId] [int] NULL,
	[UserId] [int] NULL,
	[SchoolId] [int] NULL,
	[AffiliationType] [varchar](50) NULL,
	[Designation] [varchar](50) NULL,
	[Occupation] [varchar](100) NULL,
	[Income] [decimal](18, 2) NULL,
	[IsPrimary] [int] NULL,
	[JoinedOn] [datetime] NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AssignedRoleId] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[VehicleDriverAssignment]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[VehicleDriverAssignment](
	[AssignmentId] [int] NULL,
	[VehicleId] [int] NULL,
	[DriverId] [int] NULL,
	[RouteId] [int] NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[IsPrimaryDriver] [int] NULL,
	[Shift] [varchar](50) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[VehicleMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[VehicleMaster](
	[VehicleId] [int] NULL,
	[SchoolId] [int] NULL,
	[VehicleNo] [varchar](20) NULL,
	[ImgPath] [varchar](255) NULL,
	[Capacity] [int] NULL,
	[Type] [varchar](20) NULL,
	[OwnershipType] [varchar](20) NULL,
	[ChassisNo] [varchar](50) NULL,
	[InsuranceExpiryDate] [datetime] NULL,
	[PermitNo] [varchar](50) NULL,
	[PermitExpiryDate] [datetime] NULL,
	[Status] [varchar](10) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[VehicleRouteDetail]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[VehicleRouteDetail](
	[DetailId] [int] NULL,
	[RouteId] [int] NULL,
	[StopName] [varchar](100) NULL,
	[Latitude] [decimal](18, 6) NULL,
	[Longitude] [decimal](18, 6) NULL,
	[SequenceNo] [int] NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[VehicleRouteMapping]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[VehicleRouteMapping](
	[MappingId] [int] NULL,
	[VehicleId] [int] NOT NULL,
	[RouteId] [int] NOT NULL,
	[Remarks] [varchar](500) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [speaudit].[VehicleRouteMaster]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [speaudit].[VehicleRouteMaster](
	[RouteId] [int] NULL,
	[RouteName] [varchar](50) NULL,
	[SchoolId] [int] NULL,
	[StartLocation] [varchar](250) NULL,
	[EndLocation] [varchar](50) NULL,
	[Distance] [decimal](18, 2) NULL,
	[EstimatedTime] [decimal](5, 2) NULL,
	[OtherDetail1] [varchar](50) NULL,
	[OtherDetail2] [varchar](50) NULL,
	[OtherDetail3] [varchar](100) NULL,
	[OtherDetail4] [varchar](100) NULL,
	[OtherDetail5] [varchar](500) NULL,
	[OtherDetail6] [varchar](500) NULL,
	[IsActive] [int] NULL,
	[IsDeleted] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [ann].[AlertsSchedular] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[AlertsSchedular] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[AlertsSchedular] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[AlertsSchedular] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[AlertsSchedular] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[AlertsServiceMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[AlertsServiceMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[AlertsServiceMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[AlertsServiceMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[AlertsServiceMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[AlertsServiceSchedular] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[AlertsServiceSchedular] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[AlertsServiceSchedular] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[AlertsServiceSchedular] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[AlertsServiceVariables] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ann].[AlertsServiceVariables] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[AlertsServiceVariables] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[AlertsServiceVariables] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[AlertsServiceVariables] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[AlertsServiceVariables] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[DBConnectionMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ann].[DBConnectionMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[DBConnectionMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[DBConnectionMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[DBConnectionMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[DBConnectionMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[EmailConfig] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ann].[EmailConfig] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[EmailConfig] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[EmailConfig] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[EmailConfig] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[EmailConfig] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[FileExtension] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ann].[FileExtension] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[FileExtension] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[FileExtension] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[FileExtension] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[FileExtension] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[NotificationHistory] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[NotificationHistory] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[NotificationHistory] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[NotificationHistory] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[NotificationHistory] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[NotificationMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[NotificationMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[NotificationMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[NotificationMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ann].[NotificationMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ann].[WhatsAppConfig] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ann].[WhatsAppConfig] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ann].[WhatsAppConfig] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ann].[WhatsAppConfig] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ann].[WhatsAppConfig] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT ((1)) FOR [SupportBillFetch]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT ((1)) FOR [SupportBillPayment]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[Biller] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [bbps].[BillerCategory] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [bbps].[BillerCategory] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [bbps].[BillerCategory] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [bbps].[BillerCategory] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [bbps].[BillerCategory] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[BillerCategory] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [bbps].[BillerParameter] ADD  DEFAULT ((1)) FOR [IsMandatory]
GO
ALTER TABLE [bbps].[BillerParameter] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [bbps].[BillerParameter] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [bbps].[BillerParameter] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [bbps].[BillerParameter] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [bbps].[BillerParameter] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[BillerParameter] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [bbps].[BillFetchRequest] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [bbps].[BillFetchRequest] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [bbps].[BillFetchRequest] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [bbps].[BillFetchRequest] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [bbps].[BillFetchRequest] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[BillFetchRequest] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [bbps].[BillFetchResponse] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [bbps].[BillFetchResponse] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [bbps].[BillFetchResponse] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [bbps].[BillFetchResponse] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [bbps].[BillFetchResponse] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[BillFetchResponse] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [bbps].[BillPayment] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [bbps].[BillPayment] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [bbps].[BillPayment] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [bbps].[BillPayment] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [bbps].[BillPayment] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [bbps].[BillPayment] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[BillPayment] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [bbps].[ErrorLog] ADD  DEFAULT (getdate()) FOR [LoggedAt]
GO
ALTER TABLE [bbps].[ErrorLog] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [bbps].[ErrorLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [bbps].[ErrorLog] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [bbps].[ErrorLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [bbps].[ErrorLog] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [bbps].[ErrorLog] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [bbpsaudit].[BillPayment] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [bbpsaudit].[ErrorLog] ADD  DEFAULT (getdate()) FOR [LoggedAt]
GO
ALTER TABLE [ccp].[CreditCard] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ccp].[CreditCard] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ccp].[CreditCard] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ccp].[CreditCard] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ccp].[CreditCard] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ccp].[CreditCard] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ccp].[CreditCardApplication] ADD  DEFAULT (getdate()) FOR [ApplicationDate]
GO
ALTER TABLE [ccp].[CreditCardApplication] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ccp].[CreditCardApplication] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ccp].[CreditCardApplication] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ccp].[CreditCardApplication] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ccp].[CreditCardApplication] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ccp].[CreditCardApplication] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ccp].[CreditCardKYC] ADD  DEFAULT ((0)) FOR [Verified]
GO
ALTER TABLE [ccp].[CreditCardKYC] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ccp].[CreditCardKYC] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ccp].[CreditCardKYC] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ccp].[CreditCardKYC] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ccp].[CreditCardKYC] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ccp].[CreditCardKYC] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ccp].[CreditCardProduct] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ccp].[CreditCardProduct] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ccp].[CreditCardProduct] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ccp].[CreditCardProduct] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ccp].[CreditCardProduct] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ccp].[CreditCardProduct] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ccp].[CreditCardRepayment] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ccp].[CreditCardRepayment] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ccp].[CreditCardRepayment] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ccp].[CreditCardRepayment] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ccp].[CreditCardRepayment] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ccp].[CreditCardRepayment] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ccp].[CreditCardTransaction] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [ccp].[CreditCardTransaction] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [ccp].[CreditCardTransaction] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [ccp].[CreditCardTransaction] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [ccp].[CreditCardTransaction] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [ccp].[CreditCardTransaction] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [ccpaudit].[CreditCardApplication] ADD  DEFAULT (getdate()) FOR [ApplicationDate]
GO
ALTER TABLE [ccpaudit].[CreditCardKYC] ADD  DEFAULT ((0)) FOR [Verified]
GO
ALTER TABLE [dbo].[DocumentNumberLogic] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[DocumentNumberLogic] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DocumentNumberLogic] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[DocumentNumberLogic] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[DocumentTemplate] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DocumentTemplate] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[DocumentTemplate] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[DocumentTemplateVariables] ADD  DEFAULT ((1)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[DocumentTemplateVariables] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[DocumentTemplateVariables] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmailTemplates] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[EmailTemplates] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[EmailTemplates] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmailTemplates] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[EmailTemplateVariables] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[EmailTemplateVariables] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[EmailTemplateVariables] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[EmailTemplateVariables] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[MenuFeature] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MenuFeature] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MenuFeature] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MenuMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[MenuMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[MenuMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[MenuMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[MenuMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[MenuMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[OPCalendar] ADD  CONSTRAINT [DF_OPCalendar_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[OPCalendar] ADD  CONSTRAINT [DF_OPCalendar_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[OPCalendar] ADD  CONSTRAINT [DF_OPCalendar_CreatedOn]  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[Roles] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SubRoles] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[SubRoles] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[SubRoles] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[SubRoles] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[SubRoles] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[SubRoles] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[UserLogin] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[UserMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[UserOtpVerification] ADD  DEFAULT ((0)) FOR [IsUsed]
GO
ALTER TABLE [dbo].[UserOtpVerification] ADD  DEFAULT ((0)) FOR [Attempts]
GO
ALTER TABLE [dbo].[UserOtpVerification] ADD  DEFAULT ('Login') FOR [Purpose]
GO
ALTER TABLE [dbo].[UserOtpVerification] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[UserOtpVerification] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserPermission] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserPermission] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserPermission] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[UserRoles] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[ValueList] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ValueList] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ValueList] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ValueList] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ValueList] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[ValueList] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [dbo].[ValueListItem] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ValueListItem] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ValueListItem] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [dbo].[ValueListItem] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [dbo].[ValueListItem] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [dbo].[ValueListItem] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[AppoinmentMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[AppoinmentMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[AppoinmentMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[AppoinmentMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[AppoinmentMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[AppoinmentMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[AppointmentDetail] ADD  DEFAULT ((30)) FOR [AppointmentDuration]
GO
ALTER TABLE [hm].[AppointmentDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[AppointmentDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[AppointmentDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[AppointmentDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[AppointmentDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[AppointmentDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  DEFAULT ((30)) FOR [AppointmentDuration]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  CONSTRAINT [DF_AppointmentMaster_IsFirstVisit]  DEFAULT ((0)) FOR [IsFirstVisit]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[FeedbackMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[FeedbackMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[FeedbackMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[FeedbackMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[FeedbackMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[FeedbackMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[FeedbackPatientDischarge] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[FeedbackPatientDischarge] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[FeedbackPatientDischarge] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[FeedbackPatientDischarge] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[FeedbackPatientDischarge] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[FeedbackPatientDischarge] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[HospitalBedMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[HospitalBedMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[HospitalBedMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[HospitalBedMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[HospitalBedMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[HospitalBedMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[HospitalDocMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[HospitalDocMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[HospitalDocMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[HospitalDocMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[HospitalDocMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[HospitalDocMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[HospitalImgMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[HospitalImgMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[HospitalImgMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[HospitalImgMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[HospitalImgMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[HospitalImgMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[HospitalMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[HospitalMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[HospitalMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[HospitalMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[HospitalMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[HospitalMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[HospitalRoomMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[HospitalRoomMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[HospitalRoomMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[HospitalRoomMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[HospitalRoomMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[HospitalRoomMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[HospitalWardMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[HospitalWardMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[HospitalWardMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[HospitalWardMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[HospitalWardMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[HospitalWardMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[HospitalWingMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[HospitalWingMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[HospitalWingMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[HospitalWingMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[HospitalWingMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[HospitalWingMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[InvoiceDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[InvoiceDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[InvoiceDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[InvoiceDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[InvoiceDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[InvoiceDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[InvoiceMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[InvoiceMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[InvoiceMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[InvoiceMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[InvoiceMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[InvoiceMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[NotificationLog] ADD  DEFAULT (getdate()) FOR [SentTime]
GO
ALTER TABLE [hm].[NotificationLog] ADD  DEFAULT ('Pending') FOR [SentStatus]
GO
ALTER TABLE [hm].[NotificationLog] ADD  DEFAULT ('WhatsApp') FOR [Channel]
GO
ALTER TABLE [hm].[NotificationLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[OnboardingPreCheck] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[OnboardingPreCheck] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[PatientBedAllocationMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[PatientBedAllocationMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[PatientBedAllocationMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[PatientBedAllocationMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[PatientBedAllocationMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[PatientBedAllocationMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[PatientRegistrationBackup] ADD  DEFAULT (getdate()) FOR [BackupDate]
GO
ALTER TABLE [hm].[PatientReport] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[PatientReport] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[PatientReport] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[PatientReport] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[PatientReport] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[PatientReport] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[PrintMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[PrintMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[PrintMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[PrintMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[PrintMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[PrintTemplate] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[PrintTemplate] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[PrintTemplate] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[PrintTemplate] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[PrintTemplate] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[PrintTemplate] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[ReceiptDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[ReceiptDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[ReceiptDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[ReceiptDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[ReceiptDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[ReceiptDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[ReceiptMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[ReceiptMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[ServiceDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[ServiceDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[ServiceDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[ServiceDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[ServiceDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[ServiceDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[ServiceMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[ServiceMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[ServiceMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[ServiceMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[ServiceMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[ServiceMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[TreatmentPlanDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[TreatmentPlanDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[TreatmentPlanDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[TreatmentPlanDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[TreatmentPlanMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[TreatmentPlanMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[TreatmentPlanMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[TreatmentPlanMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[TreatmentPlanMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[TreatmentTemplateDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[TreatmentTemplateDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[TreatmentTemplateDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[TreatmentTemplateDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[TreatmentTemplateDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[TreatmentTemplateDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[TreatmentTemplateMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[TreatmentTemplateMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[TreatmentTemplateMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[TreatmentTemplateMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[TreatmentTemplateMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[TreatmentTemplateMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[UserAffiliationMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hm].[UserAffiliationMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hm].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [hm].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hm].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [hm].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [hm].[UserAffiliationMapping] ADD  DEFAULT ((0)) FOR [TermsAccepted]
GO
ALTER TABLE [hmaudit].[AppointmentScheduleMaster] ADD  DEFAULT ((30)) FOR [AppointmentDuration]
GO
ALTER TABLE [hmaudit].[PrintMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [hmaudit].[PrintMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [hmaudit].[PrintMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [hmaudit].[UserAffiliationMapping] ADD  DEFAULT ((0)) FOR [TermsAccepted]
GO
ALTER TABLE [pl].[AccountLedger] ADD  DEFAULT ('INR') FOR [CurrencyCode]
GO
ALTER TABLE [pl].[AccountLedger] ADD  DEFAULT (getdate()) FOR [EntryDate]
GO
ALTER TABLE [pl].[AccountLedger] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[AccountLedger] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[AccountLedger] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[AccountLedger] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT ((0)) FOR [AccountBalance]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT ('INR') FOR [CurrencyCode]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT ((0)) FOR [IsDefault]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[Accounts] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT (getdate()) FOR [ApplicationDate]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT ((0)) FOR [IsKYCVerified]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT ((0)) FOR [IsDisbursed]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT ((0)) FOR [KycDocId]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[Application] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[CreditEngineConfiguration] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[CreditEngineConfiguration] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[CreditEngineConfiguration] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[CreditEngineConfiguration] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[CreditEngineConfiguration] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[CreditEngineConfiguration] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[DigilockerSessionKey] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[DigilockerSessionKey] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[DigilockerSessionKey] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[DigilockerSessionKey] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[DigilockerSessionKey] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[DigilockerSessionKey] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT ('UPLOADED') FOR [DocumentStatus]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT (getdate()) FOR [UploadedOn]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[KYCDocument] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT ((0)) FOR [IsMandatory]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT ((5)) FOR [MaxFileSizeMB]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[KYCDocumentType] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[PayLaterImgMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[PayLaterImgMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[PayLaterImgMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[PayLaterImgMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[PayLaterImgMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[PayLaterImgMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[PaymentReceipts] ADD  DEFAULT ('INR') FOR [CurrencyCode]
GO
ALTER TABLE [pl].[PaymentReceipts] ADD  DEFAULT (getdate()) FOR [IssuedDate]
GO
ALTER TABLE [pl].[PaymentReceipts] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[PaymentReceipts] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[PaymentReceipts] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[PaymentReceipts] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[PaymentTransactions] ADD  DEFAULT ('INR') FOR [CurrencyCode]
GO
ALTER TABLE [pl].[PaymentTransactions] ADD  DEFAULT (getdate()) FOR [InitiatedAt]
GO
ALTER TABLE [pl].[PaymentTransactions] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[PaymentTransactions] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[PaymentTransactions] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[PaymentTransactions] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[Product] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[Product] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[Product] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[Product] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[Product] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[Product] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[ReceiptMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[ReceiptMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[Repayment] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [pl].[Repayment] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[Repayment] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[Repayment] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[Repayment] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[Repayment] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[Repayment] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[RoundOffSaving] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[RoundOffSaving] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[RoundOffSaving] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[RoundOffSaving] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[RoundOffSaving] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[RoundOffSaving] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[RoundOffTransaction] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[RoundOffTransaction] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[RoundOffTransaction] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[RoundOffTransaction] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[RoundOffTransaction] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[RoundOffTransaction] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[ServiceProvider] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[ServiceProvider] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[ServiceProvider] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[ServiceProvider] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[ServiceProvider] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[ServiceProvider] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT (newid()) FOR [CorrelationId]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT (sysdatetime()) FOR [RequestedOn]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[ServiceRequestLog] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[ServiceResponseLog] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[ServiceResponseLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[ServiceResponseLog] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[ServiceResponseLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[ServiceResponseLog] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[ServiceResponseLog] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [pl].[UserKYC] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [pl].[UserKYC] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [pl].[UserKYC] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [pl].[UserKYC] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [pl].[UserKYC] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [pl].[UserKYC] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [plaudit].[Application] ADD  DEFAULT (getdate()) FOR [ApplicationDate]
GO
ALTER TABLE [plaudit].[Application] ADD  DEFAULT ((0)) FOR [IsKYCVerified]
GO
ALTER TABLE [plaudit].[Application] ADD  DEFAULT ((0)) FOR [IsDisbursed]
GO
ALTER TABLE [plaudit].[Application] ADD  DEFAULT ((0)) FOR [KycDocId]
GO
ALTER TABLE [plaudit].[KYCDocument] ADD  DEFAULT ('UPLOADED') FOR [DocumentStatus]
GO
ALTER TABLE [plaudit].[KYCDocument] ADD  DEFAULT (getdate()) FOR [UploadedOn]
GO
ALTER TABLE [plaudit].[KYCDocumentType] ADD  DEFAULT ((0)) FOR [IsMandatory]
GO
ALTER TABLE [plaudit].[KYCDocumentType] ADD  DEFAULT ((5)) FOR [MaxFileSizeMB]
GO
ALTER TABLE [plaudit].[Product] ADD  DEFAULT ((1)) FOR [AllowPreclosure]
GO
ALTER TABLE [plaudit].[Repayment] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [re].[AmenitiesMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[AmenitiesMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[AmenitiesMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[AmenitiesMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[AmenitiesMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[AmenitiesMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[BankMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[BankMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[BankMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[BankMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[BankMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[BusinessMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[BusinessMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[BusinessMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[BusinessMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[BusinessMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[BusinessMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[FeedbackMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[FeedbackMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[FeedbackMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[FeedbackMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[FeedbackMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[FeedbackMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[OnboardingPreCheck] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[OnboardingPreCheck] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[Project] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[Project] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[Project] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[Project] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[Project] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[Project] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[ProjectBuilding] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[ProjectBuilding] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[ProjectBuilding] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[ProjectBuilding] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[ProjectBuilding] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[ProjectBuilding] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[ProjectUnitType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[ProjectUnitType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[ProjectUnitType] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[ProjectUnitType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[ProjectUnitType] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[ProjectUnitType] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[Property] ADD  DEFAULT (getdate()) FOR [ListedOn]
GO
ALTER TABLE [re].[Property] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[Property] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[Property] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[Property] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[Property] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[Property] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[PropertyAmenities] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[PropertyAmenities] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[PropertyAmenities] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[PropertyAmenities] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[PropertyAmenities] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[PropertyAmenities] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[PropertyDetails] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[PropertyDetails] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[PropertyDetails] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[PropertyDetails] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[PropertyDetails] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[PropertyDetails] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[PropertyInquiries] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[PropertyInquiries] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[PropertyInquiries] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[PropertyInquiries] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[PropertyInquiries] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT ('Active') FOR [ListingStatus]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT ((0)) FOR [Negotiable]
GO
ALTER TABLE [re].[PropertyListing] ADD  DEFAULT ((0)) FOR [IsVerified]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT (getdate()) FOR [OfferDate]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[PropertyOffer] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[PropertyTransaction] ADD  DEFAULT (getdate()) FOR [TransactionDate]
GO
ALTER TABLE [re].[PropertyVisit] ADD  DEFAULT ('Requested') FOR [Status]
GO
ALTER TABLE [re].[PropertyVisit] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[PropertyVisit] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[PropertyVisit] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[PropertyVisit] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[PropertyVisit] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[PropertyVisit] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[PropertyVisit] ADD  CONSTRAINT [DF_PropertyVisit_FollowUpRequired]  DEFAULT ((0)) FOR [FollowUpRequired]
GO
ALTER TABLE [re].[RealEstateDocMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[RealEstateDocMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[RealEstateDocMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[RealEstateDocMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[RealEstateDocMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[RealEstateDocMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[RealEstateImgMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[RealEstateImgMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[RealEstateImgMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[RealEstateImgMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[RealEstateImgMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[RealEstateImgMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[REBackendDiscount] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[REBackendDiscount] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[REBackendDiscount] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[REBackendDiscount] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[REBackendDiscount] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[REBackendDiscount] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[RentalAgreement] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[RentalAgreement] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[RentalAgreement] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[RentalAgreement] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[RentalAgreement] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[ReportedListing] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[ReportedListing] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[ReportedListing] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[ReportedListing] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[ReportedListing] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[UserAffiliationMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[UserAffiliationMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[UserPropertyShortlist] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[UserPropertyShortlist] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[UserPropertyShortlist] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[UserPropertyShortlist] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[UserPropertyShortlist] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[UserPropertyShortlist] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT ((0)) FOR [IsPrimary]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT ((0)) FOR [Verified]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [re].[UserRoleInProperty] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [reaudit].[Property] ADD  DEFAULT (getdate()) FOR [ListedOn]
GO
ALTER TABLE [reaudit].[PropertyListing] ADD  DEFAULT ('Active') FOR [ListingStatus]
GO
ALTER TABLE [reaudit].[PropertyOffer] ADD  DEFAULT (getdate()) FOR [OfferDate]
GO
ALTER TABLE [reaudit].[PropertyOffer] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [reaudit].[PropertyVisit] ADD  DEFAULT ('Requested') FOR [Status]
GO
ALTER TABLE [reaudit].[UserRoleInProperty] ADD  DEFAULT ((0)) FOR [IsPrimary]
GO
ALTER TABLE [reaudit].[UserRoleInProperty] ADD  DEFAULT ((0)) FOR [Verified]
GO
ALTER TABLE [sm].[Announcement] ADD  DEFAULT (getdate()) FOR [PostedAt]
GO
ALTER TABLE [sm].[Announcement] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Announcement] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Announcement] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Announcement] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Announcement] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Announcement] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[Building] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Building] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Building] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Building] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Building] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Building] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[DiscussionDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[DiscussionDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[DiscussionDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[DiscussionDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[DiscussionDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[DiscussionDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[DiscussionMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[DiscussionMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[DiscussionMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[DiscussionMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[DiscussionMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[DiscussionMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ('') FOR [ChargeType]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ((1)) FOR [IsSlotBased]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ((0)) FOR [IsApprovalRequired]
GO
ALTER TABLE [sm].[Facility] ADD  DEFAULT ((0)) FOR [AllowGuestAccess]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT ('Booked') FOR [Status]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT (getdate()) FOR [BookedAt]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[FacilityBooking] ADD  DEFAULT ((0)) FOR [GuestCount]
GO
ALTER TABLE [sm].[Flat] ADD  DEFAULT ('Vacant') FOR [Status]
GO
ALTER TABLE [sm].[Flat] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Flat] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Flat] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Flat] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Flat] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Flat] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[FlatFacility] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[FlatFacility] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[FlatFacility] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[FlatFacility] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[FlatFacility] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[FlatFacility] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[FlatMaintenance] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[FlatMaintenance] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[FlatMaintenance] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[FlatMaintenance] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[FlatMaintenance] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[FlatMaintenance] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[FlatMaintenanceDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[FlatMaintenanceDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[FlatMaintenanceDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[FlatMaintenanceDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[FlatMaintenanceDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[FlatMaintenanceDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT ((0)) FOR [IsPrimaryOwner]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT ('Pending') FOR [KYCStatus]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[FlatMember] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[FlatType] ADD  DEFAULT ('Vacant') FOR [Status]
GO
ALTER TABLE [sm].[FlatType] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[FlatType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[FlatType] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[FlatType] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[FlatType] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[FlatType] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[MaintenanceChargeDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[MaintenanceChargeDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[MaintenanceChargeDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[MaintenanceChargeDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[MaintenanceChargeDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[MaintenanceChargeDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[MaintenanceChargeMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[MaintenanceChargeMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[MaintenanceChargeMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[MaintenanceChargeMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[MaintenanceChargeMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[MaintenanceChargeMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT ('Success') FOR [Status]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[MaintenancePayment] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[Meeting] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Meeting] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Meeting] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Meeting] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Meeting] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Meeting] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[MeetingVote] ADD  DEFAULT (getdate()) FOR [VotedAt]
GO
ALTER TABLE [sm].[MeetingVote] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[MeetingVote] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[MeetingVote] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[MeetingVote] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[MeetingVote] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[MeetingVote] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[OnboardingPreCheck] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[OnboardingPreCheck] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[Parking] ADD  DEFAULT ((0)) FOR [IsReserved]
GO
ALTER TABLE [sm].[Parking] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Parking] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Parking] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Parking] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Parking] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Parking] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[ReceiptDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[ReceiptDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[ReceiptDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[ReceiptDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[ReceiptDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[ReceiptDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[ReceiptMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[ReceiptMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[Security] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Security] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Security] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Security] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Security] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Security] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[ServiceRequest] ADD  DEFAULT ('Open') FOR [Status]
GO
ALTER TABLE [sm].[ServiceRequest] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[ServiceRequest] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[ServiceRequest] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[ServiceRequest] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[ServiceRequest] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[ServiceRequest] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[Society] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[Society] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[Society] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[Society] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[Society] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[Society] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[SocietyDocMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[SocietyDocMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[SocietyDocMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[SocietyDocMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[SocietyDocMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[SocietyDocMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[SocietyImgMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[SocietyImgMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[SocietyImgMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[SocietyImgMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[SocietyImgMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[SocietyImgMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[UserAffiliationMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[UserAffiliationMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT (getdate()) FOR [UploadDate]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT ((0)) FOR [IsConfidential]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT ('Admin') FOR [AccessLevel]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[VaultDocument] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[VisitorLog] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[VisitorLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[VisitorLog] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[VisitorLog] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[VisitorLog] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[VisitorLog] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[VotingDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[VotingDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[VotingDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[VotingDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[VotingDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[VotingDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [sm].[VotingMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [sm].[VotingMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [sm].[VotingMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [sm].[VotingMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [sm].[VotingMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [sm].[VotingMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [smaudit].[Announcement] ADD  DEFAULT (getdate()) FOR [PostedAt]
GO
ALTER TABLE [smaudit].[Facility] ADD  DEFAULT ('') FOR [ChargeType]
GO
ALTER TABLE [smaudit].[Facility] ADD  DEFAULT ((1)) FOR [IsSlotBased]
GO
ALTER TABLE [smaudit].[Facility] ADD  DEFAULT ((0)) FOR [IsApprovalRequired]
GO
ALTER TABLE [smaudit].[Facility] ADD  DEFAULT ((0)) FOR [AllowGuestAccess]
GO
ALTER TABLE [smaudit].[FacilityBooking] ADD  DEFAULT ('Booked') FOR [Status]
GO
ALTER TABLE [smaudit].[FacilityBooking] ADD  DEFAULT (getdate()) FOR [BookedAt]
GO
ALTER TABLE [smaudit].[FacilityBooking] ADD  DEFAULT ((0)) FOR [GuestCount]
GO
ALTER TABLE [smaudit].[FlatMember] ADD  DEFAULT ((0)) FOR [IsPrimaryOwner]
GO
ALTER TABLE [smaudit].[FlatMember] ADD  DEFAULT ('Pending') FOR [KYCStatus]
GO
ALTER TABLE [smaudit].[FlatMember] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [smaudit].[MaintenancePayment] ADD  DEFAULT (getdate()) FOR [PaymentDate]
GO
ALTER TABLE [smaudit].[MaintenancePayment] ADD  DEFAULT ('Success') FOR [Status]
GO
ALTER TABLE [smaudit].[MeetingVote] ADD  DEFAULT (getdate()) FOR [VotedAt]
GO
ALTER TABLE [smaudit].[ServiceRequest] ADD  DEFAULT ('Open') FOR [Status]
GO
ALTER TABLE [smaudit].[VaultDocument] ADD  DEFAULT (getdate()) FOR [UploadDate]
GO
ALTER TABLE [smaudit].[VaultDocument] ADD  DEFAULT ((0)) FOR [IsConfidential]
GO
ALTER TABLE [smaudit].[VaultDocument] ADD  DEFAULT ('Admin') FOR [AccessLevel]
GO
ALTER TABLE [smaudit].[VaultDocument] ADD  DEFAULT ('Active') FOR [Status]
GO
ALTER TABLE [spe].[Activity] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[Activity] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[Activity] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[Activity] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[Activity] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[Announcement] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[Announcement] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[Announcement] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[Announcement] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[Announcement] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[AssignmentMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[AssignmentMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[AssignmentMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[AssignmentMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[AssignmentMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[ClassMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[ClassMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[ClassMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[ClassMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[ClassMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[ClassMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[CurriculumMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[CurriculumMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[CurriculumMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[CurriculumMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[CurriculumMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[CurriculumMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[CurriculumSubjectMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[CurriculumSubjectMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[CurriculumSubjectMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[CurriculumSubjectMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[CurriculumSubjectMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[CurriculumSubjectMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[DiscussionDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[DiscussionDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[DiscussionDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[DiscussionDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[DiscussionDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[DiscussionDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[DiscussionMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[DiscussionMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[DiscussionMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[DiscussionMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[DiscussionMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[DiscussionMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[EventMaster] ADD  DEFAULT ((0)) FOR [IsPublished]
GO
ALTER TABLE [spe].[EventMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[EventMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[EventMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[EventMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[ExamMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[ExamMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[ExamMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[ExamMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[ExamSchedule] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[ExamSchedule] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[ExamSchedule] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[ExamSchedule] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[FeeComponentMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[FeeComponentMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[FeeComponentMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[FeeComponentMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[FeeComponentMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[FeeComponentMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[Feedback] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[Feedback] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[Feedback] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[Feedback] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[Feedback] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[FeeInstallmentMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[FeeInstallmentMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[FeeInstallmentMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[FeeInstallmentMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[FeeInstallmentMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[FeeInstallmentMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[FeeStructureMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[FeeStructureMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[FeeStructureMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[FeeStructureMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[FeeStructureMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[FeeStructureMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT ('INR') FOR [CurrencyCode]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT ('PENDING') FOR [Status]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT (getdate()) FOR [RequestDate]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[LoanRequest] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[OnboardingPreCheck] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[OnboardingPreCheck] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[OnboardingPreCheck] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[OnboardingPreCheck] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[ParentStudentMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[ParentStudentMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[ParentStudentMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[ParentStudentMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[ParentStudentMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[ParentStudentMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[PrintMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[PrintMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[PrintMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[PrintMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[PrintMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[ReceiptDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[ReceiptDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[ReceiptDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[ReceiptDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[ReceiptDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[ReceiptDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[ReceiptMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[ReceiptMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[ReceiptMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[ReceiptMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[SchoolBankMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[SchoolBankMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[SchoolBankMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[SchoolBankMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[SchoolBankMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[SchoolBankMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[SchoolDocMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[SchoolDocMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[SchoolDocMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[SchoolDocMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[SchoolDocMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[SchoolDocMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[SchoolImgMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[SchoolImgMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[SchoolImgMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[SchoolImgMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[SchoolImgMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[SchoolImgMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[SchoolMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[SchoolMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[SchoolMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[SchoolMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[SchoolMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[SchoolMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[SectionMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[SectionMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[SectionMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[SectionMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[SectionMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[SectionMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[StudentAdmission] ADD  DEFAULT ('Pending') FOR [AdmissionStatus]
GO
ALTER TABLE [spe].[StudentAdmission] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[StudentAdmission] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[StudentAdmission] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[StudentAdmission] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[StudentAdmission] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[StudentAdmission] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[StudentAssignmentSubmission] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[StudentAssignmentSubmission] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[StudentAssignmentSubmission] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[StudentAssignmentSubmission] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[StudentClassMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[StudentClassMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[StudentClassMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[StudentClassMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[StudentClassMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[StudentClassMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[StudentExamMarks] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[StudentExamMarks] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[StudentExamMarks] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[StudentExamMarks] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[StudentFeeStructureMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[StudentFeeStructureMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[StudentFeeStructureMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[StudentFeeStructureMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[StudentFeeStructureMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[StudentRegistration] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[StudentRegistration] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[StudentRegistration] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[StudentRegistration] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[StudentRegistration] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[StudentRegistration] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[StudentRouteMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[StudentRouteMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[StudentRouteMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[StudentRouteMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[StudentRouteMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[StudentRouteMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[SubjectMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[SubjectMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[SubjectMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[SubjectMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[SubjectMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[SubjectMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[TeacherClassSubjectMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[TeacherClassSubjectMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[TeacherClassSubjectMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[TeacherClassSubjectMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[TeacherClassSubjectMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[TeacherScheduleMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[TeacherScheduleMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[TeacherScheduleMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[TeacherScheduleMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[TeacherScheduleMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[TeacherScheduleMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[UserAffiliationMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[UserAffiliationMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[UserAffiliationMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[UserAffiliationMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[VehicleDriverAssignment] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[VehicleDriverAssignment] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[VehicleDriverAssignment] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[VehicleDriverAssignment] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[VehicleDriverAssignment] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[VehicleDriverAssignment] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[VehicleMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[VehicleMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[VehicleMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[VehicleMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[VehicleMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[VehicleMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[VehicleRouteDetail] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[VehicleRouteDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[VehicleRouteDetail] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[VehicleRouteDetail] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[VehicleRouteDetail] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[VehicleRouteDetail] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[VehicleRouteMapping] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[VehicleRouteMapping] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[VehicleRouteMapping] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[VehicleRouteMapping] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[VehicleRouteMapping] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[VehicleRouteMapping] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [spe].[VehicleRouteMaster] ADD  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [spe].[VehicleRouteMaster] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [spe].[VehicleRouteMaster] ADD  DEFAULT ('SYSTEM') FOR [CreatedBy]
GO
ALTER TABLE [spe].[VehicleRouteMaster] ADD  DEFAULT (getdate()) FOR [CreatedOn]
GO
ALTER TABLE [spe].[VehicleRouteMaster] ADD  DEFAULT ('SYSTEM') FOR [ModifiedBy]
GO
ALTER TABLE [spe].[VehicleRouteMaster] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
ALTER TABLE [speaudit].[LoanRequest] ADD  DEFAULT ('INR') FOR [CurrencyCode]
GO
ALTER TABLE [speaudit].[LoanRequest] ADD  DEFAULT ('PENDING') FOR [Status]
GO
ALTER TABLE [speaudit].[LoanRequest] ADD  DEFAULT (getdate()) FOR [RequestDate]
GO
ALTER TABLE [speaudit].[StudentAdmission] ADD  DEFAULT ('Pending') FOR [AdmissionStatus]
GO
ALTER TABLE [pl].[AccountLedger]  WITH CHECK ADD CHECK  (([TransType]='CREDIT' OR [TransType]='DEBIT'))
GO
/****** Object:  Trigger [bbps].[Trg_Biller]    Script Date: 11/24/2025 5:55:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE   TRIGGER [bbps].[Trg_Biller]
   ON  [bbps].[Biller]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [bbpsaudit].[Biller]
	(
       [BillerId]
      ,[BillerName]
      ,[BillerLogo]
      ,[BillerDetailJson]
      ,[CategoryId]
      ,[BillerCode]
      ,[SupportBillFetch]
      ,[SupportBillPayment]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	
       [BillerId]
      ,[BillerName]
      ,[BillerLogo]
      ,[BillerDetailJson]
      ,[CategoryId]
      ,[BillerCode]
      ,[SupportBillFetch]
      ,[SupportBillPayment]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;
	  
	INSERT INTO [bbpsaudit].[Biller]
	(
       [BillerId]
      ,[BillerName]
      ,[BillerLogo]
      ,[BillerDetailJson]
      ,[CategoryId]
      ,[BillerCode]
      ,[SupportBillFetch]
      ,[SupportBillPayment]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	
       [BillerId]
      ,[BillerName]
      ,[BillerLogo]
      ,[BillerDetailJson]
      ,[CategoryId]
      ,[BillerCode]
      ,[SupportBillFetch]
      ,[SupportBillPayment]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END
GO
ALTER TABLE [bbps].[Biller] ENABLE TRIGGER [Trg_Biller]
GO
/****** Object:  Trigger [bbps].[Trg_BillerCategory]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [bbps].[Trg_BillerCategory]
   ON  [bbps].[BillerCategory]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [bbpsaudit].[BillerCategory]
	(
	   [CategoryId]
      ,[CategoryName]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[CategoryIconUrl]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [CategoryId]
      ,[CategoryName]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[CategoryIconUrl]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  INSERT INTO [bbpsaudit].[BillerCategory]
	(
	   [CategoryId]
      ,[CategoryName]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[CategoryIconUrl]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [CategoryId]
      ,[CategoryName]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[CategoryIconUrl]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [bbps].[BillerCategory] ENABLE TRIGGER [Trg_BillerCategory]
GO
/****** Object:  Trigger [bbps].[Trg_BillerParameter]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER[bbps].[Trg_BillerParameter] 
   ON  [bbps].[BillerParameter]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [bbpsaudit].[BillerParameter]
	(
	   [ParameterId]
      ,[BillerId]
      ,[ParameterName]
      ,[DisplayName]
      ,[IsMandatory]
      ,[DataType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ParameterId]
      ,[BillerId]
      ,[ParameterName]
      ,[DisplayName]
      ,[IsMandatory]
      ,[DataType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [bbpsaudit].[BillerParameter]
	(
	   [ParameterId]
      ,[BillerId]
      ,[ParameterName]
      ,[DisplayName]
      ,[IsMandatory]
      ,[DataType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ParameterId]
      ,[BillerId]
      ,[ParameterName]
      ,[DisplayName]
      ,[IsMandatory]
      ,[DataType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [bbps].[BillerParameter] ENABLE TRIGGER [Trg_BillerParameter]
GO
/****** Object:  Trigger [bbps].[Trg_BillFetchRequest]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [bbps].[Trg_BillFetchRequest]
   ON  [bbps].[BillFetchRequest]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [bbpsaudit].[BillFetchRequest]
	(
	   [RequestId]
      ,[UserId]
      ,[BillerId]
      ,[RequestJSON]
      ,[Status]
      ,[BBPSRefId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RequestId]
      ,[UserId]
      ,[BillerId]
      ,[RequestJSON]
      ,[Status]
      ,[BBPSRefId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  INSERT INTO [bbpsaudit].[BillFetchRequest]
	(
	   [RequestId]
      ,[UserId]
      ,[BillerId]
      ,[RequestJSON]
      ,[Status]
      ,[BBPSRefId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RequestId]
      ,[UserId]
      ,[BillerId]
      ,[RequestJSON]
      ,[Status]
      ,[BBPSRefId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [bbps].[BillFetchRequest] ENABLE TRIGGER [Trg_BillFetchRequest]
GO
/****** Object:  Trigger [bbps].[Treg_BillFetchResponse]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[bbps].[Treg_BillFetchResponse]
   ON [bbps].[BillFetchResponse]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [bbpsaudit].[BillFetchResponse]
	(
	   [ResponseId]
      ,[RequestId]
      ,[ResponseJSON]
      ,[Amount]
      ,[BillDate]
      ,[DueDate]
      ,[Status]
      ,[ErrorCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [ResponseId]
      ,[RequestId]
      ,[ResponseJSON]
      ,[Amount]
      ,[BillDate]
      ,[DueDate]
      ,[Status]
      ,[ErrorCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;

	  	INSERT INTO [bbpsaudit].[BillFetchResponse]
	(
	   [ResponseId]
      ,[RequestId]
      ,[ResponseJSON]
      ,[Amount]
      ,[BillDate]
      ,[DueDate]
      ,[Status]
      ,[ErrorCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [ResponseId]
      ,[RequestId]
      ,[ResponseJSON]
      ,[Amount]
      ,[BillDate]
      ,[DueDate]
      ,[Status]
      ,[ErrorCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END
GO
ALTER TABLE [bbps].[BillFetchResponse] ENABLE TRIGGER [Treg_BillFetchResponse]
GO
/****** Object:  Trigger [bbps].[Trg_BillPayment]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [bbps].[Trg_BillPayment]
   ON [bbps].[BillPayment]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

  INSERT INTO [bbpsaudit].[BillPayment]
  (
       [PaymentId]
      ,[UserId]
      ,[BillerId]
      ,[Amount]
      ,[BBPSRefId]
      ,[TransactionRefNo]
      ,[RequestJSON]
      ,[ResponseJSON]
      ,[Status]
      ,[PaymentDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
  )
   SELECT 
       [PaymentId]
      ,[UserId]
      ,[BillerId]
      ,[Amount]
      ,[BBPSRefId]
      ,[TransactionRefNo]
      ,[RequestJSON]
      ,[ResponseJSON]
      ,[Status]
      ,[PaymentDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [bbps].[BillPayment] ENABLE TRIGGER [Trg_BillPayment]
GO
/****** Object:  Trigger [bbps].[Trg_ErrorLog]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER  [bbps].[Trg_ErrorLog]
   ON [bbps].[ErrorLog]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO [bbpsaudit].[ErrorLog]
	(
	   [LogId]
      ,[Source]
      ,[ReferenceId]
      ,[ErrorCode]
      ,[ErrorMessage]
      ,[RawResponse]
      ,[LoggedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [LogId]
      ,[Source]
      ,[ReferenceId]
      ,[ErrorCode]
      ,[ErrorMessage]
      ,[RawResponse]
      ,[LoggedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [bbps].[ErrorLog] ENABLE TRIGGER [Trg_ErrorLog]
GO
/****** Object:  Trigger [ccp].[Trg_CreditCard]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER  [ccp].[Trg_CreditCard]
   ON  [ccp].[CreditCard]
   AFTER INSERT,DELETE,UPDATE 
AS 
	BEGIN

	SET NOCOUNT ON;
	INSERT INTO[ccpaudit].[CreditCard] 
	(
		 [CardId]
		,[ApplicationId]
		,[CardNumber]
		,[CVV]
		,[ExpiryDate]
		,[ActivationDate]
		,[Status]
		,[CurrentLimit]
		,[AvailableLimit]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	)
	SELECT 
		 [CardId]
		,[ApplicationId]
		,[CardNumber]
		,[CVV]
		,[ExpiryDate]
		,[ActivationDate]
		,[Status]
		,[CurrentLimit]
		,[AvailableLimit]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	FROM  inserted
END
GO
ALTER TABLE [ccp].[CreditCard] ENABLE TRIGGER [Trg_CreditCard]
GO
/****** Object:  Trigger [ccp].[Trg_CreditCardApplication]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[ccp].[Trg_CreditCardApplication]
   ON   [ccp].[CreditCardApplication]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [ccpaudit].[CreditCardApplication]
	(
	   [ApplicationId]
      ,[UserId]
      ,[ProductId]
      ,[ApplicationDate]
      ,[Status]
      ,[CreditLimitRequested]
      ,[ApprovedLimit]
      ,[RejectionReason]
      ,[KYCStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ApplicationId]
      ,[UserId]
      ,[ProductId]
      ,[ApplicationDate]
      ,[Status]
      ,[CreditLimitRequested]
      ,[ApprovedLimit]
      ,[RejectionReason]
      ,[KYCStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [ccp].[CreditCardApplication] ENABLE TRIGGER [Trg_CreditCardApplication]
GO
/****** Object:  Trigger [ccp].[Trg_CreditCardKYC]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [ccp].[Trg_CreditCardKYC]
   ON [ccp].[CreditCardKYC]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [ccpaudit].[CreditCardKYC]
	(
	   [KYCId]
      ,[ApplicationId]
      ,[DocumentType]
      ,[DocumentNumber]
      ,[FilePath]
      ,[Verified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [KYCId]
      ,[ApplicationId]
      ,[DocumentType]
      ,[DocumentNumber]
      ,[FilePath]
      ,[Verified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [ccp].[CreditCardKYC] ENABLE TRIGGER [Trg_CreditCardKYC]
GO
/****** Object:  Trigger [ccp].[Trg_CreditCardProduct]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [ccp].[Trg_CreditCardProduct]
   ON [ccp].[CreditCardProduct]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [ccpaudit].[CreditCardProduct]
	(
	   [ProductId]
      ,[ProductName]
      ,[Description]
      ,[MaxCreditLimit]
      ,[MinCreditLimit]
      ,[InterestRate]
      ,[TenureMonths]
      ,[JoiningFee]
      ,[AnnualFee]
      ,[ContactPhone]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ProductId]
      ,[ProductName]
      ,[Description]
      ,[MaxCreditLimit]
      ,[MinCreditLimit]
      ,[InterestRate]
      ,[TenureMonths]
      ,[JoiningFee]
      ,[AnnualFee]
      ,[ContactPhone]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [ccp].[CreditCardProduct] ENABLE TRIGGER [Trg_CreditCardProduct]
GO
/****** Object:  Trigger [ccp].[Trg_CreditCardRepayment]    Script Date: 11/24/2025 5:55:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [ccp].[Trg_CreditCardRepayment]
   ON  [ccp].[CreditCardRepayment]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

       INSERT INTO [ccpaudit].[CreditCardRepayment]
	   (
	   [RepaymentId]
      ,[CardId]
      ,[BillingMonth]
      ,[DueDate]
      ,[TotalDue]
      ,[AmountPaid]
      ,[PaymentDate]
      ,[LateFee]
      ,[InterestCharged]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	   )
	   SELECT 
	   [RepaymentId]
      ,[CardId]
      ,[BillingMonth]
      ,[DueDate]
      ,[TotalDue]
      ,[AmountPaid]
      ,[PaymentDate]
      ,[LateFee]
      ,[InterestCharged]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [ccp].[CreditCardRepayment] ENABLE TRIGGER [Trg_CreditCardRepayment]
GO
/****** Object:  Trigger [ccp].[Trg_CreditCardTransaction]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [ccp].[Trg_CreditCardTransaction]
   ON  [ccp].[CreditCardTransaction]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [ccpaudit].[CreditCardTransaction]
	(
	   [TransactionId]
      ,[CardID]
      ,[MerchantName]
      ,[Amount]
      ,[TransactionDate]
      ,[Description]
      ,[Type]
      ,[EMI_Tenure]
      ,[MonthlyEMIAmount]
      ,[RemainingEMIs]
      ,[Status]
      ,[ReferenceNo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT    
	   [TransactionId]
      ,[CardID]
      ,[MerchantName]
      ,[Amount]
      ,[TransactionDate]
      ,[Description]
      ,[Type]
      ,[EMI_Tenure]
      ,[MonthlyEMIAmount]
      ,[RemainingEMIs]
      ,[Status]
      ,[ReferenceNo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [ccp].[CreditCardTransaction] ENABLE TRIGGER [Trg_CreditCardTransaction]
GO
/****** Object:  Trigger [dbo].[trg_DocumentTemplate]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_DocumentTemplate]
   ON  [dbo].[DocumentTemplate]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [audit].[DocumentTemplate]
    (
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[TBody]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[TBody]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  From inserted ;

	  INSERT INTO [audit].[DocumentTemplate]
    (
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[TBody]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[TBody]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  From deleted ;
END;
GO
ALTER TABLE [dbo].[DocumentTemplate] ENABLE TRIGGER [trg_DocumentTemplate]
GO
/****** Object:  Trigger [dbo].[trg_DocumentTemplateVariables]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [dbo].[trg_DocumentTemplateVariables]
   ON  [dbo].[DocumentTemplateVariables]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [audit].[DocumentTemplateVariables]
    (
	   [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  From inserted ;

	  INSERT INTO [audit].[DocumentTemplateVariables]
    (
	   [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  From deleted ;
END;
GO
ALTER TABLE [dbo].[DocumentTemplateVariables] ENABLE TRIGGER [trg_DocumentTemplateVariables]
GO
/****** Object:  Trigger [dbo].[Trg_EmailTemplates]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Trg_EmailTemplates]
   ON  [dbo].[EmailTemplates]
   AFTER INSERT,DELETE,UPDATE 
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [audit].[EmailTemplates]
	(
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[DataSourceType]
      ,[DataSourceDefination]
      ,[PostDataSourceType]
      ,[PostDataSourceDefination]
      ,[EmailTO]
      ,[CCTo]
      ,[BccTo]
      ,[ASubject]
      ,[ABody]
      ,[EmailConfigId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[DBConnId]
	
	)
	SELECT 
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[DataSourceType]
      ,[DataSourceDefination]
      ,[PostDataSourceType]
      ,[PostDataSourceDefination]
      ,[EmailTO]
      ,[CCTo]
      ,[BccTo]
      ,[ASubject]
      ,[ABody]
      ,[EmailConfigId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[DBConnId]
	  FROM inserted
	  INSERT INTO [audit].[EmailTemplates]
	(
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[DataSourceType]
      ,[DataSourceDefination]
      ,[PostDataSourceType]
      ,[PostDataSourceDefination]
      ,[EmailTO]
      ,[CCTo]
      ,[BccTo]
      ,[ASubject]
      ,[ABody]
      ,[EmailConfigId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[DBConnId]
	)
	SELECT 
	   [TemplateId]
      ,[TName]
      ,[TDesc]
      ,[ModuleName]
      ,[SubModuleName]
      ,[DataSourceType]
      ,[DataSourceDefination]
      ,[PostDataSourceType]
      ,[PostDataSourceDefination]
      ,[EmailTO]
      ,[CCTo]
      ,[BccTo]
      ,[ASubject]
      ,[ABody]
      ,[EmailConfigId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[DBConnId]
	  FROM deleted
END
GO
ALTER TABLE [dbo].[EmailTemplates] ENABLE TRIGGER [Trg_EmailTemplates]
GO
/****** Object:  Trigger [dbo].[Trg_EmailTemplateVariables]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[Trg_EmailTemplateVariables]
   ON[dbo].[EmailTemplateVariables]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
   INSERT INTO [audit].[EmailTemplateVariables]
   (
       [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
   )
   SELECT 
       [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [audit].[EmailTemplateVariables]
   (
       [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
   )
   SELECT 
       [VariableId]
      ,[TemplateId]
      ,[VarInstance]
      ,[VarValue]
      ,[VarType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [dbo].[EmailTemplateVariables] ENABLE TRIGGER [Trg_EmailTemplateVariables]
GO
/****** Object:  Trigger [dbo].[trg_MenuFeature]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [dbo].[trg_MenuFeature]
   ON  [dbo].[MenuFeature]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [audit].[MenuFeature]
    (
		   [FeatureId]
		  ,[MenuId]
		  ,[FName]
		  ,[FCode]
		  ,[FDescription]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [FeatureId]
		  ,[MenuId]
		  ,[FName]
		  ,[FCode]
		  ,[FDescription]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  From inserted ;

	  INSERT INTO [audit].[MenuFeature]
    (
		   [FeatureId]
		  ,[MenuId]
		  ,[FName]
		  ,[FCode]
		  ,[FDescription]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [FeatureId]
		  ,[MenuId]
		  ,[FName]
		  ,[FCode]
		  ,[FDescription]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  From deleted ;
END;
GO
ALTER TABLE [dbo].[MenuFeature] ENABLE TRIGGER [trg_MenuFeature]
GO
/****** Object:  Trigger [dbo].[trg_MenuMaster]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_MenuMaster]
   ON  [dbo].[MenuMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [audit].[MenuMaster]
	(
		 [MenuId]
		,[MenuName]
		,[MenuCode]
		,[MenuDesc]
		,[DisplayOrder]
		,[ParentMenuId]
		,[DefaultChildMenuId]
		,[MenuIconUrl]
		,[TemplatePath]
		,[IsActive]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[IsDeleted]
	)

	SELECT 
		 [MenuId]
		,[MenuName]
		,[MenuCode]
		,[MenuDesc]
		,[DisplayOrder]
		,[ParentMenuId]
		,[DefaultChildMenuId]
		,[MenuIconUrl]
		,[TemplatePath]
		,[IsActive]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[IsDeleted]
	FROM inserted ;

END ;
GO
ALTER TABLE [dbo].[MenuMaster] ENABLE TRIGGER [trg_MenuMaster]
GO
/****** Object:  Trigger [dbo].[trg_OPCalendar]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[trg_OPCalendar]
   ON  [dbo].[OPCalendar]
   AFTER INSERT, DELETE, UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [audit].[OPCalendar]
	(
		   [CompanyId]
		  ,[Date]
		  ,[Year]
		  ,[Month]
		  ,[Day]
		  ,[DayName]
		  ,[WorkingDayOfYear]
		  ,[IsWorkingDay]
		  ,[IsWeekend]
		  ,[IsHoliday]
		  ,[Description]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [CompanyId]
		  ,[Date]
		  ,[Year]
		  ,[Month]
		  ,[Day]
		  ,[DayName]
		  ,[WorkingDayOfYear]
		  ,[IsWorkingDay]
		  ,[IsWeekend]
		  ,[IsHoliday]
		  ,[Description]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
   FROM inserted;
   INSERT INTO [audit].[OPCalendar]
	(
		   [CompanyId]
		  ,[Date]
		  ,[Year]
		  ,[Month]
		  ,[Day]
		  ,[DayName]
		  ,[WorkingDayOfYear]
		  ,[IsWorkingDay]
		  ,[IsWeekend]
		  ,[IsHoliday]
		  ,[Description]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [CompanyId]
		  ,[Date]
		  ,[Year]
		  ,[Month]
		  ,[Day]
		  ,[DayName]
		  ,[WorkingDayOfYear]
		  ,[IsWorkingDay]
		  ,[IsWeekend]
		  ,[IsHoliday]
		  ,[Description]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
   FROM deleted;
END
GO
ALTER TABLE [dbo].[OPCalendar] ENABLE TRIGGER [trg_OPCalendar]
GO
/****** Object:  Trigger [dbo].[trg_Roles]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[trg_Roles]
   ON  [dbo].[Roles]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [audit].[Roles]
	(
	   [RoleId]
      ,[RoleName]
      ,[RoleCode]
      ,[RoleDesc]
	  ,[Priority]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
      ,[GroupName]
	)
	SELECT 
	   [RoleId]
      ,[RoleName]
      ,[RoleCode]
      ,[RoleDesc]
	  ,[Priority]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
      ,[GroupName]
	  FROM inserted;

	  	INSERT INTO [audit].[Roles]
	(
	   [RoleId]
      ,[RoleName]
      ,[RoleCode]
      ,[RoleDesc]
	  ,[Priority]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
      ,[GroupName]
	)
	SELECT 
	   [RoleId]
      ,[RoleName]
      ,[RoleCode]
      ,[RoleDesc]
	  ,[Priority]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
      ,[GroupName]
	  FROM deleted;
END;
GO
ALTER TABLE [dbo].[Roles] ENABLE TRIGGER [trg_Roles]
GO
/****** Object:  Trigger [dbo].[trg_SubRoles]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER  [dbo].[trg_SubRoles]
   ON  [dbo].[SubRoles]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [audit].[SubRoles]
	 (
	   [SubRoleId]
      ,[RoleId]
      ,[SubRoleName]
      ,[SubRoleCode]
      ,[SubRoleDesc]
      ,[MenuId]
      ,[DisplayOrder]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
      ,[IsDefault]
	 )

    SELECT 
	  	
	   [SubRoleId]
      ,[RoleId]
      ,[SubRoleName]
      ,[SubRoleCode]
      ,[SubRoleDesc]
      ,[MenuId]
      ,[DisplayOrder]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
      ,[IsDefault]
	  FROM inserted ;
	  
END; 
GO
ALTER TABLE [dbo].[SubRoles] ENABLE TRIGGER [trg_SubRoles]
GO
/****** Object:  Trigger [dbo].[trg_UserLogin]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_UserLogin]
   ON  [dbo].[UserLogin]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [audit].[UserLogin]
	  (
	   [LoginId]
      ,[UserId]
      ,[UserName]
      ,[UserPassword]
      ,[FailedLoginAttempt]
      ,[LastLoggedDate]
	  ,[Status]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
	  )
	  SELECT 
	   [LoginId]
      ,[UserId]
      ,[UserName]
      ,[UserPassword]
      ,[FailedLoginAttempt]
      ,[LastLoggedDate]
	  ,[Status]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
	  FROM inserted 
	  INSERT INTO [audit].[UserLogin]
	  (
	   [LoginId]
      ,[UserId]
      ,[UserName]
      ,[UserPassword]
      ,[FailedLoginAttempt]
      ,[LastLoggedDate]
	  ,[Status]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
	  )
	  SELECT 
	   [LoginId]
      ,[UserId]
      ,[UserName]
      ,[UserPassword]
      ,[FailedLoginAttempt]
      ,[LastLoggedDate]
	  ,[Status]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
	  FROM deleted ;
END;
GO
ALTER TABLE [dbo].[UserLogin] ENABLE TRIGGER [trg_UserLogin]
GO
/****** Object:  Trigger [dbo].[trg_UserMaster]    Script Date: 11/24/2025 5:55:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_UserMaster]
   ON [dbo].[UserMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
  SET NOCOUNT ON;
  INSERT INTO [audit].[UserMaster]
	 (
       [UserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[DOB]
      ,[MobileNo]
      ,[EmailId]
      ,[Designation]
      ,[ProfileImage]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[BloodGroup]
      ,[Gender]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
	  ,[EmergencyContactName]
      ,[EmergencyContactNo]
      ,[MaritalStatus]
      ,[PinCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	 )
	 SELECT 
       [UserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[DOB]
      ,[MobileNo]
      ,[EmailId]
      ,[Designation]
      ,[ProfileImage]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[BloodGroup]
      ,[Gender]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
	  ,[EmergencyContactName]
      ,[EmergencyContactNo]
      ,[MaritalStatus]
      ,[PinCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  FROM inserted;
	   INSERT INTO [audit].[UserMaster]
	 (
       [UserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[DOB]
      ,[MobileNo]
      ,[EmailId]
      ,[Designation]
      ,[ProfileImage]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[BloodGroup]
      ,[Gender]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
	  ,[EmergencyContactName]
      ,[EmergencyContactNo]
      ,[MaritalStatus]
      ,[PinCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	 )
	 SELECT 
       [UserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[DOB]
      ,[MobileNo]
      ,[EmailId]
      ,[Designation]
      ,[ProfileImage]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[BloodGroup]
      ,[Gender]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
	  ,[EmergencyContactName]
      ,[EmergencyContactNo]
      ,[MaritalStatus]
      ,[PinCode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  FROM deleted;
END;
GO
ALTER TABLE [dbo].[UserMaster] ENABLE TRIGGER [trg_UserMaster]
GO
/****** Object:  Trigger [dbo].[trg_UserPermission]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [dbo].[trg_UserPermission]
   ON  [dbo].[UserPermission]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
		SET NOCOUNT ON;

		INSERT INTO [audit].[UserPermission]
		(
			 [PermissionId]
			,[FeatureId]
			,[SubRoleId]
			,[FAccess]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT  
			 [PermissionId]
			,[FeatureId]
			,[SubRoleId]
			,[FAccess]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted ;

		INSERT INTO [audit].[UserPermission]

		(
			 [PermissionId]
			,[FeatureId]
			,[SubRoleId]
			,[FAccess]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT  
			 [PermissionId]
			,[FeatureId]
			,[SubRoleId]
			,[FAccess]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM deleted ;
END ;
GO
ALTER TABLE [dbo].[UserPermission] ENABLE TRIGGER [trg_UserPermission]
GO
/****** Object:  Trigger [dbo].[trg_UserRoles]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [dbo].[trg_UserRoles]
   ON  [dbo].[UserRoles]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
    INSERT INTO [audit].[UserRoles]
	(
       [UserRoleId]
      ,[RoleId]
      ,[UserId]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
	 )
	 SELECT 
	   [UserRoleId]
      ,[RoleId]
      ,[UserId]
      ,[IsActive]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsDeleted]
	  FROM inserted;
END;
GO
ALTER TABLE [dbo].[UserRoles] ENABLE TRIGGER [trg_UserRoles]
GO
/****** Object:  Trigger [dbo].[trg_ValueList]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE  TRIGGER [dbo].[trg_ValueList]
   ON [dbo].[ValueList]
   AFTER INSERT, DELETE, UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [audit].[ValueList]   
	(
		[ValueListId],
		[VlCode],
		[VlName],
		[VlDesc],
		[ModuleName],
		[IsActive],
		[IsDeleted],
		[CreatedBy],
		[CreatedOn],
		[ModifiedBy],
		[ModifiedOn]
	)
	SELECT  
		[ValueListId],
		[VlCode],
		[VlName],
		[VlDesc],
        [ModuleName],
		[IsActive],
		[IsDeleted],
		[CreatedBy],
		[CreatedOn],
		[ModifiedBy],
		[ModifiedOn]
	FROM inserted;
END;

GO
ALTER TABLE [dbo].[ValueList] ENABLE TRIGGER [trg_ValueList]
GO
/****** Object:  Trigger [dbo].[trg_ValueListItem]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE TRIGGER [dbo].[trg_ValueListItem]
   ON [dbo].[ValueListItem]
   AFTER INSERT, DELETE, UPDATE
AS 
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [audit].[ValueListItem]
    (
        [ValueListItemId],
        [ValueListId],
        [VliCode],
        [VliName],
        [VliDesc],
        [DisplaySeq],
        [AddField1],
        [AddField2],
        [AddField3],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    )
    SELECT 
        [ValueListItemId],
        [ValueListId],
        [VliCode],
        [VliName],
        [VliDesc],
        [DisplaySeq],
        [AddField1],
        [AddField2],
        [AddField3],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    FROM inserted;
END;


GO
ALTER TABLE [dbo].[ValueListItem] ENABLE TRIGGER [trg_ValueListItem]
GO
/****** Object:  Trigger [hm].[Trg_AppoinmentMaster]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_AppoinmentMaster]
   ON  [hm].[AppoinmentMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[AppoinmentMaster]
	(
	   [AppointmentId]
      ,[MasterType]
      ,[MasterId]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AppointmentId]
      ,[MasterType]
      ,[MasterId]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[AppoinmentMaster]
	(
	   [AppointmentId]
      ,[MasterType]
      ,[MasterId]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AppointmentId]
      ,[MasterType]
      ,[MasterId]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [hm].[AppoinmentMaster] ENABLE TRIGGER [Trg_AppoinmentMaster]
GO
/****** Object:  Trigger [hm].[Trg_AppointmentDetail]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_AppointmentDetail]
   ON  [hm].[AppointmentDetail]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [hmaudit].[AppointmentDetail]
	(
	   [DetailId]
      ,[AppointmentId]
      ,[AppointmentDay]
      ,[StartTime]
      ,[EndTime]
      ,[AppointmentDuration]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[AppointmentId]
      ,[AppointmentDay]
      ,[StartTime]
      ,[EndTime]
      ,[AppointmentDuration]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[AppointmentDetail]
	(
	   [DetailId]
      ,[AppointmentId]
      ,[AppointmentDay]
      ,[StartTime]
      ,[EndTime]
      ,[AppointmentDuration]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[AppointmentId]
      ,[AppointmentDay]
      ,[StartTime]
      ,[EndTime]
      ,[AppointmentDuration]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [hm].[AppointmentDetail] ENABLE TRIGGER [Trg_AppointmentDetail]
GO
/****** Object:  Trigger [hm].[Trg_AppointmentScheduleMaster]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[hm].[Trg_AppointmentScheduleMaster]
   ON  [hm].[AppointmentScheduleMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[AppointmentScheduleMaster]
	(
	   [AppointmentId]
      ,[HospitalId]
      ,[PatientId]
      ,[ServiceId]
      ,[DoctorId]
      ,[AppointmentType]
      ,[AppointmentDate]
      ,[AppointmentTime]
      ,[ConsultationMode]
      ,[AppointmentDuration]
      ,[status]
      ,[IsFirstVisit]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Description]
      ,[TokenNo]
	)
	SELECT 
	   [AppointmentId]
      ,[HospitalId]
      ,[PatientId]
      ,[ServiceId]
      ,[DoctorId]
      ,[AppointmentType]
      ,[AppointmentDate]
      ,[AppointmentTime]
      ,[ConsultationMode]
      ,[AppointmentDuration]
      ,[status]
      ,[IsFirstVisit]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Description]
      ,[TokenNo]
	  FROM inserted
	  	INSERT INTO [hmaudit].[AppointmentScheduleMaster]
	(
	   [AppointmentId]
      ,[HospitalId]
      ,[PatientId]
      ,[ServiceId]
      ,[DoctorId]
      ,[AppointmentType]
      ,[AppointmentDate]
      ,[AppointmentTime]
      ,[ConsultationMode]
      ,[AppointmentDuration]
      ,[status]
      ,[IsFirstVisit]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Description]
      ,[TokenNo]
	)
	SELECT 
	    [AppointmentId]
      ,[HospitalId]
      ,[PatientId]
      ,[ServiceId]
      ,[DoctorId]
      ,[AppointmentType]
      ,[AppointmentDate]
      ,[AppointmentTime]
      ,[ConsultationMode]
      ,[AppointmentDuration]
      ,[status]
      ,[IsFirstVisit]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[Description]
      ,[TokenNo]
	  FROM deleted
END
GO
ALTER TABLE [hm].[AppointmentScheduleMaster] ENABLE TRIGGER [Trg_AppointmentScheduleMaster]
GO
/****** Object:  Trigger [hm].[Trg_FeedbackMaster]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_FeedbackMaster]
   ON  [hm].[FeedbackMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[FeedbackMaster]
	(
	   [FeedbackId]
      ,[HospitalId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[ExperienceLevel]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [FeedbackId]
      ,[HospitalId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[ExperienceLevel]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[FeedbackMaster]
	(
	   [FeedbackId]
      ,[HospitalId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[ExperienceLevel]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [FeedbackId]
      ,[HospitalId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[ExperienceLevel]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[FeedbackMaster] ENABLE TRIGGER [Trg_FeedbackMaster]
GO
/****** Object:  Trigger [hm].[Trg_FeedbackPatientDischarge]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_FeedbackPatientDischarge]
   ON  [hm].[FeedbackPatientDischarge]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[FeedbackPatientDischarge]
	(
	   [PatientFeedbackId]
      ,[FeedbackId]
      ,[PatientId]
      ,[WardId]
      ,[RoomId]
      ,[BedId]
      ,[TreatmentId]
      ,[DischargeDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PatientFeedbackId]
      ,[FeedbackId]
      ,[PatientId]
      ,[WardId]
      ,[RoomId]
      ,[BedId]
      ,[TreatmentId]
      ,[DischargeDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[FeedbackPatientDischarge]
	(
	   [PatientFeedbackId]
      ,[FeedbackId]
      ,[PatientId]
      ,[WardId]
      ,[RoomId]
      ,[BedId]
      ,[TreatmentId]
      ,[DischargeDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PatientFeedbackId]
      ,[FeedbackId]
      ,[PatientId]
      ,[WardId]
      ,[RoomId]
      ,[BedId]
      ,[TreatmentId]
      ,[DischargeDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[FeedbackPatientDischarge] ENABLE TRIGGER [Trg_FeedbackPatientDischarge]
GO
/****** Object:  Trigger [hm].[Trg_HospitalBedMaster]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_HospitalBedMaster]
   ON  [hm].[HospitalBedMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[HospitalBedMaster]
	(
	   [BedId]
      ,[HospitalId]
      ,[WardId]
      ,[RoomId]
      ,[BedNumber]
      ,[BedType]
      ,[Isoccupied]
      ,[OccupiedBy]
      ,[OccupiedFrom]
	  ,[BaseCharge]
      ,[TaxPercentage]
      ,[TaxAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BedId]
      ,[HospitalId]
      ,[WardId]
      ,[RoomId]
      ,[BedNumber]
      ,[BedType]
      ,[Isoccupied]
      ,[OccupiedBy]
      ,[OccupiedFrom]
	  ,[BaseCharge]
      ,[TaxPercentage]
      ,[TaxAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[HospitalBedMaster]
	(
	   [BedId]
      ,[HospitalId]
      ,[WardId]
      ,[RoomId]
      ,[BedNumber]
      ,[BedType]
      ,[Isoccupied]
      ,[OccupiedBy]
      ,[OccupiedFrom]
	  ,[BaseCharge]
      ,[TaxPercentage]
      ,[TaxAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BedId]
      ,[HospitalId]
      ,[WardId]
      ,[RoomId]
      ,[BedNumber]
      ,[BedType]
      ,[Isoccupied]
      ,[OccupiedBy]
      ,[OccupiedFrom]
	  ,[BaseCharge]
      ,[TaxPercentage]
      ,[TaxAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[HospitalBedMaster] ENABLE TRIGGER [Trg_HospitalBedMaster]
GO
/****** Object:  Trigger [hm].[Trg_HospitalDocMaster]    Script Date: 11/24/2025 5:55:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_HospitalDocMaster]
   ON  [hm].[HospitalDocMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [hmaudit].[HospitalDocMaster]
	(
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	
	)
	SELECT 
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [hm].[HospitalDocMaster] ENABLE TRIGGER [Trg_HospitalDocMaster]
GO
/****** Object:  Trigger [hm].[Trg_HospitalImgMaster]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [hm].[Trg_HospitalImgMaster]
   ON [hm].[HospitalImgMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN 
		SET NOCOUNT ON;

		INSERT INTO [hmaudit].[HospitalImgMaster]
		(
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted
END
GO
ALTER TABLE [hm].[HospitalImgMaster] ENABLE TRIGGER [Trg_HospitalImgMaster]
GO
/****** Object:  Trigger [hm].[Trg_HospitalMaster]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_HospitalMaster]
   ON [hm].[HospitalMaster]
   AFTER INSERT, DELETE, UPDATE
AS 
BEGIN
    SET NOCOUNT ON;

    -- Insert for INSERT/UPDATE operations
    INSERT INTO [hmaudit].[HospitalMaster]
    (
        [HospitalId],
        [HospitalName],
        [HospitalCode],
        [HospitalDesc],
        [Address],
        [Email],
        [ContactNumber],
        [City],
        [State],
        [Country],
        [OnBoardingStatus],
        [RegistrationNumber],
        [HospitalLogoURL],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    )
    SELECT
        [HospitalId],
        [HospitalName],
        [HospitalCode],
        [HospitalDesc],
        [Address],
        [Email],
        [ContactNumber],
        [City],
        [State],
        [Country],
        [OnBoardingStatus],
        [RegistrationNumber],
        [HospitalLogoURL],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    FROM inserted;

    -- Insert for DELETE operations
    INSERT INTO [hmaudit].[HospitalMaster]
    (
        [HospitalId],
        [HospitalName],
        [HospitalCode],
        [HospitalDesc],
        [Address],
        [Email],
        [ContactNumber],
        [City],
        [State],
        [Country],
        [OnBoardingStatus],
        [RegistrationNumber],
        [HospitalLogoURL],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    )
    SELECT
        [HospitalId],
        [HospitalName],
        [HospitalCode],
        [HospitalDesc],
        [Address],
        [Email],
        [ContactNumber],
        [City],
        [State],
        [Country],
        [OnBoardingStatus],
        [RegistrationNumber],
        [HospitalLogoURL],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    FROM deleted;
END
GO
ALTER TABLE [hm].[HospitalMaster] ENABLE TRIGGER [Trg_HospitalMaster]
GO
/****** Object:  Trigger [hm].[Trg_HospitalRoomMaster]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_HospitalRoomMaster]
   ON  [hm].[HospitalRoomMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[HospitalRoomMaster]
	(
	   [RoomId]
      ,[HospitalId]
      ,[WingId]
      ,[WardId]
      ,[RoomNumber]
      ,[RoomType]
      ,[FloorNumber]
      ,[BedCapacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RoomId]
      ,[HospitalId]
      ,[WingId]
      ,[WardId]
      ,[RoomNumber]
      ,[RoomType]
      ,[FloorNumber]
      ,[BedCapacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[HospitalRoomMaster]
	(
	   [RoomId]
      ,[HospitalId]
      ,[WingId]
      ,[WardId]
      ,[RoomNumber]
      ,[RoomType]
      ,[FloorNumber]
      ,[BedCapacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RoomId]
      ,[HospitalId]
      ,[WingId]
      ,[WardId]
      ,[RoomNumber]
      ,[RoomType]
      ,[FloorNumber]
      ,[BedCapacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[HospitalRoomMaster] ENABLE TRIGGER [Trg_HospitalRoomMaster]
GO
/****** Object:  Trigger [hm].[Trg_HospitalWardMaster]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[hm].[Trg_HospitalWardMaster]
   ON [hm].[HospitalWardMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

		INSERT INTO [hmaudit].[HospitalWardMaster]
		(
			 [WardId]
			,[HospitalId]
			,[WingId]
			,[WardName]
			,[WardCode]
			,[WardType]
			,[Capacity]
			,[GenderType]
			,[Description]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT 
			 [WardId]
			,[HospitalId]
			,[WingId]
			,[WardName]
			,[WardCode]
			,[WardType]
			,[Capacity]
			,[GenderType]
			,[Description]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted
		INSERT INTO [hmaudit].[HospitalWardMaster]
		(
			 [WardId]
			,[HospitalId]
			,[WingId]
			,[WardName]
			,[WardCode]
			,[WardType]
			,[Capacity]
			,[GenderType]
			,[Description]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT 
			 [WardId]
			,[HospitalId]
			,[WingId]
			,[WardName]
			,[WardCode]
			,[WardType]
			,[Capacity]
			,[GenderType]
			,[Description]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM deleted
END
GO
ALTER TABLE [hm].[HospitalWardMaster] ENABLE TRIGGER [Trg_HospitalWardMaster]
GO
/****** Object:  Trigger [hm].[Trg_HospitalWingMaster]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_HospitalWingMaster]
   ON  [hm].[HospitalWingMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [hmaudit].[HospitalWingMaster]
	(
	   [WingId]
      ,[HospitalId]
      ,[WingName]
      ,[WingCode]
      ,[FloorCount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [WingId]
      ,[HospitalId]
      ,[WingName]
      ,[WingCode]
      ,[FloorCount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  	INSERT INTO [hmaudit].[HospitalWingMaster]
	(
	   [WingId]
      ,[HospitalId]
      ,[WingName]
      ,[WingCode]
      ,[FloorCount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [WingId]
      ,[HospitalId]
      ,[WingName]
      ,[WingCode]
      ,[FloorCount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [hm].[HospitalWingMaster] ENABLE TRIGGER [Trg_HospitalWingMaster]
GO
/****** Object:  Trigger [hm].[Trg_InvoiceDetail]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_InvoiceDetail]
   ON [hm].[InvoiceDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[InvoiceDetail]
	(
       [DetailId]
      ,[InvoiceId]
      ,[Remarks]
      ,[Charges]
      ,[TaxName]
      ,[TaxAmount]
      ,[DiscountName]
      ,[DiscountAmount]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DoctorId]
      ,[UserId]
      ,[BaseAmount]
      ,[PmtStatus]
      ,[MasterId]
      ,[MasterType]
	)
	SELECT 
       [DetailId]
      ,[InvoiceId]
      ,[Remarks]
      ,[Charges]
      ,[TaxName]
      ,[TaxAmount]
      ,[DiscountName]
      ,[DiscountAmount]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DoctorId]
      ,[UserId]
      ,[BaseAmount]
      ,[PmtStatus]
      ,[MasterId]
      ,[MasterType]
	  FROM inserted
	  
	INSERT INTO [hmaudit].[InvoiceDetail]
	(
       [DetailId]
      ,[InvoiceId]
      ,[Remarks]
      ,[Charges]
      ,[TaxName]
      ,[TaxAmount]
      ,[DiscountName]
      ,[DiscountAmount]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DoctorId]
      ,[UserId]
      ,[BaseAmount]
      ,[PmtStatus]
      ,[MasterId]
      ,[MasterType]
	)
	SELECT 
       [DetailId]
      ,[InvoiceId]
      ,[Remarks]
      ,[Charges]
      ,[TaxName]
      ,[TaxAmount]
      ,[DiscountName]
      ,[DiscountAmount]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DoctorId]
      ,[UserId]
      ,[BaseAmount]
      ,[PmtStatus]
      ,[MasterId]
      ,[MasterType]
	  FROM deleted
END
GO
ALTER TABLE [hm].[InvoiceDetail] ENABLE TRIGGER [Trg_InvoiceDetail]
GO
/****** Object:  Trigger [hm].[Trg_InvoiceMaster]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_InvoiceMaster]
   ON [hm].[InvoiceMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	 INSERT INTO [hmaudit].[InvoiceMaster]
	 (
	   [InvoiceId]
      ,[InvoiceNumber]
      ,[InvoiceDate]
      ,[HospitalId]
      ,[UserId]
      ,[TotalAmount]
      ,[CheckInTime]
      ,[CheckOutTime]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [InvoiceId]
      ,[InvoiceNumber]
      ,[InvoiceDate]
      ,[HospitalId]
      ,[UserId]
      ,[TotalAmount]
      ,[CheckInTime]
      ,[CheckOutTime]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  	 INSERT INTO [hmaudit].[InvoiceMaster]
	 (
	   [InvoiceId]
      ,[InvoiceNumber]
      ,[InvoiceDate]
      ,[HospitalId]
      ,[UserId]
      ,[TotalAmount]
      ,[CheckInTime]
      ,[CheckOutTime]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [InvoiceId]
      ,[InvoiceNumber]
      ,[InvoiceDate]
      ,[HospitalId]
      ,[UserId]
      ,[TotalAmount]
      ,[CheckInTime]
      ,[CheckOutTime]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [hm].[InvoiceMaster] ENABLE TRIGGER [Trg_InvoiceMaster]
GO
/****** Object:  Trigger [hm].[Trg_PatientBedAllocationMapping]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_PatientBedAllocationMapping]
   ON [hm].[PatientBedAllocationMapping]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[PatientBedAllocationMapping]
	(
		   [MappingId]
		  ,[HospitalId]
		  ,[PatientId]
		  ,[WardId]
		  ,[RoomId]
		  ,[BedId]
		  ,[WingId]
		  ,[OccupiedFrom]
		  ,[OccupiedTo]
		  ,[IsOccupied]
		  ,[PmtStatus]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [MappingId]
		  ,[HospitalId]
		  ,[PatientId]
		  ,[WardId]
		  ,[RoomId]
		  ,[BedId]
		  ,[WingId]
		  ,[OccupiedFrom]
		  ,[OccupiedTo]
		  ,[IsOccupied]
		  ,[PmtStatus]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  FROM inserted
	  	INSERT INTO [hmaudit].[PatientBedAllocationMapping]
	(
		   [MappingId]
		  ,[HospitalId]
		  ,[PatientId]
		  ,[WardId]
		  ,[RoomId]
		  ,[BedId]
		  ,[WingId]
		  ,[OccupiedFrom]
		  ,[OccupiedTo]
		  ,[IsOccupied]
		  ,[PmtStatus]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [MappingId]
		  ,[HospitalId]
		  ,[PatientId]
		  ,[WardId]
		  ,[RoomId]
		  ,[BedId]
		  ,[WingId]
		  ,[OccupiedFrom]
		  ,[OccupiedTo]
		  ,[IsOccupied]
		  ,[PmtStatus]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [hm].[PatientBedAllocationMapping] ENABLE TRIGGER [Trg_PatientBedAllocationMapping]
GO
/****** Object:  Trigger [hm].[Trg_PatientReport]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_PatientReport]
   ON  [hm].[PatientReport]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[PatientReport]
	(
	   [ReportId]
      ,[HospitalId]
      ,[PatientId]
      ,[MasterId]
	  ,[MasterType]
      ,[BedId]
      ,[DoctorId]
	  ,[ServiceId]
      ,[ReportType]
      ,[ReportName]
      ,[ReportURL]
      ,[Remarks]
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReportId]
      ,[HospitalId]
      ,[PatientId]
      ,[MasterId]
	  ,[MasterType]
      ,[BedId]
      ,[DoctorId]
	  ,[ServiceId]
      ,[ReportType]
      ,[ReportName]
      ,[ReportURL]
      ,[Remarks]
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[PatientReport]
	(
	   [ReportId]
      ,[HospitalId]
      ,[PatientId]
      ,[MasterId]
	  ,[MasterType]
      ,[BedId]
      ,[DoctorId]
	  ,[ServiceId]
      ,[ReportType]
      ,[ReportName]
      ,[ReportURL]
      ,[Remarks]
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReportId]
      ,[HospitalId]
      ,[PatientId]
      ,[MasterId]
	  ,[MasterType]
      ,[BedId]
      ,[DoctorId]
	  ,[ServiceId]
      ,[ReportType]
      ,[ReportName]
      ,[ReportURL]
      ,[Remarks]
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[PatientReport] ENABLE TRIGGER [Trg_PatientReport]
GO
/****** Object:  Trigger [hm].[Trg_PrintTemplate]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_PrintTemplate]
   ON  [hm].[PrintTemplate]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	 INSERT INTO [hmaudit].[PrintTemplate]
	 (
		   [TemplateId]
		  ,[TemplateName]
		  ,[TemplateType]
		  ,[HospitalId]
		  ,[PageCss]
		  ,[HeaderHTML]
		  ,[ClientHeaderHTML]
		  ,[BodyHTML]
		  ,[ContinuedFooterHTML]
		  ,[LastPageFooterHTML]
		  ,[RowHTML]
		  ,[LogoImage]
		  ,[WatermarkText]
		  ,[WatermarkImage]
		  ,[PaperSize]
		  ,[Orientation]
		  ,[IsDefault]
		  ,[RowsInPage]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	 )
	 SELECT 
		   [TemplateId]
		  ,[TemplateName]
		  ,[TemplateType]
		  ,[HospitalId]
		  ,[PageCss]
		  ,[HeaderHTML]
		  ,[ClientHeaderHTML]
		  ,[BodyHTML]
		  ,[ContinuedFooterHTML]
		  ,[LastPageFooterHTML]
		  ,[RowHTML]
		  ,[LogoImage]
		  ,[WatermarkText]
		  ,[WatermarkImage]
		  ,[PaperSize]
		  ,[Orientation]
		  ,[IsDefault]
		  ,[RowsInPage]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  FROM inserted; 
	  INSERT INTO [hmaudit].[PrintTemplate]
	 (
	       [TemplateId]
		  ,[TemplateName]
		  ,[TemplateType]
		  ,[HospitalId]
		  ,[PageCss]
		  ,[HeaderHTML]
		  ,[ClientHeaderHTML]
		  ,[BodyHTML]
		  ,[ContinuedFooterHTML]
		  ,[LastPageFooterHTML]
		  ,[RowHTML]
		  ,[LogoImage]
		  ,[WatermarkText]
		  ,[WatermarkImage]
		  ,[PaperSize]
		  ,[Orientation]
		  ,[IsDefault]
		  ,[RowsInPage]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	 )
	 SELECT 
		   [TemplateId]
		  ,[TemplateName]
		  ,[TemplateType]
		  ,[HospitalId]
		  ,[PageCss]
		  ,[HeaderHTML]
		  ,[ClientHeaderHTML]
		  ,[BodyHTML]
		  ,[ContinuedFooterHTML]
		  ,[LastPageFooterHTML]
		  ,[RowHTML]
		  ,[LogoImage]
		  ,[WatermarkText]
		  ,[WatermarkImage]
		  ,[PaperSize]
		  ,[Orientation]
		  ,[IsDefault]
		  ,[RowsInPage]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  FROM deleted

END
GO
ALTER TABLE [hm].[PrintTemplate] ENABLE TRIGGER [Trg_PrintTemplate]
GO
/****** Object:  Trigger [hm].[Trg_ReceiptDetail]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_ReceiptDetail]
   ON  [hm].[ReceiptDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [hmaudit].[ReceiptDetail]
	(
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[ReceiptDetail]
	(
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[ReceiptDetail] ENABLE TRIGGER [Trg_ReceiptDetail]
GO
/****** Object:  Trigger [hm].[Trg_ReceiptMaster]    Script Date: 11/24/2025 5:55:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_ReceiptMaster]
   ON  [hm].[ReceiptMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[ReceiptMaster]
	(
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[ReceiptMaster]
	(
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[ReceiptMaster] ENABLE TRIGGER [Trg_ReceiptMaster]
GO
/****** Object:  Trigger [hm].[Trg_ServiceDetail]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[hm].[Trg_ServiceDetail]
   ON  [hm].[ServiceDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[ServiceDetail]
	(
	   [ServiceDetailId]
      ,[ServiceDetailName]
      ,[ServiceDescrition]
      ,[Charges]
      ,[ChargeType]
      ,[ChargeBasis]
      ,[ChargeQuantity]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ServiceDetailId]
      ,[ServiceDetailName]
      ,[ServiceDescrition]
      ,[Charges]
      ,[ChargeType]
      ,[ChargeBasis]
      ,[ChargeQuantity]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [hm].[ServiceDetail] ENABLE TRIGGER [Trg_ServiceDetail]
GO
/****** Object:  Trigger [hm].[Trg_ServiceMaster]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[hm].[Trg_ServiceMaster]
   ON  [hm].[ServiceMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[ServiceMaster]
	(
	   [ServiceId]
      ,[HospitalId]
      ,[ServiceName]
      ,[ServiceCode]
      ,[ServiceDescription]
      ,[TotalCharge]
      ,[EstimateDays]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ServiceId]
      ,[HospitalId]
      ,[ServiceName]
      ,[ServiceCode]
      ,[ServiceDescription]
      ,[TotalCharge]
      ,[EstimateDays]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [hm].[ServiceMaster] ENABLE TRIGGER [Trg_ServiceMaster]
GO
/****** Object:  Trigger [hm].[Trg_TreatmentPlanDetail]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_TreatmentPlanDetail]
   ON  [hm].[TreatmentPlanDetail]
   AFTER  INSERT, DELETE, UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	-- From INSERTED rows
	INSERT INTO [hmaudit].[TreatmentPlanDetail]
	(
       [DetailId]
      ,[PlanId]
      ,[StaffType]
      ,[StaffId]
      ,[ServiceId]
      ,[ActionTime]
      ,[ActionDetail]
      ,[ServiceCost]
      ,[DiscountValue]
      ,[TaxValue]
      ,[NetAmount]
      ,[IsCompleted]
      ,[DiscountType]
      ,[TaxType]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[PlanDate]
      ,[InvoiceId]
      
	)
	SELECT 
       [DetailId]
      ,[PlanId]
      ,[StaffType]
      ,[StaffId]
      ,[ServiceId]
      ,[ActionTime]
      ,[ActionDetail]
      ,[ServiceCost]
      ,[DiscountValue]
      ,[TaxValue]
      ,[NetAmount]
      ,[IsCompleted]
      ,[DiscountType]
      ,[TaxType]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[PlanDate]
      ,[InvoiceId]
	FROM inserted;

	-- From DELETED rows
	INSERT INTO [hmaudit].[TreatmentPlanDetail]
	(
       [DetailId]
      ,[PlanId]
      ,[StaffType]
      ,[StaffId]
      ,[ServiceId]
      ,[ActionTime]
      ,[ActionDetail]
      ,[ServiceCost]
      ,[DiscountValue]
      ,[TaxValue]
      ,[NetAmount]
      ,[IsCompleted]
      ,[DiscountType]
      ,[TaxType]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[PlanDate]
      ,[InvoiceId]
	)
	SELECT 
       [DetailId]
      ,[PlanId]
      ,[StaffType]
      ,[StaffId]
      ,[ServiceId]
      ,[ActionTime]
      ,[ActionDetail]
      ,[ServiceCost]
      ,[DiscountValue]
      ,[TaxValue]
      ,[NetAmount]
      ,[IsCompleted]
      ,[DiscountType]
      ,[TaxType]
      ,[PmtStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[PlanDate]
      ,[InvoiceId]
	FROM deleted;
END;
GO
ALTER TABLE [hm].[TreatmentPlanDetail] ENABLE TRIGGER [Trg_TreatmentPlanDetail]
GO
/****** Object:  Trigger [hm].[Trg_TreatmentPlanMaster]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [hm].[Trg_TreatmentPlanMaster]
   ON  [hm].[TreatmentPlanMaster]
   AFTER  INSERT, DELETE, UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	-- From INSERTED rows
	INSERT INTO [hmaudit].[TreatmentPlanMaster]
	(
	   [PlanId]
      ,[PatientId]
      ,[StartDate]        
      ,[EndDate]          
      ,[DoctorId]
      ,[BedId]
      ,[HospitalId] 
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PlanId]
      ,[PatientId]
      ,[StartDate]        
      ,[EndDate]         
      ,[DoctorId]
      ,[BedId]
	  ,[HospitalId] 
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	FROM inserted;

	-- From DELETED rows
	INSERT INTO [hmaudit].[TreatmentPlanMaster]
	(
	   [PlanId]
      ,[PatientId]
      ,[StartDate]      
      ,[EndDate]          
      ,[DoctorId]
      ,[BedId]
	  ,[HospitalId]
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PlanId]
      ,[PatientId]
      ,[StartDate]       
      ,[EndDate]         
      ,[DoctorId]
      ,[BedId]
	  ,[HospitalId] 
	  ,[TotalCost]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	FROM deleted;
END;
GO
ALTER TABLE [hm].[TreatmentPlanMaster] ENABLE TRIGGER [Trg_TreatmentPlanMaster]
GO
/****** Object:  Trigger [hm].[Trg_TreatmentTemplateDetail]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_TreatmentTemplateDetail]
   ON  [hm].[TreatmentTemplateDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[TreatmentTemplateDetail]
	(
	   [DetailId]
      ,[TemplateId]
      ,[StaffType]
      ,[ServiceId]
      ,[Actiondetail]
      ,[DiscountPercentage]
      ,[TaxPercentage]
	  ,[ServiceAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[TemplateId]
      ,[StaffType]
      ,[ServiceId]
      ,[Actiondetail]
      ,[DiscountPercentage]
      ,[TaxPercentage]
	  ,[ServiceAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[TreatmentTemplateDetail]
	(
	   [DetailId]
      ,[TemplateId]
      ,[StaffType]
      ,[ServiceId]
      ,[Actiondetail]
      ,[DiscountPercentage]
      ,[TaxPercentage]
	  ,[ServiceAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[TemplateId]
      ,[StaffType]
      ,[ServiceId]
      ,[Actiondetail]
      ,[DiscountPercentage]
      ,[TaxPercentage]
	  ,[ServiceAmount]
      ,[TotalCharge]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[TreatmentTemplateDetail] ENABLE TRIGGER [Trg_TreatmentTemplateDetail]
GO
/****** Object:  Trigger [hm].[Trg_TreatmentTemplateMaster]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [hm].[Trg_TreatmentTemplateMaster]
   ON  [hm].[TreatmentTemplateMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[TreatmentTemplateMaster]
	(
	   [TemplateId]
      ,[HospitalId]
      ,[TemplateName]
      ,[Remark]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [TemplateId]
      ,[HospitalId]
      ,[TemplateName]
      ,[Remark]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [hmaudit].[TreatmentTemplateMaster]
	(
	   [TemplateId]
      ,[HospitalId]
      ,[TemplateName]
      ,[Remark]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [TemplateId]
      ,[HospitalId]
      ,[TemplateName]
      ,[Remark]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [hm].[TreatmentTemplateMaster] ENABLE TRIGGER [Trg_TreatmentTemplateMaster]
GO
/****** Object:  Trigger [hm].[Trg_UserAffiliationMapping]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER[hm].[Trg_UserAffiliationMapping]
   ON  [hm].[UserAffiliationMapping]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [hmaudit].[UserAffiliationMapping]
	(
		   [MappingId]
		  ,[UserId]
		  ,[HospitalId]
		  ,[AffiliationType]
		  ,[Designation]
		  ,[IsPrimary]
		  ,[JoinedOn]
		  ,[RegistrationNumber]
		  ,[LicensingAuthority]
		  ,[YearOfRegistration]
		  ,[RegistrationDate]
		  ,[JoiningDate]
		  ,[ShiftType]
		  ,[VisitType]
		  ,[ReferredBy]
		  ,[SocialLink]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
		  ,[Department]
		  ,[Specialization]
		  ,[Education]
		  ,[EmploymentType]
		  ,[ConsultationFee]
		  ,[YearsOfExperience]
		  ,[Allergies]
		  ,[ChronicCondition]
		  ,[InsuranceProvider]
		  ,[InsurancePolicyNo]
		  ,[EmiEligibilityStatus]
		  ,[LoanReferenceId]
		  ,[TermsAccepted]
		)
		SELECT 
		   [MappingId]
		  ,[UserId]
		  ,[HospitalId]
		  ,[AffiliationType]
		  ,[Designation]
		  ,[IsPrimary]
		  ,[JoinedOn]
		  ,[RegistrationNumber]
		  ,[LicensingAuthority]
		  ,[YearOfRegistration]
		  ,[RegistrationDate]
		  ,[JoiningDate]
		  ,[ShiftType]
		  ,[VisitType]
		  ,[ReferredBy]
		  ,[SocialLink]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
		  ,[Department]
		  ,[Specialization]
		  ,[Education]
		  ,[EmploymentType]
		  ,[ConsultationFee]
		  ,[YearsOfExperience]
		  ,[Allergies]
		  ,[ChronicCondition]
		  ,[InsuranceProvider]
		  ,[InsurancePolicyNo]
		  ,[EmiEligibilityStatus]
		  ,[LoanReferenceId]
		  ,[TermsAccepted]
	FROM inserted

	INSERT INTO [hmaudit].[UserAffiliationMapping]
	(
		   [MappingId]
		  ,[UserId]
		  ,[HospitalId]
		  ,[AffiliationType]
		  ,[Designation]
		  ,[IsPrimary]
		  ,[JoinedOn]
		  ,[RegistrationNumber]
		  ,[LicensingAuthority]
		  ,[YearOfRegistration]
		  ,[RegistrationDate]
		  ,[JoiningDate]
		  ,[ShiftType]
		  ,[VisitType]
		  ,[ReferredBy]
		  ,[SocialLink]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
		  ,[Department]
		  ,[Specialization]
		  ,[Education]
		  ,[EmploymentType]
		  ,[ConsultationFee]
		  ,[YearsOfExperience]
		  ,[Allergies]
		  ,[ChronicCondition]
		  ,[InsuranceProvider]
		  ,[InsurancePolicyNo]
		  ,[EmiEligibilityStatus]
		  ,[LoanReferenceId]
		  ,[TermsAccepted]
		)
		SELECT 
		   [MappingId]
		  ,[UserId]
		  ,[HospitalId]
		  ,[AffiliationType]
		  ,[Designation]
		  ,[IsPrimary]
		  ,[JoinedOn]
		  ,[RegistrationNumber]
		  ,[LicensingAuthority]
		  ,[YearOfRegistration]
		  ,[RegistrationDate]
		  ,[JoiningDate]
		  ,[ShiftType]
		  ,[VisitType]
		  ,[ReferredBy]
		  ,[SocialLink]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
		  ,[Department]
		  ,[Specialization]
		  ,[Education]
		  ,[EmploymentType]
		  ,[ConsultationFee]
		  ,[YearsOfExperience]
		  ,[Allergies]
		  ,[ChronicCondition]
		  ,[InsuranceProvider]
		  ,[InsurancePolicyNo]
		  ,[EmiEligibilityStatus]
		  ,[LoanReferenceId]
		  ,[TermsAccepted]
	FROM deleted
END
GO
ALTER TABLE [hm].[UserAffiliationMapping] ENABLE TRIGGER [Trg_UserAffiliationMapping]
GO
/****** Object:  Trigger [pl].[Trg_Accounts_Audit]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [pl].[Trg_Accounts_Audit]
ON [pl].[Accounts]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- For INSERT
    INSERT INTO [plaudit].[Accounts]
    (
        AccountId, OwnerType, AccountType, ModuleName, EntityId, BankName,
        AccountHolderName, AccountNo, IFSC, BranchName, Address,
        AccountBalance, CurrencyCode, ContactNo, IsDefault, IsVerified,
        OtherDetail1, OtherDetail2, OtherDetail3, OtherDetail4, OtherDetail5, OtherDetail6,
        IsActive, IsDeleted, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn
    )
    SELECT
        i.AccountId, i.OwnerType, i.AccountType, i.ModuleName, i.EntityId, i.BankName,
        i.AccountHolderName, i.AccountNo, i.IFSC, i.BranchName, i.Address,
        i.AccountBalance, i.CurrencyCode, i.ContactNo, i.IsDefault, i.IsVerified,
        i.OtherDetail1, i.OtherDetail2, i.OtherDetail3, i.OtherDetail4, i.OtherDetail5, i.OtherDetail6,
        i.IsActive, i.IsDeleted, i.CreatedBy, i.CreatedOn, i.ModifiedBy, i.ModifiedOn
    FROM inserted i;

    -- For DELETE
    INSERT INTO [plaudit].[Accounts]
    (
        AccountId, OwnerType, AccountType, ModuleName, EntityId, BankName,
        AccountHolderName, AccountNo, IFSC, BranchName, Address,
        AccountBalance, CurrencyCode, ContactNo, IsDefault, IsVerified,
        OtherDetail1, OtherDetail2, OtherDetail3, OtherDetail4, OtherDetail5, OtherDetail6,
        IsActive, IsDeleted, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn
    )
    SELECT
        d.AccountId, d.OwnerType, d.AccountType, d.ModuleName, d.EntityId, d.BankName,
        d.AccountHolderName, d.AccountNo, d.IFSC, d.BranchName, d.Address,
        d.AccountBalance, d.CurrencyCode, d.ContactNo, d.IsDefault, d.IsVerified,
        d.OtherDetail1, d.OtherDetail2, d.OtherDetail3, d.OtherDetail4, d.OtherDetail5, d.OtherDetail6,
        d.IsActive, d.IsDeleted, d.CreatedBy, d.CreatedOn, d.ModifiedBy, d.ModifiedOn
    FROM deleted d;
END;
GO
ALTER TABLE [pl].[Accounts] ENABLE TRIGGER [Trg_Accounts_Audit]
GO
/****** Object:  Trigger [pl].[Trg_Application]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [pl].[Trg_Application]
   ON [pl].[Application]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	 INSERT INTO [plaudit].[Application]
	 (
	   [ApplicationId]
      ,[UserId]
      ,[ProductId]
      ,[ApplicationStatus]
      ,[RequestedAmount]
      ,[ApprovedAmount]
      ,[TenureMonths]
      ,[CreditScore]
      ,[ApplicationDate]
      ,[ApprovalDate]
      ,[ApprovedBy]
      ,[RejectionReason]
      ,[RejectedBy]
      ,[IsKYCVerified]
      ,[KYCVerifiedOn]
      ,[IsDisbursed]
      ,[DisbursedOn]
      ,[DisbursedAmount]
      ,[KycDocId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[ProductCode]
      ,[EmployerName]
      ,[Occupation]
      ,[EmploymentType]
      ,[MinimumNetMonthlyIncome]
      ,[IncomeStabilityInMonths]
      ,[BankMinimumAverageBalance]
      ,[BankMaximumBounceCount]
	  ,[PRRN]
	  ,[ApplicationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [ApplicationId]
      ,[UserId]
      ,[ProductId]
      ,[ApplicationStatus]
      ,[RequestedAmount]
      ,[ApprovedAmount]
      ,[TenureMonths]
      ,[CreditScore]
      ,[ApplicationDate]
      ,[ApprovalDate]
      ,[ApprovedBy]
      ,[RejectionReason]
      ,[RejectedBy]
      ,[IsKYCVerified]
      ,[KYCVerifiedOn]
      ,[IsDisbursed]
      ,[DisbursedOn]
      ,[DisbursedAmount]
      ,[KycDocId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[ProductCode]
      ,[EmployerName]
      ,[Occupation]
      ,[EmploymentType]
      ,[MinimumNetMonthlyIncome]
      ,[IncomeStabilityInMonths]
      ,[BankMinimumAverageBalance]
      ,[BankMaximumBounceCount]
	  ,[PRRN]
	  ,[ApplicationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  	 INSERT INTO [plaudit].[Application]
	 (
	   [ApplicationId]
      ,[UserId]
      ,[ProductId]
      ,[ApplicationStatus]
      ,[RequestedAmount]
      ,[ApprovedAmount]
      ,[TenureMonths]
      ,[CreditScore]
      ,[ApplicationDate]
      ,[ApprovalDate]
      ,[ApprovedBy]
      ,[RejectionReason]
      ,[RejectedBy]
      ,[IsKYCVerified]
      ,[KYCVerifiedOn]
      ,[IsDisbursed]
      ,[DisbursedOn]
      ,[DisbursedAmount]
      ,[KycDocId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[ProductCode]
      ,[EmployerName]
      ,[Occupation]
      ,[EmploymentType]
      ,[MinimumNetMonthlyIncome]
      ,[IncomeStabilityInMonths]
      ,[BankMinimumAverageBalance]
      ,[BankMaximumBounceCount]
	  ,[PRRN]
	  ,[ApplicationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [ApplicationId]
      ,[UserId]
      ,[ProductId]
      ,[ApplicationStatus]
      ,[RequestedAmount]
      ,[ApprovedAmount]
      ,[TenureMonths]
      ,[CreditScore]
      ,[ApplicationDate]
      ,[ApprovalDate]
      ,[ApprovedBy]
      ,[RejectionReason]
      ,[RejectedBy]
      ,[IsKYCVerified]
      ,[KYCVerifiedOn]
      ,[IsDisbursed]
      ,[DisbursedOn]
      ,[DisbursedAmount]
      ,[KycDocId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[ProductCode]
      ,[EmployerName]
      ,[Occupation]
      ,[EmploymentType]
      ,[MinimumNetMonthlyIncome]
      ,[IncomeStabilityInMonths]
      ,[BankMinimumAverageBalance]
      ,[BankMaximumBounceCount]
	  ,[PRRN]
	  ,[ApplicationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [pl].[Application] ENABLE TRIGGER [Trg_Application]
GO
/****** Object:  Trigger [pl].[Trg_CreditEngineConfiguration]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[pl].[Trg_CreditEngineConfiguration]
   ON  [pl].[CreditEngineConfiguration]
   AFTER  INSERT,DELETE,UPDATE
AS
BEGIN
        SET NOCOUNT ON;
		INSERT INTO [plaudit].[CreditEngineConfiguration]
		(
			   [ConfigId]
			  ,[MasterId]
			  ,[MasterType]
			  ,[AgeFrom]
			  ,[AgeTo]
			  ,[OccupationType]
			  ,[Weightage]
			  ,[MinimumNetMonthlyIncome]
			  ,[IncomeStabilityInMonths]
			  ,[BankMinimumAverageBalance]
			  ,[BankMaximumBounceCount]
			  ,[FOIR]
			  ,[MaximumLoanTenureInMonths]
			  ,[BaseInterestRate]
			  ,[RiskVariance]
			  ,[MinimumLoanAmount]
			  ,[MaximumLoanAmount]
			  ,[CreditScore]
			  ,[Dpd12M]
			  ,[ActiveLoans]
			  ,[SimAgeMonths]
			  ,[GeoPinRiskIndex]
			  ,[SchoolPaymentHistoryScore]
			  ,[VaultBalanceAverage]
			  ,[IncomeTruthIndex]
			  ,[OtherDetail1]
			  ,[OtherDetail2]
			  ,[OtherDetail3]
			  ,[OtherDetail4]
			  ,[OtherDetail5]
			  ,[OtherDetail6]
			  ,[IsActive]
			  ,[IsDeleted]
			  ,[CreatedBy]
			  ,[CreatedOn]
			  ,[ModifiedBy]
			  ,[ModifiedOn]
			  ,[ExistingEmiAmount]
			  ,[ResidenceType]
			  ,[MonthsAtCurrentAddress]
			  ,[AddressRisk]
			  ,[ITR26ASAvailable]
			  ,[EmploymentType]
			  ,[ProductCode]
		)
		SELECT 
			 [ConfigId]
			,[MasterId]
			,[MasterType]
			,[AgeFrom]
			,[AgeTo]
			,[OccupationType]
			,[Weightage]
			,[MinimumNetMonthlyIncome]
			,[IncomeStabilityInMonths]
			,[BankMinimumAverageBalance]
			,[BankMaximumBounceCount]
			,[FOIR]
			,[MaximumLoanTenureInMonths]
			,[BaseInterestRate]
			,[RiskVariance]
			,[MinimumLoanAmount]
			,[MaximumLoanAmount]
			,[CreditScore]
			,[Dpd12M]
			,[ActiveLoans]
			,[SimAgeMonths]
			,[GeoPinRiskIndex]
			,[SchoolPaymentHistoryScore]
			,[VaultBalanceAverage]
			,[IncomeTruthIndex]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
			,[ExistingEmiAmount]
			,[ResidenceType]
			,[MonthsAtCurrentAddress]
			,[AddressRisk]
			,[ITR26ASAvailable]
			,[EmploymentType]
			,[ProductCode]
     FROM inserted
	INSERT INTO [plaudit].[CreditEngineConfiguration]
	(
			 [ConfigId]
			,[MasterId]
			,[MasterType]
			,[AgeFrom]
			,[AgeTo]
			,[OccupationType]
			,[Weightage]
			,[MinimumNetMonthlyIncome]
			,[IncomeStabilityInMonths]
			,[BankMinimumAverageBalance]
			,[BankMaximumBounceCount]
			,[FOIR]
			,[MaximumLoanTenureInMonths]
			,[BaseInterestRate]
			,[RiskVariance]
			,[MinimumLoanAmount]
			,[MaximumLoanAmount]
			,[CreditScore]
			,[Dpd12M]
			,[ActiveLoans]
			,[SimAgeMonths]
			,[GeoPinRiskIndex]
			,[SchoolPaymentHistoryScore]
			,[VaultBalanceAverage]
			,[IncomeTruthIndex]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy]
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
			,[ExistingEmiAmount]
			,[ResidenceType]
			,[MonthsAtCurrentAddress]
			,[AddressRisk]
			,[ITR26ASAvailable]
			,[EmploymentType]
			,[ProductCode]
	)
	SELECT 
			   [ConfigId]
			  ,[MasterId]
			  ,[MasterType]
			  ,[AgeFrom]
			  ,[AgeTo]
			  ,[OccupationType]
			  ,[Weightage]
			  ,[MinimumNetMonthlyIncome]
			  ,[IncomeStabilityInMonths]
			  ,[BankMinimumAverageBalance]
			  ,[BankMaximumBounceCount]
			  ,[FOIR]
			  ,[MaximumLoanTenureInMonths]
			  ,[BaseInterestRate]
			  ,[RiskVariance]
			  ,[MinimumLoanAmount]
			  ,[MaximumLoanAmount]
			  ,[CreditScore]
			  ,[Dpd12M]
			  ,[ActiveLoans]
			  ,[SimAgeMonths]
			  ,[GeoPinRiskIndex]
			  ,[SchoolPaymentHistoryScore]
			  ,[VaultBalanceAverage]
			  ,[IncomeTruthIndex]
			  ,[OtherDetail1]
			  ,[OtherDetail2]
			  ,[OtherDetail3]
			  ,[OtherDetail4]
			  ,[OtherDetail5]
			  ,[OtherDetail6]
			  ,[IsActive]
			  ,[IsDeleted]
			  ,[CreatedBy]
			  ,[CreatedOn]
			  ,[ModifiedBy]
			  ,[ModifiedOn]
			  ,[ExistingEmiAmount]
			  ,[ResidenceType]
			  ,[MonthsAtCurrentAddress]
			  ,[AddressRisk]
			  ,[ITR26ASAvailable]
			  ,[EmploymentType]
			  ,[ProductCode]
	FROM deleted
END
GO
ALTER TABLE [pl].[CreditEngineConfiguration] ENABLE TRIGGER [Trg_CreditEngineConfiguration]
GO
/****** Object:  Trigger [pl].[Trg_DigilockerSessionKey]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [pl].[Trg_DigilockerSessionKey]
  ON [pl].[DigilockerSessionKey]
 AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [plaudit].[DigilockerSessionKey]
	(	
	   [KeyId]
      ,[UserId]
      ,[SessionKey]
      ,[ValidFrom]
      ,[ValidTo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [KeyId]
      ,[UserId]
      ,[SessionKey]
      ,[ValidFrom]
      ,[ValidTo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  
	INSERT INTO [plaudit].[DigilockerSessionKey]
	(
	   [KeyId]
      ,[UserId]
      ,[SessionKey]
      ,[ValidFrom]
      ,[ValidTo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
    )
	SELECT
	   [KeyId]
      ,[UserId]
      ,[SessionKey]
      ,[ValidFrom]
      ,[ValidTo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [pl].[DigilockerSessionKey] ENABLE TRIGGER [Trg_DigilockerSessionKey]
GO
/****** Object:  Trigger [pl].[Trg_KYCDocument]    Script Date: 11/24/2025 5:55:38 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [pl].[Trg_KYCDocument]
   ON  [pl].[KYCDocument]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	  
	  INSERT INTO [plaudit].[KYCDocument]
	  (
	   [DocumentId]
      ,[KYCId]
      ,[DocumentTypeId]
      ,[DocumentName]
      ,[FilePath]
      ,[DocumentStatus]
      ,[VerifiedBy]
      ,[VerifiedOn]
      ,[RejectionReason]
      ,[UploadedOn]
      ,[UploadedBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  )
	  SELECT
	   [DocumentId]
      ,[KYCId]
      ,[DocumentTypeId]
      ,[DocumentName]
      ,[FilePath]
      ,[DocumentStatus]
      ,[VerifiedBy]
      ,[VerifiedOn]
      ,[RejectionReason]
      ,[UploadedOn]
      ,[UploadedBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [pl].[KYCDocument] ENABLE TRIGGER [Trg_KYCDocument]
GO
/****** Object:  Trigger [pl].[Trg_KYCDocumentType]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [pl].[Trg_KYCDocumentType]
   ON  [pl].[KYCDocumentType]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [plaudit].[KYCDocumentType]
	(
	   [DocumentTypeId]
      ,[Code]
      ,[DocumentName]
      ,[EntityType]
      ,[IsMandatory]
      ,[MaxFileSizeMB]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DocumentTypeId]
      ,[Code]
      ,[DocumentName]
      ,[EntityType]
      ,[IsMandatory]
      ,[MaxFileSizeMB]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

END
GO
ALTER TABLE [pl].[KYCDocumentType] ENABLE TRIGGER [Trg_KYCDocumentType]
GO
/****** Object:  Trigger [pl].[Trg_PayLaterImgMaster]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [pl].[Trg_PayLaterImgMaster]
   ON [pl].[PayLaterImgMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN 
		SET NOCOUNT ON;

		INSERT INTO [plaudit].[PayLaterImgMaster]
		(
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted

		
		INSERT INTO [plaudit].[PayLaterImgMaster]
		(
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM deleted
END
GO
ALTER TABLE [pl].[PayLaterImgMaster] ENABLE TRIGGER [Trg_PayLaterImgMaster]
GO
/****** Object:  Trigger [pl].[Trg_PaymentReceipts_Audit]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [pl].[Trg_PaymentReceipts_Audit]
ON [pl].[PaymentReceipts]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- Inserted Records (for INSERT/UPDATE)
    INSERT INTO [plaudit].[PaymentReceipts]
    (
        ReceiptId, TransactionId, ReceiptNo, UserId, BusinessId, ModuleType, ModuleEntityId,
        ReceiptAmount, CurrencyCode, PaymentMethod, StatusCode, IssuedDate, Notes,
        OtherDetail1, OtherDetail2, OtherDetail3, OtherDetail4, OtherDetail5, OtherDetail6,
        IsActive, IsDeleted, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn
    )
    SELECT 
        i.ReceiptId, i.TransactionId, i.ReceiptNo, i.UserId, i.BusinessId, i.ModuleType, i.ModuleEntityId,
        i.ReceiptAmount, i.CurrencyCode, i.PaymentMethod, i.StatusCode, i.IssuedDate, i.Notes,
        i.OtherDetail1, i.OtherDetail2, i.OtherDetail3, i.OtherDetail4, i.OtherDetail5, i.OtherDetail6,
        i.IsActive, i.IsDeleted, i.CreatedBy, i.CreatedOn, i.ModifiedBy, i.ModifiedOn
    FROM inserted i;

    -- Deleted Records (for DELETE/UPDATE)
    INSERT INTO [plaudit].[PaymentReceipts]
    (
        ReceiptId, TransactionId, ReceiptNo, UserId, BusinessId, ModuleType, ModuleEntityId,
        ReceiptAmount, CurrencyCode, PaymentMethod, StatusCode, IssuedDate, Notes,
        OtherDetail1, OtherDetail2, OtherDetail3, OtherDetail4, OtherDetail5, OtherDetail6,
        IsActive, IsDeleted, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn
    )
    SELECT 
        d.ReceiptId, d.TransactionId, d.ReceiptNo, d.UserId, d.BusinessId, d.ModuleType, d.ModuleEntityId,
        d.ReceiptAmount, d.CurrencyCode, d.PaymentMethod, d.StatusCode, d.IssuedDate, d.Notes,
        d.OtherDetail1, d.OtherDetail2, d.OtherDetail3, d.OtherDetail4, d.OtherDetail5, d.OtherDetail6,
        d.IsActive, d.IsDeleted, d.CreatedBy, d.CreatedOn, d.ModifiedBy, d.ModifiedOn
    FROM deleted d;
END
GO
ALTER TABLE [pl].[PaymentReceipts] ENABLE TRIGGER [Trg_PaymentReceipts_Audit]
GO
/****** Object:  Trigger [pl].[Trg_PaymentTransactions]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [pl].[Trg_PaymentTransactions]
ON [pl].[PaymentTransactions]
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
    SET NOCOUNT ON;

    -- For INSERT
    INSERT INTO [plaudit].[PaymentTransactions] (
        TransactionId, AuditAction, AuditTimestamp, AuditUser,
        ParentTransactionId, ReferenceTransactionId, LoanId, UserId, PRRN,
        TransactionType, PaymentMethod, TransactionAmount, CurrencyCode,
        StatusCode, ModuleType, ModuleEntityId, BusinessId,
        InitiatedAt, CompletedAt,
        OtherDetail1, OtherDetail2, OtherDetail3, OtherDetail4, OtherDetail5, OtherDetail6,
        IsActive, IsDeleted,
        CreatedBy, CreatedOn, ModifiedBy, ModifiedOn
    )
    SELECT 
        i.TransactionId, 'INSERT', GETDATE(), SYSTEM_USER,
        i.ParentTransactionId, i.ReferenceTransactionId, i.LoanId, i.UserId, i.PRRN,
        i.TransactionType, i.PaymentMethod, i.TransactionAmount, i.CurrencyCode,
        i.StatusCode, i.ModuleType, i.ModuleEntityId, i.BusinessId,
        i.InitiatedAt, i.CompletedAt,
        i.OtherDetail1, i.OtherDetail2, i.OtherDetail3, i.OtherDetail4, i.OtherDetail5, i.OtherDetail6,
        i.IsActive, i.IsDeleted,
        i.CreatedBy, i.CreatedOn, i.ModifiedBy, i.ModifiedOn
    FROM INSERTED i;

    -- For DELETE
    INSERT INTO [plaudit].[PaymentTransactions] (
        TransactionId, AuditAction, AuditTimestamp, AuditUser,
        ParentTransactionId, ReferenceTransactionId, LoanId, UserId, PRRN,
        TransactionType, PaymentMethod, TransactionAmount, CurrencyCode,
        StatusCode, ModuleType, ModuleEntityId, BusinessId,
        InitiatedAt, CompletedAt,
        OtherDetail1, OtherDetail2, OtherDetail3, OtherDetail4, OtherDetail5, OtherDetail6,
        IsActive, IsDeleted,
        CreatedBy, CreatedOn, ModifiedBy, ModifiedOn
    )
    SELECT 
        d.TransactionId, 'DELETE', GETDATE(), SYSTEM_USER,
        d.ParentTransactionId, d.ReferenceTransactionId, d.LoanId, d.UserId, d.PRRN,
        d.TransactionType, d.PaymentMethod, d.TransactionAmount, d.CurrencyCode,
        d.StatusCode, d.ModuleType, d.ModuleEntityId, d.BusinessId,
        d.InitiatedAt, d.CompletedAt,
        d.OtherDetail1, d.OtherDetail2, d.OtherDetail3, d.OtherDetail4, d.OtherDetail5, d.OtherDetail6,
        d.IsActive, d.IsDeleted,
        d.CreatedBy, d.CreatedOn, d.ModifiedBy, d.ModifiedOn
    FROM DELETED d;

    -- For UPDATE (new snapshots)
    INSERT INTO [plaudit].[PaymentTransactions] (
        TransactionId, AuditAction, AuditTimestamp, AuditUser,
        ParentTransactionId, ReferenceTransactionId, LoanId, UserId, PRRN,
        TransactionType, PaymentMethod, TransactionAmount, CurrencyCode,
        StatusCode, ModuleType, ModuleEntityId, BusinessId,
        InitiatedAt, CompletedAt,
        OtherDetail1, OtherDetail2, OtherDetail3, OtherDetail4, OtherDetail5, OtherDetail6,
        IsActive, IsDeleted,
        CreatedBy, CreatedOn, ModifiedBy, ModifiedOn
    )
    SELECT 
        i.TransactionId, 'UPDATE', GETDATE(), SYSTEM_USER,
        i.ParentTransactionId, i.ReferenceTransactionId, i.LoanId, i.UserId, i.PRRN,
        i.TransactionType, i.PaymentMethod, i.TransactionAmount, i.CurrencyCode,
        i.StatusCode, i.ModuleType, i.ModuleEntityId, i.BusinessId,
        i.InitiatedAt, i.CompletedAt,
        i.OtherDetail1, i.OtherDetail2, i.OtherDetail3, i.OtherDetail4, i.OtherDetail5, i.OtherDetail6,
        i.IsActive, i.IsDeleted,
        i.CreatedBy, i.CreatedOn, i.ModifiedBy, i.ModifiedOn
    FROM INSERTED i
    INNER JOIN DELETED d ON i.TransactionId = d.TransactionId;
END
GO
ALTER TABLE [pl].[PaymentTransactions] ENABLE TRIGGER [Trg_PaymentTransactions]
GO
/****** Object:  Trigger [pl].[Trg_Product]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [pl].[Trg_Product] 
   ON[pl].[Product] 
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	 INSERT INTO [plaudit].[Product]
	 (
	   [ProductId]
      ,[ProductName]
      ,[ProductCode]
      ,[ProductType]
      ,[Description]
      ,[MaxLoanAmount]
      ,[MinLoanAmount]
      ,[InterestRate]
      ,[MinTenureMonths]
      ,[MaxTenureMonths]
      ,[ProcessingFeePercent]
      ,[MinCreditScore]
      ,[MinIncomePerMonth]
      ,[AllowPreclosure]
      ,[PreclosureChargesPercent]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [ProductId]
      ,[ProductName]
      ,[ProductCode]
      ,[ProductType]
      ,[Description]
      ,[MaxLoanAmount]
      ,[MinLoanAmount]
      ,[InterestRate]
      ,[MinTenureMonths]
      ,[MaxTenureMonths]
      ,[ProcessingFeePercent]
      ,[MinCreditScore]
      ,[MinIncomePerMonth]
      ,[AllowPreclosure]
      ,[PreclosureChargesPercent]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [pl].[Product] ENABLE TRIGGER [Trg_Product]
GO
/****** Object:  Trigger [pl].[Trg_ReceiptMaster]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [pl].[Trg_ReceiptMaster]
   ON [pl].[ReceiptMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [plaudit].[ReceiptMaster]
	(
       [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[ModuleName]
      ,[Remarks]
      ,[OrderId]
      ,[PaymentId]
      ,[Mode]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[ModuleName]
      ,[Remarks]
      ,[OrderId]
      ,[PaymentId]
      ,[Mode]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  
	INSERT INTO [plaudit].[ReceiptMaster]
	(
       [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[ModuleName]
      ,[Remarks]
      ,[OrderId]
      ,[PaymentId]
      ,[Mode]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[ModuleName]
      ,[Remarks]
      ,[OrderId]
      ,[PaymentId]
      ,[Mode]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [pl].[ReceiptMaster] ENABLE TRIGGER [Trg_ReceiptMaster]
GO
/****** Object:  Trigger [pl].[Trg_Repayment]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[pl].[Trg_Repayment]
   ON [pl].[Repayment]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [plaudit].[Repayment]
	(
	   [RepaymentId]
      ,[AccountId]
      ,[DueDate]
      ,[EMIAmount]
      ,[PrincipalComponent]
      ,[InterestComponent]
      ,[PaymentDate]
      ,[PaidAmount]
      ,[PenaltyAmount]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RepaymentId]
      ,[AccountId]
      ,[DueDate]
      ,[EMIAmount]
      ,[PrincipalComponent]
      ,[InterestComponent]
      ,[PaymentDate]
      ,[PaidAmount]
      ,[PenaltyAmount]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [pl].[Repayment] ENABLE TRIGGER [Trg_Repayment]
GO
/****** Object:  Trigger [pl].[Trg_RoundOffSaving]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [pl].[Trg_RoundOffSaving]
   ON  [pl].[RoundOffSaving]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [plaudit].[RoundOffSaving]
	(
	   [RoundOffSavingId]
      ,[UserId]
      ,[RoundOffAmount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RoundOffSavingId]
      ,[UserId]
      ,[RoundOffAmount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [plaudit].[RoundOffSaving]
	(
	   [RoundOffSavingId]
      ,[UserId]
      ,[RoundOffAmount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RoundOffSavingId]
      ,[UserId]
      ,[RoundOffAmount]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [pl].[RoundOffSaving] ENABLE TRIGGER [Trg_RoundOffSaving]
GO
/****** Object:  Trigger [pl].[Trg_ServiceProvider]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [pl].[Trg_ServiceProvider]
      ON [pl].[ServiceProvider]
      AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO [plaudit].[ServiceProvider]
    (
          [ServiceProviderId]
        , [ProviderCode]
        , [ProviderName]
        , [ProviderType]
        , [BaseUrl]
        , [EnvName]
        , [OtherDetail1]
        , [OtherDetail2]
        , [OtherDetail3]
        , [OtherDetail4]
        , [OtherDetail5]
        , [OtherDetail6]
        , [IsActive]
        , [IsDeleted]
        , [CreatedBy]
        , [CreatedOn]
        , [ModifiedBy]
        , [ModifiedOn]
    )
    SELECT
          [ServiceProviderId]
        , [ProviderCode]
        , [ProviderName]
        , [ProviderType]
        , [BaseUrl]
        , [EnvName]
        , [OtherDetail1]
        , [OtherDetail2]
        , [OtherDetail3]
        , [OtherDetail4]
        , [OtherDetail5]
        , [OtherDetail6]
        , [IsActive]
        , [IsDeleted]
        , [CreatedBy]
        , [CreatedOn]
        , [ModifiedBy]
        , [ModifiedOn]
        FROM inserted;
	    INSERT INTO [plaudit].[ServiceProvider]
    (
          [ServiceProviderId]
        , [ProviderCode]
        , [ProviderName]
        , [ProviderType]
        , [BaseUrl]
        , [EnvName]
        , [OtherDetail1]
        , [OtherDetail2]
        , [OtherDetail3]
        , [OtherDetail4]
        , [OtherDetail5]
        , [OtherDetail6]
        , [IsActive]
        , [IsDeleted]
        , [CreatedBy]
        , [CreatedOn]
        , [ModifiedBy]
        , [ModifiedOn]
    )
    SELECT
          [ServiceProviderId]
        , [ProviderCode]
        , [ProviderName]
        , [ProviderType]
        , [BaseUrl]
        , [EnvName]
        , [OtherDetail1]
        , [OtherDetail2]
        , [OtherDetail3]
        , [OtherDetail4]
        , [OtherDetail5]
        , [OtherDetail6]
        , [IsActive]
        , [IsDeleted]
        , [CreatedBy]
        , [CreatedOn]
        , [ModifiedBy]
        , [ModifiedOn]
    FROM deleted;
END
GO
ALTER TABLE [pl].[ServiceProvider] ENABLE TRIGGER [Trg_ServiceProvider]
GO
/****** Object:  Trigger [pl].[Trg_ServiceRequestLog]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [pl].[Trg_ServiceRequestLog]
	 ON [pl].[ServiceRequestLog]
     AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	 INSERT INTO[plaudit].[ServiceRequestLog]
	 (
	   [RequestLogId]
      ,[ServiceProviderId]
      ,[ServiceName]
      ,[EndpointUrl]
      ,[HttpMethod]
      ,[RequestHeaders]
      ,[RequestBody]
      ,[CorrelationId]
      ,[MasterId]
      ,[MasterType]
      ,[SourceSystem]
      ,[RequestedOn]
      ,[RequestTimeoutMs]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  )
	  SELECT
	    [RequestLogId]
       ,[ServiceProviderId]
       ,[ServiceName]
       ,[EndpointUrl]
       ,[HttpMethod]
       ,[RequestHeaders]
       ,[RequestBody]
       ,[CorrelationId]
       ,[MasterId]
       ,[MasterType]
       ,[SourceSystem]
       ,[RequestedOn]
       ,[RequestTimeoutMs]
       ,[OtherDetail1]
       ,[OtherDetail2]
       ,[OtherDetail3]
       ,[OtherDetail4]
       ,[OtherDetail5]
       ,[OtherDetail6]
       ,[IsActive]
       ,[IsDeleted]
       ,[CreatedBy]
       ,[CreatedOn]
       ,[ModifiedBy]
       ,[ModifiedOn]
	    FROM inserted
	  	INSERT INTO[plaudit].[ServiceRequestLog]
	 (
	   [RequestLogId]
      ,[ServiceProviderId]
      ,[ServiceName]
      ,[EndpointUrl]
      ,[HttpMethod]
      ,[RequestHeaders]
      ,[RequestBody]
      ,[CorrelationId]
      ,[MasterId]
      ,[MasterType]
      ,[SourceSystem]
      ,[RequestedOn]
      ,[RequestTimeoutMs]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  )
	  SELECT
	    [RequestLogId]
       ,[ServiceProviderId]
       ,[ServiceName]
       ,[EndpointUrl]
       ,[HttpMethod]
       ,[RequestHeaders]
       ,[RequestBody]
       ,[CorrelationId]
       ,[MasterId]
       ,[MasterType]
       ,[SourceSystem]
       ,[RequestedOn]
       ,[RequestTimeoutMs]
       ,[OtherDetail1]
       ,[OtherDetail2]
       ,[OtherDetail3]
       ,[OtherDetail4]
       ,[OtherDetail5]
       ,[OtherDetail6]
       ,[IsActive]
       ,[IsDeleted]
       ,[CreatedBy]
       ,[CreatedOn]
       ,[ModifiedBy]
       ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [pl].[ServiceRequestLog] ENABLE TRIGGER [Trg_ServiceRequestLog]
GO
/****** Object:  Trigger [pl].[Trg_ServiceResponseLog]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [pl].[Trg_ServiceResponseLog]
		ON [pl].[ServiceResponseLog]
		 AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	 INSERT INTO [plaudit].[ServiceResponseLog]
	 (
	   [ResponseLogId]
      ,[RequestLogId]
      ,[HttpStatusCode]
      ,[IsSuccess]
      ,[ErrorCode]
      ,[ErrorMessage]
      ,[ResponseHeaders]
      ,[ResponseBody]
      ,[RespondedOn]
      ,[DurationMs]
      ,[RetryAttemptNo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  )
	  SELECT 
	       [ResponseLogId]
          ,[RequestLogId]
          ,[HttpStatusCode]
          ,[IsSuccess]
          ,[ErrorCode]
          ,[ErrorMessage]
          ,[ResponseHeaders]
          ,[ResponseBody]
          ,[RespondedOn]
          ,[DurationMs]
          ,[RetryAttemptNo]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
		FROM inserted
		INSERT INTO [plaudit].[ServiceResponseLog]
		(
	   [ResponseLogId]
      ,[RequestLogId]
      ,[HttpStatusCode]
      ,[IsSuccess]
      ,[ErrorCode]
      ,[ErrorMessage]
      ,[ResponseHeaders]
      ,[ResponseBody]
      ,[RespondedOn]
      ,[DurationMs]
      ,[RetryAttemptNo]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  )
	   SELECT 
	       [ResponseLogId]
          ,[RequestLogId]
          ,[HttpStatusCode]
          ,[IsSuccess]
          ,[ErrorCode]
          ,[ErrorMessage]
          ,[ResponseHeaders]
          ,[ResponseBody]
          ,[RespondedOn]
          ,[DurationMs]
          ,[RetryAttemptNo]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
		  FROM deleted
END
GO
ALTER TABLE [pl].[ServiceResponseLog] ENABLE TRIGGER [Trg_ServiceResponseLog]
GO
/****** Object:  Trigger [pl].[Trg_UserKYC]    Script Date: 11/24/2025 5:55:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [pl].[Trg_UserKYC]
   ON  [pl].[UserKYC]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

   INSERT INTO [plaudit].[UserKYC]
   (
       [KycId]
      ,[UserId]
      ,[CareOf]
      ,[FullAddress]
      ,[DateOfBirth]
      ,[YearOfBirth]
      ,[Email]
      ,[Mobile]
      ,[Gender]
      ,[Name]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Photo]
      ,[ShareCode]
      ,[Country]
      ,[State]
      ,[District]
      ,[SubDistrict]
      ,[VTC]
      ,[Street]
      ,[House]
      ,[Landmark]
      ,[PostOffice]
      ,[Pincode]
      ,[IsAadharVerified]
      ,[IsPanVerified]
	  ,[Relation]
	  ,[MonthlyIncome]
	  ,[OccupationType]
	  ,[EmploymentType]
	  ,[AadhaarXML]
      ,[PanXML]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
   )
   SELECT
       [KycId]
      ,[UserId]
      ,[CareOf]
      ,[FullAddress]
      ,[DateOfBirth]
      ,[YearOfBirth]
      ,[Email]
      ,[Mobile]
      ,[Gender]
      ,[Name]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Photo]
      ,[ShareCode]
      ,[Country]
      ,[State]
      ,[District]
      ,[SubDistrict]
      ,[VTC]
      ,[Street]
      ,[House]
      ,[Landmark]
      ,[PostOffice]
      ,[Pincode]
      ,[IsAadharVerified]
      ,[IsPanVerified]
	  ,[Relation]
	  ,[MonthlyIncome]
	  ,[OccupationType]
	  ,[EmploymentType]
	  ,[AadhaarXML]
      ,[PanXML]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  
   INSERT INTO [plaudit].[UserKYC]
   (
       [KycId]
      ,[UserId]
      ,[CareOf]
      ,[FullAddress]
      ,[DateOfBirth]
      ,[YearOfBirth]
      ,[Email]
      ,[Mobile]
      ,[Gender]
      ,[Name]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Photo]
      ,[ShareCode]
      ,[Country]
      ,[State]
      ,[District]
      ,[SubDistrict]
      ,[VTC]
      ,[Street]
      ,[House]
      ,[Landmark]
      ,[PostOffice]
      ,[Pincode]
      ,[IsAadharVerified]
      ,[IsPanVerified]
	  ,[Relation]
	  ,[MonthlyIncome]
	  ,[OccupationType]
	  ,[EmploymentType]
	  ,[AadhaarXML]
      ,[PanXML]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
   )
   SELECT
       [KycId]
      ,[UserId]
      ,[CareOf]
      ,[FullAddress]
      ,[DateOfBirth]
      ,[YearOfBirth]
      ,[Email]
      ,[Mobile]
      ,[Gender]
      ,[Name]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Photo]
      ,[ShareCode]
      ,[Country]
      ,[State]
      ,[District]
      ,[SubDistrict]
      ,[VTC]
      ,[Street]
      ,[House]
      ,[Landmark]
      ,[PostOffice]
      ,[Pincode]
      ,[IsAadharVerified]
      ,[IsPanVerified]
	  ,[Relation]
	  ,[MonthlyIncome]
	  ,[OccupationType]
	  ,[EmploymentType]
	  ,[AadhaarXML]
      ,[PanXML]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [pl].[UserKYC] ENABLE TRIGGER [Trg_UserKYC]
GO
/****** Object:  Trigger [re].[Trg_AmenitiesMaster]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[re].[Trg_AmenitiesMaster]
   ON  [re].[AmenitiesMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[AmenitiesMaster]
	(
	   [AmenityId]
      ,[AmenityName]
      ,[AmenityCategory]
      ,[IconPath]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AmenityId]
      ,[AmenityName]
      ,[AmenityCategory]
      ,[IconPath]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[AmenitiesMaster]
	(
	   [AmenityId]
      ,[AmenityName]
      ,[AmenityCategory]
      ,[IconPath]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AmenityId]
      ,[AmenityName]
      ,[AmenityCategory]
      ,[IconPath]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[AmenitiesMaster] ENABLE TRIGGER [Trg_AmenitiesMaster]
GO
/****** Object:  Trigger [re].[Trg_BankMaster]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_BankMaster]
   ON [re].[BankMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [reaudit].[BankMaster]
	(
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountHolderName]
      ,[BankName]
      ,[AccountNo]
      ,[AccountType]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[IsDefault]
      ,[IsVerified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountHolderName]
      ,[BankName]
      ,[AccountNo]
      ,[AccountType]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[IsDefault]
      ,[IsVerified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;
	  	INSERT INTO [reaudit].[BankMaster]
	(
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountHolderName]
      ,[BankName]
      ,[AccountNo]
      ,[AccountType]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[IsDefault]
      ,[IsVerified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountHolderName]
      ,[BankName]
      ,[AccountNo]
      ,[AccountType]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[IsDefault]
      ,[IsVerified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END
GO
ALTER TABLE [re].[BankMaster] ENABLE TRIGGER [Trg_BankMaster]
GO
/****** Object:  Trigger [re].[Trg_BusinessMaster]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_BusinessMaster]
   ON  [re].[BusinessMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [reaudit].[BusinessMaster]
	(
	   [BusinessId]
      ,[BusinessName]
      ,[BusinessType]
      ,[ReraNumber]
      ,[PanNumber]
      ,[GstNumber]
      ,[LogoUrl]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[ContactEmail]
      ,[ContactPhone]
      ,[WebsiteUrl]
      ,[IsVerified]
      ,[Latitude]
      ,[Longitude]
	  ,[TotalProjects]
      ,[Experience]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BusinessId]
      ,[BusinessName]
      ,[BusinessType]
      ,[ReraNumber]
      ,[PanNumber]
      ,[GstNumber]
      ,[LogoUrl]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[ContactEmail]
      ,[ContactPhone]
      ,[WebsiteUrl]
      ,[IsVerified]
      ,[Latitude]
      ,[Longitude]
	  ,[TotalProjects]
      ,[Experience]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[BusinessMaster]
	(
	   [BusinessId]
      ,[BusinessName]
      ,[BusinessType]
      ,[ReraNumber]
      ,[PanNumber]
      ,[GstNumber]
      ,[LogoUrl]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[ContactEmail]
      ,[ContactPhone]
      ,[WebsiteUrl]
      ,[IsVerified]
      ,[Latitude]
      ,[Longitude]
	  ,[TotalProjects]
      ,[Experience]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BusinessId]
      ,[BusinessName]
      ,[BusinessType]
      ,[ReraNumber]
      ,[PanNumber]
      ,[GstNumber]
      ,[LogoUrl]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[ContactEmail]
      ,[ContactPhone]
      ,[WebsiteUrl]
      ,[IsVerified]
      ,[Latitude]
      ,[Longitude]
	  ,[TotalProjects]
      ,[Experience]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[BusinessMaster] ENABLE TRIGGER [Trg_BusinessMaster]
GO
/****** Object:  Trigger [re].[Trg_FeedbackMaster]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_FeedbackMaster]
   ON  [re].[FeedbackMaster]
   AFTER INSERT , DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
    INSERT INTO [reaudit].[FeedbackMaster]
	(
	   [FeedbackId]
      ,[BusinessId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[Description]
	  ,[PostedBy]
      ,[PostedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [FeedbackId]
      ,[BusinessId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[Description]
	  ,[PostedBy]
      ,[PostedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[FeedbackMaster]
	(
	   [FeedbackId]
      ,[BusinessId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[Description]
	  ,[PostedBy]
      ,[PostedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [FeedbackId]
      ,[BusinessId]
      ,[MasterId]
      ,[MasterType]
      ,[Rating]
      ,[Description]
	  ,[PostedBy]
      ,[PostedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[FeedbackMaster] ENABLE TRIGGER [Trg_FeedbackMaster]
GO
/****** Object:  Trigger [re].[Trg_OnboardingPreCheck]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_OnboardingPreCheck]
   ON  [re].[OnboardingPreCheck]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[OnboardingPreCheck]
	(
	   [PreCheckId]
      ,[BusinessId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PreCheckId]
      ,[BusinessId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[OnboardingPreCheck]
	(
	   [PreCheckId]
      ,[BusinessId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PreCheckId]
      ,[BusinessId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[OnboardingPreCheck] ENABLE TRIGGER [Trg_OnboardingPreCheck]
GO
/****** Object:  Trigger [re].[Trg_Project]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[re].[Trg_Project]
   ON  [re].[Project]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[Project]
	(
	   [ProjectId]
      ,[BusinessId]
      ,[ProjectName]
      ,[Description]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[LaunchDate]
      ,[PossessionDate]
      ,[TotalUnits]
	  ,[ProjectArea]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ProjectId]
      ,[BusinessId]
      ,[ProjectName]
      ,[Description]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[LaunchDate]
      ,[PossessionDate]
      ,[TotalUnits]
	  ,[ProjectArea]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[Project]
	(
	   [ProjectId]
      ,[BusinessId]
      ,[ProjectName]
      ,[Description]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[LaunchDate]
      ,[PossessionDate]
      ,[TotalUnits]
	  ,[ProjectArea]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ProjectId]
      ,[BusinessId]
      ,[ProjectName]
      ,[Description]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[LaunchDate]
      ,[PossessionDate]
      ,[TotalUnits]
	  ,[ProjectArea]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [re].[Project] ENABLE TRIGGER [Trg_Project]
GO
/****** Object:  Trigger [re].[Trg_ProjectBuilding]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_ProjectBuilding]
   ON  [re].[ProjectBuilding]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [reaudit].[ProjectBuilding]
	(
	   [BuildingId]
      ,[ProjectId]
      ,[BuildingName]
      ,[Floors]
      ,[Units]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BuildingId]
      ,[ProjectId]
      ,[BuildingName]
      ,[Floors]
      ,[Units]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[ProjectBuilding]
	(
	   [BuildingId]
      ,[ProjectId]
      ,[BuildingName]
      ,[Floors]
      ,[Units]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BuildingId]
      ,[ProjectId]
      ,[BuildingName]
      ,[Floors]
      ,[Units]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[ProjectBuilding] ENABLE TRIGGER [Trg_ProjectBuilding]
GO
/****** Object:  Trigger [re].[Trg_ProjectUnitType]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[re].[Trg_ProjectUnitType]
   ON  [re].[ProjectUnitType]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[ProjectUnitType]
	(
	   [UnitTypeId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeName]
      ,[BHK]
      ,[SuperArea]
      ,[CarpetArea]
      ,[Furnishing]
      ,[BasePrice]
      ,[Status]
	  ,[Facing]
      ,[Bathroom]
      ,[Balcony]
      ,[Parking]
	  ,[Type]
      ,[PricePerSqFt]
      ,[View]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [UnitTypeId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeName]
      ,[BHK]
      ,[SuperArea]
      ,[CarpetArea]
      ,[Furnishing]
      ,[BasePrice]
      ,[Status]
	  ,[Facing]
      ,[Bathroom]
      ,[Balcony]
      ,[Parking]
	  ,[Type]
      ,[PricePerSqFt]
      ,[View]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[ProjectUnitType]
	(
	   [UnitTypeId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeName]
      ,[BHK]
      ,[SuperArea]
      ,[CarpetArea]
      ,[Furnishing]
      ,[BasePrice]
      ,[Status]
	  ,[Facing]
      ,[Bathroom]
      ,[Balcony]
      ,[Parking]
	  ,[Type]
      ,[PricePerSqFt]
      ,[View]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [UnitTypeId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeName]
      ,[BHK]
      ,[SuperArea]
      ,[CarpetArea]
      ,[Furnishing]
      ,[BasePrice]
      ,[Status]
	  ,[Facing]
      ,[Bathroom]
      ,[Balcony]
      ,[Parking]
	  ,[Type]
      ,[PricePerSqFt]
      ,[View]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [re].[ProjectUnitType] ENABLE TRIGGER [Trg_ProjectUnitType]
GO
/****** Object:  Trigger [re].[Trg_Property]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_Property]
   ON [re].[Property]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	  INSERT INTO [reaudit].[Property]
	  (
	   [PropertyId]
	  ,[BusinessId] 
      ,[PostedBy]
      ,[Title]
      ,[Description]
      ,[PropertyType]
      ,[ListingType]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[ListedOn]
	  ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  )
	  SELECT 
	   [PropertyId]
	  ,[BusinessId] 
      ,[PostedBy]
      ,[Title]
      ,[Description]
      ,[PropertyType]
      ,[ListingType]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[ListedOn]
	  ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  	  INSERT INTO [reaudit].[Property]
	  (
	   [PropertyId]
	  ,[BusinessId] 
      ,[PostedBy]
      ,[Title]
      ,[Description]
      ,[PropertyType]
      ,[ListingType]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[ListedOn]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  )
	  SELECT 
	   [PropertyId]
	  ,[BusinessId] 
      ,[PostedBy]
      ,[Title]
      ,[Description]
      ,[PropertyType]
      ,[ListingType]
      ,[City]
      ,[State]
      ,[Locality]
      ,[Address]
      ,[Pincode]
      ,[Latitude]
      ,[Longitude]
      ,[Status]
      ,[ListedOn]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[Property] ENABLE TRIGGER [Trg_Property]
GO
/****** Object:  Trigger [re].[Trg_PropertyAmenities]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER[re].[Trg_PropertyAmenities]
   ON  [re].[PropertyAmenities]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [reaudit].[PropertyAmenities]
	(   
       [AmenityId]
	  ,[MasterId]
      ,[MasterType]
      ,[IsAvailable]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [AmenityId]
	  ,[MasterId]
      ,[MasterType]
      ,[IsAvailable]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[PropertyAmenities]
	(
       [AmenityId]
	  ,[MasterId]
      ,[MasterType]
      ,[IsAvailable]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [AmenityId]
	  ,[MasterId]
      ,[MasterType]
      ,[IsAvailable]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[PropertyAmenities] ENABLE TRIGGER [Trg_PropertyAmenities]
GO
/****** Object:  Trigger [re].[Trg_PropertyDetails]    Script Date: 11/24/2025 5:55:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER  [re].[Trg_PropertyDetails]
   ON [re].[PropertyDetails]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

  INSERT INTO [reaudit].[PropertyDetails]
     (
	   [DetailId]
	  ,[PropertyId]
      ,[BHK]
      ,[SuperArea]
      ,[CarpetArea]
      ,[Furnishing]
      ,[FloorNumber]
      ,[TotalFloors]
      ,[AgeOfConstruction]
      ,[Facing]
      ,[OwnershipType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [DetailId]
	  ,[PropertyId]
      ,[BHK]
      ,[SuperArea]
      ,[CarpetArea]
      ,[Furnishing]
      ,[FloorNumber]
      ,[TotalFloors]
      ,[AgeOfConstruction]
      ,[Facing]
      ,[OwnershipType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [re].[PropertyDetails] ENABLE TRIGGER [Trg_PropertyDetails]
GO
/****** Object:  Trigger [re].[Trg_PropertyInquiries]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_PropertyInquiries]
ON [re].[PropertyInquiries]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Insert audit for inserted rows
    INSERT INTO [reaudit].[PropertyInquiries]
    (
        [ContactLogId],
        [MasterId],
        [MasterType],
        [UserId],
        [OwnerUserId],
        [ClickedOn],
        [ContactType],
        [Source],
        [IPAddress],
        [UserAgent],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    )
    SELECT 
        [ContactLogId],
        [MasterId],
        [MasterType],
        [UserId],
        [OwnerUserId],
        [ClickedOn],
        [ContactType],
        [Source],
        [IPAddress],
        [UserAgent],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    FROM inserted;

    -- Insert audit for deleted rows
    INSERT INTO [reaudit].[PropertyInquiries]
    (
        [ContactLogId],
        [MasterId],
        [MasterType],
        [UserId],
        [OwnerUserId],
        [ClickedOn],
        [ContactType],
        [Source],
        [IPAddress],
        [UserAgent],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    )
    SELECT 
        [ContactLogId],
        [MasterId],
        [MasterType],
        [UserId],
        [OwnerUserId],
        [ClickedOn],
        [ContactType],
        [Source],
        [IPAddress],
        [UserAgent],
        [OtherDetail1],
        [OtherDetail2],
        [OtherDetail3],
        [OtherDetail4],
        [OtherDetail5],
        [OtherDetail6],
        [IsActive],
        [IsDeleted],
        [CreatedBy],
        [CreatedOn],
        [ModifiedBy],
        [ModifiedOn]
    FROM deleted;
END;
GO
ALTER TABLE [re].[PropertyInquiries] ENABLE TRIGGER [Trg_PropertyInquiries]
GO
/****** Object:  Trigger [re].[Trg_PropertyListing]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[re].[Trg_PropertyListing]
   ON [re].[PropertyListing]
   AFTER  INSERT,DELETE,UPDATE
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [reaudit].[PropertyListing]
	(
	   [ListingId]
      ,[PropertyId]
      ,[ListingType]
      ,[Price]
      ,[MaintenanceCharge]
      ,[DepositAmount]
      ,[AvailableFrom]
      ,[PostedBy]
      ,[ListingStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [ListingId]
      ,[PropertyId]
      ,[ListingType]
      ,[Price]
      ,[MaintenanceCharge]
      ,[DepositAmount]
      ,[AvailableFrom]
      ,[PostedBy]
      ,[ListingStatus]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [re].[PropertyListing] ENABLE TRIGGER [Trg_PropertyListing]
GO
/****** Object:  Trigger [re].[Trg_PropertyOffer]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [re].[Trg_PropertyOffer]
   ON  [re].[PropertyOffer]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [reaudit].[PropertyOffer]
	(
	   [OfferId]
      ,[ListingId]
      ,[OfferedBy]
      ,[OfferAmount]
      ,[OfferDate]
      ,[Status]
      ,[CounterOfferAmount]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [OfferId]
      ,[ListingId]
      ,[OfferedBy]
      ,[OfferAmount]
      ,[OfferDate]
      ,[Status]
      ,[CounterOfferAmount]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [re].[PropertyOffer] ENABLE TRIGGER [Trg_PropertyOffer]
GO
/****** Object:  Trigger [re].[trg_PropertyVisit]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [re].[trg_PropertyVisit]
   ON  [re].[PropertyVisit]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

     INSERT INTO [reaudit].[PropertyVisit]
	 (
	   [VisitId]
	  ,[MasterId]
	  ,[MasterType]
      ,[VisitorUserId]
      ,[ScheduledDate]
      ,[TimeSlot]
      ,[Status]
      ,[Notes]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AssignedTo]
      ,[RescheduledDate]
      ,[VisitFeedback]
      ,[FollowUpRequired]
      ,[VisitorInterestLevel]
	 )
	 SELECT 
	   [VisitId]
	  ,[MasterId]
	  ,[MasterType]
      ,[VisitorUserId]
      ,[ScheduledDate]
      ,[TimeSlot]
      ,[Status]
      ,[Notes]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AssignedTo]
      ,[RescheduledDate]
      ,[VisitFeedback]
      ,[FollowUpRequired]
      ,[VisitorInterestLevel]
	  FROM inserted

	    INSERT INTO [reaudit].[PropertyVisit]
	 (
	   [VisitId]
	  ,[MasterId]
	  ,[MasterType]
      ,[VisitorUserId]
      ,[ScheduledDate]
      ,[TimeSlot]
      ,[Status]
      ,[Notes]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AssignedTo]
      ,[RescheduledDate]
      ,[VisitFeedback]
      ,[FollowUpRequired]
      ,[VisitorInterestLevel]
	 )
	 SELECT 
	   [VisitId]
	  ,[MasterId]
	  ,[MasterType]
      ,[VisitorUserId]
      ,[ScheduledDate]
      ,[TimeSlot]
      ,[Status]
      ,[Notes]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AssignedTo]
      ,[RescheduledDate]
      ,[VisitFeedback]
      ,[FollowUpRequired]
      ,[VisitorInterestLevel]
	  FROM deleted
END
GO
ALTER TABLE [re].[PropertyVisit] ENABLE TRIGGER [trg_PropertyVisit]
GO
/****** Object:  Trigger [re].[Trg_RealEstateDocMaster]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER[re].[Trg_RealEstateDocMaster]
   ON  [re].[RealEstateDocMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[RealEstateDocMaster]
	(
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)SELECT
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  	INSERT INTO [reaudit].[RealEstateDocMaster]
	(
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)SELECT
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[RealEstateDocMaster] ENABLE TRIGGER [Trg_RealEstateDocMaster]
GO
/****** Object:  Trigger [re].[Trg_RealEstateImgMaster]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_RealEstateImgMaster]
   ON  [re].[RealEstateImgMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	 
	SET NOCOUNT ON;

INSERT INTO [reaudit].[RealEstateImgMaster]
(
       [ImgId]
      ,[MasterType]
      ,[MasterId]
      ,[ImgPath]
      ,[ImgTitle]
      ,[IsDefault]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]

)
SELECT 
       [ImgId]
      ,[MasterType]
      ,[MasterId]
      ,[ImgPath]
      ,[ImgTitle]
      ,[IsDefault]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  INSERT INTO [reaudit].[RealEstateImgMaster]
(
       [ImgId]
      ,[MasterType]
      ,[MasterId]
      ,[ImgPath]
      ,[ImgTitle]
      ,[IsDefault]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]

)
SELECT 
       [ImgId]
      ,[MasterType]
      ,[MasterId]
      ,[ImgPath]
      ,[ImgTitle]
      ,[IsDefault]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[RealEstateImgMaster] ENABLE TRIGGER [Trg_RealEstateImgMaster]
GO
/****** Object:  Trigger [re].[Trg_REBackendDiscount]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_REBackendDiscount]
   ON  [re].[REBackendDiscount]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[REBackendDiscount]
	(
	   [BackendDiscountId]
      ,[BusinessId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[DiscountType]
      ,[DiscountValue]
      ,[CommitmentPeriod]
      ,[SaleCommitment]
      ,[ValidFrom]
      ,[ValidTo]
	  ,[MeasurementType]
	  ,[MarkUp]
      ,[CostPrice]
      ,[FinalPrice]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BackendDiscountId]
      ,[BusinessId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[DiscountType]
      ,[DiscountValue]
      ,[CommitmentPeriod]
      ,[SaleCommitment]
      ,[ValidFrom]
      ,[ValidTo]
	  ,[MeasurementType]
	  ,[MarkUp]
      ,[CostPrice]
      ,[FinalPrice]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[REBackendDiscount]
	(
	   [BackendDiscountId]
      ,[BusinessId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[DiscountType]
      ,[DiscountValue]
      ,[CommitmentPeriod]
      ,[SaleCommitment]
      ,[ValidFrom]
      ,[ValidTo]
	  ,[MeasurementType]
	  ,[MarkUp]
      ,[CostPrice]
      ,[FinalPrice]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BackendDiscountId]
      ,[BusinessId]
      ,[ProjectId]
      ,[BuildingId]
      ,[UnitTypeId]
      ,[DiscountType]
      ,[DiscountValue]
      ,[CommitmentPeriod]
      ,[SaleCommitment]
      ,[ValidFrom]
      ,[ValidTo]
	  ,[MeasurementType]
	  ,[MarkUp]
      ,[CostPrice]
      ,[FinalPrice]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[REBackendDiscount] ENABLE TRIGGER [Trg_REBackendDiscount]
GO
/****** Object:  Trigger [re].[Trg_RentalAgreement]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[re].[Trg_RentalAgreement]
   ON  [re].[RentalAgreement]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[RentalAgreement]
	(
	   [AgreementId]
	  ,[AgreementNo]
      ,[PropertyId]
      ,[TenantUserId]
      ,[OwnerUserId]
      ,[AgreementType]
      ,[LeaseStartDate]
      ,[LeaseEndDate]
      ,[RentAmount]
      ,[DepositAmount]
      ,[NoticePeriodDays]
      ,[AgreementStatus]
      ,[eSigned]
      ,[SignedOn]
	  ,[PoliceVerification]
      ,[DocumentId]
	  ,[AgreementContent]
	  ,[AgreementURL]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AgreementId]
	  ,[AgreementNo]
      ,[PropertyId]
      ,[TenantUserId]
      ,[OwnerUserId]
      ,[AgreementType]
      ,[LeaseStartDate]
      ,[LeaseEndDate]
      ,[RentAmount]
      ,[DepositAmount]
      ,[NoticePeriodDays]
      ,[AgreementStatus]
      ,[eSigned]
      ,[SignedOn]
	  ,[PoliceVerification]
      ,[DocumentId]
	  ,[AgreementContent]
	  ,[AgreementURL]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[RentalAgreement]
	(
	   [AgreementId]
	  ,[AgreementNo]
      ,[PropertyId]
      ,[TenantUserId]
      ,[OwnerUserId]
      ,[AgreementType]
      ,[LeaseStartDate]
      ,[LeaseEndDate]
      ,[RentAmount]
      ,[DepositAmount]
      ,[NoticePeriodDays]
      ,[AgreementStatus]
      ,[eSigned]
      ,[SignedOn]
	  ,[PoliceVerification]
      ,[DocumentId]
	  ,[AgreementContent]
	  ,[AgreementURL]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AgreementId]
	  ,[AgreementNo]
      ,[PropertyId]
      ,[TenantUserId]
      ,[OwnerUserId]
      ,[AgreementType]
      ,[LeaseStartDate]
      ,[LeaseEndDate]
      ,[RentAmount]
      ,[DepositAmount]
      ,[NoticePeriodDays]
      ,[AgreementStatus]
      ,[eSigned]
      ,[SignedOn]
	  ,[PoliceVerification]
      ,[DocumentId]
	  ,[AgreementContent]
	  ,[AgreementURL]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [re].[RentalAgreement] ENABLE TRIGGER [Trg_RentalAgreement]
GO
/****** Object:  Trigger [re].[Trg_ReportedListing]    Script Date: 11/24/2025 5:55:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [re].[Trg_ReportedListing]
   ON [re].[ReportedListing]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [reaudit].[ReportedListing]
	(
	   [ReportId]
      ,[UserId]
	  ,[MasterId]
	  ,[MasterType]
      ,[BusinessId]
      ,[Reason]
      ,[Comment]
      ,[ReportedOn]
      ,[Status]
      ,[Name]
      ,[PhoneNo]
      ,[ReviewedBy]
      ,[ReviewedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [ReportId]
      ,[UserId]
	  ,[MasterId]
	  ,[MasterType]
      ,[BusinessId]
      ,[Reason]
      ,[Comment]
      ,[ReportedOn]
      ,[Status]
      ,[Name]
      ,[PhoneNo]
      ,[ReviewedBy]
      ,[ReviewedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;
	  INSERT INTO [reaudit].[ReportedListing]
	(
	   [ReportId]
      ,[UserId]
	  ,[MasterId]
	  ,[MasterType]
      ,[BusinessId]
      ,[Reason]
      ,[Comment]
      ,[ReportedOn]
      ,[Status]
      ,[Name]
      ,[PhoneNo]
      ,[ReviewedBy]
      ,[ReviewedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [ReportId]
      ,[UserId]
	 , [MasterId]
	  ,[MasterType]
      ,[BusinessId]
      ,[Reason]
      ,[Comment]
      ,[ReportedOn]
      ,[Status]
      ,[Name]
      ,[PhoneNo]
      ,[ReviewedBy]
      ,[ReviewedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END
GO
ALTER TABLE [re].[ReportedListing] ENABLE TRIGGER [Trg_ReportedListing]
GO
/****** Object:  Trigger [re].[Trg_UserAffiliationMapping]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_UserAffiliationMapping]
   ON  [re].[UserAffiliationMapping]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[UserAffiliationMapping]
	(
	   [MappingId]
      ,[UserId]
      ,[BusinessId]
      ,[AffiliationType]
      ,[Designation]
      ,[IsPrimary]
      ,[JoinedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	
	)
	SELECT 
	   [MappingId]
      ,[UserId]
      ,[BusinessId]
      ,[AffiliationType]
      ,[Designation]
      ,[IsPrimary]
      ,[JoinedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [re].[UserAffiliationMapping] ENABLE TRIGGER [Trg_UserAffiliationMapping]
GO
/****** Object:  Trigger [re].[Trg_UserPropertyShortlist]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_UserPropertyShortlist]
   ON [re].[UserPropertyShortlist] 
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [reaudit].[UserPropertyShortlist]
	(
		   [ShortlistId]
		  ,[UserId]
	      ,[MasterId]
		  ,[MasterType]
		  ,[ShortlistedOn]
		  ,[Remarks]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [ShortlistId]
		  ,[UserId]
	      ,[MasterId]
		  ,[MasterType]
		  ,[ShortlistedOn]
		  ,[Remarks]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [reaudit].[UserPropertyShortlist]
	(
		   [ShortlistId]
		  ,[UserId]
	      ,[MasterId]
		  ,[MasterType]
		  ,[ShortlistedOn]
		  ,[Remarks]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	)
	SELECT 
		   [ShortlistId]
		  ,[UserId]
	      ,[MasterId]
		  ,[MasterType]
		  ,[ShortlistedOn]
		  ,[Remarks]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [re].[UserPropertyShortlist] ENABLE TRIGGER [Trg_UserPropertyShortlist]
GO
/****** Object:  Trigger [re].[Trg_UserRoleInProperty]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [re].[Trg_UserRoleInProperty]
   ON  [re].[UserRoleInProperty]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [reaudit].[UserRoleInProperty]
	(
	   [RecordId]
      ,[PropertyId]
      ,[UserId]
      ,[Role]
      ,[IsPrimary]
      ,[FullName]
      ,[ContactNumber]
      ,[Email]
      ,[AgencyName]
      ,[RERARegistrationNo]
      ,[Verified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RecordId]
      ,[PropertyId]
      ,[UserId]
      ,[Role]
      ,[IsPrimary]
      ,[FullName]
      ,[ContactNumber]
      ,[Email]
      ,[AgencyName]
      ,[RERARegistrationNo]
      ,[Verified]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [re].[UserRoleInProperty] ENABLE TRIGGER [Trg_UserRoleInProperty]
GO
/****** Object:  Trigger [sm].[Trg_Announcement]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[sm].[Trg_Announcement] 
   ON  [sm].[Announcement]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[Announcement]
	(
       [AnnouncementId]
      ,[SocietyId]
      ,[Title]
      ,[Message]
      ,[Audience]
      ,[PostedBy]
      ,[PostedAt]
      ,[ValidUntil]
	  ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [AnnouncementId]
      ,[SocietyId]
      ,[Title]
      ,[Message]
      ,[Audience]
      ,[PostedBy]
      ,[PostedAt]
      ,[ValidUntil]
	  ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]

	  FROM inserted;

	  INSERT INTO [smaudit].[Announcement]
	(
       [AnnouncementId]
      ,[SocietyId]
      ,[Title]
      ,[Message]
      ,[Audience]
      ,[PostedBy]
      ,[PostedAt]
      ,[ValidUntil]
	  ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [AnnouncementId]
      ,[SocietyId]
      ,[Title]
      ,[Message]
      ,[Audience]
      ,[PostedBy]
      ,[PostedAt]
      ,[ValidUntil]
	  ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END;
GO
ALTER TABLE [sm].[Announcement] ENABLE TRIGGER [Trg_Announcement]
GO
/****** Object:  Trigger [sm].[Trg_Building]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[sm].[Trg_Building]
   ON  [sm].[Building]
   AFTER INSERT,DELETE,UPDATE
AS
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[Building]
	(
	   [BuildingId]
      ,[SocietyId]
      ,[BuildingName]
      ,[Floors]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BuildingId]
      ,[SocietyId]
      ,[BuildingName]
      ,[Floors]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;
END
GO
ALTER TABLE [sm].[Building] ENABLE TRIGGER [Trg_Building]
GO
/****** Object:  Trigger [sm].[Trg_DiscussionDetail]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_DiscussionDetail]
   ON  [sm].[DiscussionDetail]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[DiscussionDetail]
	(
       [DetailId]
      ,[DiscussionId]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [DetailId]
      ,[DiscussionId]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [smaudit].[DiscussionDetail]
	(
       [DetailId]
      ,[DiscussionId]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [DetailId]
      ,[DiscussionId]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[DiscussionDetail] ENABLE TRIGGER [Trg_DiscussionDetail]
GO
/****** Object:  Trigger [sm].[Trg_DiscussionMaster]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_DiscussionMaster]
   ON [sm].[DiscussionMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[DiscussionMaster]
	(
       [DiscussionId]
      ,[SocietyId]
      ,[BuildingId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [DiscussionId]
      ,[SocietyId]
      ,[BuildingId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [smaudit].[DiscussionMaster]
	(
       [DiscussionId]
      ,[SocietyId]
      ,[BuildingId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [DiscussionId]
      ,[SocietyId]
      ,[BuildingId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedByFlatId]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[DiscussionMaster] ENABLE TRIGGER [Trg_DiscussionMaster]
GO
/****** Object:  Trigger [sm].[Trg_Facility]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_Facility]
   ON  [sm].[Facility]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
     INSERT INTO [smaudit].[Facility]
	 (
       [FacilityId]
      ,[SocietyId]
      ,[FacilityName]
      ,[Description]
      ,[BookingCharges]
      ,[AdvanceNoticeHours]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[ChargeType]
      ,[SlotDurationMinutes]
      ,[IsSlotBased]
      ,[IsApprovalRequired]
      ,[MaxBookingPerDay]
      ,[MaintenanceBlackoutDays]
      ,[MaxUsersPerSlot]
      ,[AllowGuestAccess]
      ,[FacilityImageUrl]
	 )
    SELECT 
	    [FacilityId]
      ,[SocietyId]
      ,[FacilityName]
      ,[Description]
      ,[BookingCharges]
      ,[AdvanceNoticeHours]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[ChargeType]
      ,[SlotDurationMinutes]
      ,[IsSlotBased]
      ,[IsApprovalRequired]
      ,[MaxBookingPerDay]
      ,[MaintenanceBlackoutDays]
      ,[MaxUsersPerSlot]
      ,[AllowGuestAccess]
      ,[FacilityImageUrl]
	  FROM inserted
	  INSERT INTO [smaudit].[Facility]
	 (
       [FacilityId]
      ,[SocietyId]
      ,[FacilityName]
      ,[Description]
      ,[BookingCharges]
      ,[AdvanceNoticeHours]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[ChargeType]
      ,[SlotDurationMinutes]
      ,[IsSlotBased]
      ,[IsApprovalRequired]
      ,[MaxBookingPerDay]
      ,[MaintenanceBlackoutDays]
      ,[MaxUsersPerSlot]
      ,[AllowGuestAccess]
      ,[FacilityImageUrl]
	 )
    SELECT 
	    [FacilityId]
      ,[SocietyId]
      ,[FacilityName]
      ,[Description]
      ,[BookingCharges]
      ,[AdvanceNoticeHours]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[ChargeType]
      ,[SlotDurationMinutes]
      ,[IsSlotBased]
      ,[IsApprovalRequired]
      ,[MaxBookingPerDay]
      ,[MaintenanceBlackoutDays]
      ,[MaxUsersPerSlot]
      ,[AllowGuestAccess]
      ,[FacilityImageUrl]
	  FROM deleted
END
GO
ALTER TABLE [sm].[Facility] ENABLE TRIGGER [Trg_Facility]
GO
/****** Object:  Trigger [sm].[Trg_FacilityBooking]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_FacilityBooking]
   ON[sm].[FacilityBooking]  
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [smaudit].[FacilityBooking]
	(
	   [BookingId]
      ,[FacilityId]
      ,[FlatId]
	  ,[SocietyId]
      ,[BookingDate]
      ,[TimeSlot]
      ,[Status]
      ,[AmountPaid]
      ,[PaymentRefNo]
      ,[BookedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BookingId]
      ,[FacilityId]
      ,[FlatId]
	  ,[SocietyId]
      ,[BookingDate]
      ,[TimeSlot]
      ,[Status]
      ,[AmountPaid]
      ,[PaymentRefNo]
      ,[BookedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END;
GO
ALTER TABLE [sm].[FacilityBooking] ENABLE TRIGGER [Trg_FacilityBooking]
GO
/****** Object:  Trigger [sm].[Trg_Flat]    Script Date: 11/24/2025 5:55:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[sm].[Trg_Flat] 
   ON  [sm].[Flat]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[Flat]
	(
       [FlatId]
      ,[BuildingId]
      ,[Wing]
      ,[FlatNumber]
      ,[Floor]
      ,[Status]
      ,[OccupantType]
      ,[OwnerId]
      ,[PossessionDate]
      ,[ParkingSlotNumber]
      ,[IntercomNumber]
      ,[MaintenanceStatus]
      ,[FlatTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [FlatId]
      ,[BuildingId]
      ,[Wing]
      ,[FlatNumber]
      ,[Floor]
      ,[Status]
      ,[OccupantType]
      ,[OwnerId]
      ,[PossessionDate]
      ,[ParkingSlotNumber]
      ,[IntercomNumber]
      ,[MaintenanceStatus]
      ,[FlatTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]

	  FROM inserted;

	  INSERT INTO [smaudit].[Flat]
	(
       [FlatId]
      ,[BuildingId]
      ,[Wing]
      ,[FlatNumber]
      ,[Floor]
      ,[Status]
      ,[OccupantType]
      ,[OwnerId]
      ,[PossessionDate]
      ,[ParkingSlotNumber]
      ,[IntercomNumber]
      ,[MaintenanceStatus]
      ,[FlatTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [FlatId]
      ,[BuildingId]
      ,[Wing]
      ,[FlatNumber]
      ,[Floor]
      ,[Status]
      ,[OccupantType]
      ,[OwnerId]
      ,[PossessionDate]
      ,[ParkingSlotNumber]
      ,[IntercomNumber]
      ,[MaintenanceStatus]
      ,[FlatTypeId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]

	  FROM deleted;
END
GO
ALTER TABLE [sm].[Flat] ENABLE TRIGGER [Trg_Flat]
GO
/****** Object:  Trigger [sm].[Trg_FlatFacility]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_FlatFacility]
   ON [sm].[FlatFacility]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [smaudit].[FlatFacility]
	(
	   [FacilityId]
      ,[FlatId]
      ,[DetailId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [FacilityId]
      ,[FlatId]
      ,[DetailId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  INSERT INTO [smaudit].[FlatFacility]
	(
	   [FacilityId]
      ,[FlatId]
      ,[DetailId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [FacilityId]
      ,[FlatId]
      ,[DetailId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[FlatFacility] ENABLE TRIGGER [Trg_FlatFacility]
GO
/****** Object:  Trigger [sm].[Trg_FlatMaintenance]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[sm].[Trg_FlatMaintenance] 
   ON  [sm].[FlatMaintenance]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [smaudit].[FlatMaintenance]
	(
       [FMId]
      ,[FlatId]
      ,[FlatTypeId]
      ,[SocietyId]
      ,[TotalMaintenance]
	  ,[BillingMonth] 
	  ,[DueDate]
	  ,[PaidAmount]
	  ,[PaymentDate]
	  ,[PaymentStatus]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [FMId]
      ,[FlatId]
      ,[FlatTypeId]
      ,[SocietyId]
      ,[TotalMaintenance]
	  ,[BillingMonth] 
	  ,[DueDate]
	  ,[PaidAmount]
	  ,[PaymentDate]
	  ,[PaymentStatus]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;
	  INSERT INTO [smaudit].[FlatMaintenance]
	(
       [FMId]
      ,[FlatId]
      ,[FlatTypeId]
      ,[SocietyId]
      ,[TotalMaintenance]
	  ,[BillingMonth] 
	  ,[DueDate]
	  ,[PaidAmount]
	  ,[PaymentDate]
	  ,[PaymentStatus]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [FMId]
      ,[FlatId]
      ,[FlatTypeId]
      ,[SocietyId]
      ,[TotalMaintenance]
	  ,[BillingMonth] 
	  ,[DueDate]
	  ,[PaidAmount]
	  ,[PaymentDate]
	  ,[PaymentStatus]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END;
GO
ALTER TABLE [sm].[FlatMaintenance] ENABLE TRIGGER [Trg_FlatMaintenance]
GO
/****** Object:  Trigger [sm].[Trg_FlatMaintenanceDetail]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[sm].[Trg_FlatMaintenanceDetail] 
   ON  [sm].[FlatMaintenanceDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [smaudit].[FlatMaintenanceDetail]
	(
       [DetailId]
      ,[FMId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
	  ,[ChargeAmt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [DetailId]
      ,[FMId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
	  ,[ChargeAmt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;
	  INSERT INTO [smaudit].[FlatMaintenanceDetail]
	(
       [DetailId]
      ,[FMId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
	  ,[ChargeAmt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
       [DetailId]
      ,[FMId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
	  ,[ChargeAmt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END;
GO
ALTER TABLE [sm].[FlatMaintenanceDetail] ENABLE TRIGGER [Trg_FlatMaintenanceDetail]
GO
/****** Object:  Trigger [sm].[Trg_FlatMember]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_FlatMember]
   ON  [sm].[FlatMember]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[FlatMember]
	(
	   [MemberId]
      ,[FlatId]
      ,[UserId]
      ,[FullName]
      ,[MobileNumber]
      ,[Email]
      ,[Role]
      ,[IsPrimaryOwner]
      ,[MoveInDate]
      ,[MoveOutDate]
      ,[KYCStatus]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)

	SELECT 
	   [MemberId]
      ,[FlatId]
      ,[UserId]
      ,[FullName]
      ,[MobileNumber]
      ,[Email]
      ,[Role]
      ,[IsPrimaryOwner]
      ,[MoveInDate]
      ,[MoveOutDate]
      ,[KYCStatus]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [sm].[FlatMember] ENABLE TRIGGER [Trg_FlatMember]
GO
/****** Object:  Trigger [sm].[Trg_FlatType]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_FlatType]
   ON  [sm].[FlatType]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[FlatType]
	(
		 [FlatTypeId]
		,[SocietyId]
		,[TypeName]
		,[TypeDescription]
		,[BHK]
		,[Status]
		,[SuperArea]
		,[CarpetArea]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	)
	SELECT 
		 [FlatTypeId]
		,[SocietyId]
		,[TypeName]
		,[TypeDescription]
		,[BHK]
		,[Status]
		,[SuperArea]
		,[CarpetArea]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	FROM inserted
END
GO
ALTER TABLE [sm].[FlatType] ENABLE TRIGGER [Trg_FlatType]
GO
/****** Object:  Trigger [sm].[Trg_MaintenanceChargeDetail]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [sm].[Trg_MaintenanceChargeDetail]
   ON [sm].[MaintenanceChargeDetail]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[MaintenanceChargeDetail]
	(
	   [DetailId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
      ,[ChargeAmt]
	  ,[ChargeType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
      ,[ChargeAmt]
	  ,[ChargeType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  	INSERT INTO [smaudit].[MaintenanceChargeDetail]
	(
	   [DetailId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
      ,[ChargeAmt]
	  ,[ChargeType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ChargeId]
      ,[ChargeName]
      ,[ChargeDescription]
      ,[ChargeAmt]
	  ,[ChargeType]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[MaintenanceChargeDetail] ENABLE TRIGGER [Trg_MaintenanceChargeDetail]
GO
/****** Object:  Trigger [sm].[Trg_MaintenanceChargeMaster]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[sm].[Trg_MaintenanceChargeMaster]
   ON  [sm].[MaintenanceChargeMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [smaudit].[MaintenanceChargeMaster]
	(
	   [ChargeId]
      ,[FlatTypeId]
      ,[SocietyId]
      ,[MaintenanceCharges]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ChargeId]
      ,[FlatTypeId]
      ,[SocietyId]
      ,[MaintenanceCharges]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [sm].[MaintenanceChargeMaster] ENABLE TRIGGER [Trg_MaintenanceChargeMaster]
GO
/****** Object:  Trigger [sm].[Trg_MaintenancePayment]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER[sm].[Trg_MaintenancePayment]
   ON  [sm].[MaintenancePayment]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [smaudit].[MaintenancePayment]
	(
		 [PaymentId]
		,[ChargeId]
		,[AmountPaid]
		,[PaymentDate]
		,[ModeOfPayment]
		,[TransactionRefNo]
		,[Status]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[ProductType]
		)
		SELECT        
		 [PaymentId]
		,[ChargeId]
		,[AmountPaid]
		,[PaymentDate]
		,[ModeOfPayment]
		,[TransactionRefNo]
		,[Status]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[ProductType]
		FROM inserted
			INSERT INTO [smaudit].[MaintenancePayment]
	(
		 [PaymentId]
		,[ChargeId]
		,[AmountPaid]
		,[PaymentDate]
		,[ModeOfPayment]
		,[TransactionRefNo]
		,[Status]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[ProductType]
		)
		SELECT        
		 [PaymentId]
		,[ChargeId]
		,[AmountPaid]
		,[PaymentDate]
		,[ModeOfPayment]
		,[TransactionRefNo]
		,[Status]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		,[ProductType]
		FROM deleted
END

GO
ALTER TABLE [sm].[MaintenancePayment] ENABLE TRIGGER [Trg_MaintenancePayment]
GO
/****** Object:  Trigger [sm].[Trg_Meeting]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_Meeting]
   ON  [sm].[Meeting]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [smaudit].[Meeting]
	(
	   [MeetingId]
      ,[SocietyId]
      ,[Title]
      ,[Agenda]
      ,[MeetingDate]
      ,[Mode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [MeetingId]
      ,[SocietyId]
      ,[Title]
      ,[Agenda]
      ,[MeetingDate]
      ,[Mode]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [sm].[Meeting] ENABLE TRIGGER [Trg_Meeting]
GO
/****** Object:  Trigger [sm].[Trg_MeetingVote]    Script Date: 11/24/2025 5:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_MeetingVote]
   ON  [sm].[MeetingVote]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [smaudit].[MeetingVote]
	(
	   [VoteId]
      ,[MeetingId]
      ,[FlatId]
      ,[VoteOption]
      ,[VotedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [VoteId]
      ,[MeetingId]
      ,[FlatId]
      ,[VoteOption]
      ,[VotedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [sm].[MeetingVote] ENABLE TRIGGER [Trg_MeetingVote]
GO
/****** Object:  Trigger [sm].[Trg_Parking]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [sm].[Trg_Parking]
   ON  [sm].[Parking]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	 INSERT INTO [smaudit].[Parking]
	 (
	   [ParkingId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[ParkingNumber]
      ,[ParkingType]
      ,[Level]
      ,[VehicleType]
      ,[IsReserved]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[OwnershipType]
	 )
	 SELECT 
	   [ParkingId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[ParkingNumber]
      ,[ParkingType]
      ,[Level]
      ,[VehicleType]
      ,[IsReserved]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[OwnershipType]

	  FROM inserted
	  INSERT INTO [smaudit].[Parking]
	 (
	   [ParkingId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[ParkingNumber]
      ,[ParkingType]
      ,[Level]
      ,[VehicleType]
      ,[IsReserved]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[OwnershipType]

	 )
	 SELECT 
	   [ParkingId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[ParkingNumber]
      ,[ParkingType]
      ,[Level]
      ,[VehicleType]
      ,[IsReserved]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[OwnershipType]
	  FROM deleted
END
GO
ALTER TABLE [sm].[Parking] ENABLE TRIGGER [Trg_Parking]
GO
/****** Object:  Trigger [sm].[Trg_ReceiptDetail]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_ReceiptDetail]
   ON  [sm].[ReceiptDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[ReceiptDetail]
	(
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[ReceiptDetail]
	(
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[ReceiptDetail] ENABLE TRIGGER [Trg_ReceiptDetail]
GO
/****** Object:  Trigger [sm].[Trg_ReceiptMaster]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_ReceiptMaster]
   ON  [sm].[ReceiptMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[ReceiptMaster]
	(
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[ReceiptMaster]
	(
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[ReceiptMaster] ENABLE TRIGGER [Trg_ReceiptMaster]
GO
/****** Object:  Trigger [sm].[Trg_Security]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [sm].[Trg_Security]
   ON [sm].[Security]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [smaudit].[Security]
	(
	   [EntryId]
      ,[SocietyId]
      ,[FlatId]
      ,[BuildingId]
      ,[UserId]
      ,[VisitorName]
      ,[VisitorMobileNo]
      ,[VehicleNumber]
      ,[EntryType]
      ,[OTPCode]
      ,[QRCode]
      ,[Purpose]
      ,[EntryTime]
      ,[ExitTime]
      ,[Remarks]
      ,[RequestedBy]
      ,[ApprovalStatus]
      ,[ApprovalBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [EntryId]
      ,[SocietyId]
      ,[FlatId]
      ,[BuildingId]
      ,[UserId]
      ,[VisitorName]
      ,[VisitorMobileNo]
      ,[VehicleNumber]
      ,[EntryType]
      ,[OTPCode]
      ,[QRCode]
      ,[Purpose]
      ,[EntryTime]
      ,[ExitTime]
      ,[Remarks]
      ,[RequestedBy]
      ,[ApprovalStatus]
      ,[ApprovalBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted

	  INSERT INTO [smaudit].[Security]
	(
	   [EntryId]
      ,[SocietyId]
      ,[FlatId]
      ,[BuildingId]
      ,[UserId]
      ,[VisitorName]
      ,[VisitorMobileNo]
      ,[VehicleNumber]
      ,[EntryType]
      ,[OTPCode]
      ,[QRCode]
      ,[Purpose]
      ,[EntryTime]
      ,[ExitTime]
      ,[Remarks]
      ,[RequestedBy]
      ,[ApprovalStatus]
      ,[ApprovalBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [EntryId]
      ,[SocietyId]
      ,[FlatId]
      ,[BuildingId]
      ,[UserId]
      ,[VisitorName]
      ,[VisitorMobileNo]
      ,[VehicleNumber]
      ,[EntryType]
      ,[OTPCode]
      ,[QRCode]
      ,[Purpose]
      ,[EntryTime]
      ,[ExitTime]
      ,[Remarks]
      ,[RequestedBy]
      ,[ApprovalStatus]
      ,[ApprovalBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[Security] ENABLE TRIGGER [Trg_Security]
GO
/****** Object:  Trigger [sm].[Trg_ServiceRequest]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_ServiceRequest]
   ON  [sm].[ServiceRequest]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[ServiceRequest]
	(
		 [RequestId]
		,[FlatId]
		,[Category]
		,[Subject]
		,[Description]
		,[Status]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	)
	SELECT 
		 [RequestId]
		,[FlatId]
		,[Category]
		,[Subject]
		,[Description]
		,[Status]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	FROM inserted
END
GO
ALTER TABLE [sm].[ServiceRequest] ENABLE TRIGGER [Trg_ServiceRequest]
GO
/****** Object:  Trigger [sm].[Trg_Society]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [sm].[Trg_Society]
   ON  [sm].[Society]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [smaudit].[Society]
	(
	   [SocietyId]
      ,[SocietyName]
      ,[Address]
      ,[City]
      ,[State]
      ,[ZipCode]
      ,[ContactEmail]
      ,[ContactPhone]
	  ,[OnBoardingStatus]
	  ,[SocietyDescription]
	  ,[RegistrationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [SocietyId]
      ,[SocietyName]
      ,[Address]
      ,[City]
      ,[State]
      ,[ZipCode]
      ,[ContactEmail]
      ,[ContactPhone]
	  ,[OnBoardingStatus]
	  ,[SocietyDescription]
	  ,[RegistrationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [smaudit].[Society]
	(
	   [SocietyId]
      ,[SocietyName]
      ,[Address]
      ,[City]
      ,[State]
      ,[ZipCode]
      ,[ContactEmail]
      ,[ContactPhone]
	  ,[OnBoardingStatus]
	  ,[SocietyDescription]
	  ,[RegistrationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [SocietyId]
      ,[SocietyName]
      ,[Address]
      ,[City]
      ,[State]
      ,[ZipCode]
      ,[ContactEmail]
      ,[ContactPhone]
	  ,[OnBoardingStatus]
	  ,[SocietyDescription]
	  ,[RegistrationNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[Society] ENABLE TRIGGER [Trg_Society]
GO
/****** Object:  Trigger [sm].[Trg_SocietyDocMaster]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [sm].[Trg_SocietyDocMaster]
   ON  [sm].[SocietyDocMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[SocietyDocMaster]
	(
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	
	)
	SELECT 
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;

	  INSERT INTO [smaudit].[SocietyDocMaster]
	(
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	
	)
	SELECT 
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END
GO
ALTER TABLE [sm].[SocietyDocMaster] ENABLE TRIGGER [Trg_SocietyDocMaster]
GO
/****** Object:  Trigger [sm].[Trg_SocietyImgMaster]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [sm].[Trg_SocietyImgMaster]
   ON [sm].[SocietyImgMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN 
		SET NOCOUNT ON;

		INSERT INTO [smaudit].[SocietyImgMaster]
		(
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted;

			INSERT INTO [smaudit].[SocietyImgMaster]
		(
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM deleted;
END
GO
ALTER TABLE [sm].[SocietyImgMaster] ENABLE TRIGGER [Trg_SocietyImgMaster]
GO
/****** Object:  Trigger [sm].[Trg_UserAffiliationMapping]    Script Date: 11/24/2025 5:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_UserAffiliationMapping]
   ON [sm].[UserAffiliationMapping] 
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [smaudit].[UserAffiliationMapping]
	(
	    [MappingId]
      ,[UserId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[AffiliationType]
      ,[Designation]
      ,[IsPrimary]
      ,[JoinedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [MappingId]
      ,[UserId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[AffiliationType]
      ,[Designation]
      ,[IsPrimary]
      ,[JoinedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  	INSERT INTO [smaudit].[UserAffiliationMapping]
	(
	    [MappingId]
      ,[UserId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[AffiliationType]
      ,[Designation]
      ,[IsPrimary]
      ,[JoinedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [MappingId]
      ,[UserId]
      ,[SocietyId]
      ,[BuildingId]
      ,[FlatId]
      ,[AffiliationType]
      ,[Designation]
      ,[IsPrimary]
      ,[JoinedOn]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [sm].[UserAffiliationMapping] ENABLE TRIGGER [Trg_UserAffiliationMapping]
GO
/****** Object:  Trigger [sm].[Trg_VaultDocument]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [sm].[Trg_VaultDocument]
   ON [sm].[VaultDocument]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [smaudit].[VaultDocument]
	(
	   [VaultDocId]
      ,[SocietyId]
      ,[Title]
      ,[FilePath]
      ,[Description]
      ,[Category]
      ,[UploadedBy]
      ,[UploadDate]
      ,[IsConfidential]
      ,[AccessLevel]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [VaultDocId]
      ,[SocietyId]
      ,[Title]
      ,[FilePath]
      ,[Description]
      ,[Category]
      ,[UploadedBy]
      ,[UploadDate]
      ,[IsConfidential]
      ,[AccessLevel]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [sm].[VaultDocument] ENABLE TRIGGER [Trg_VaultDocument]
GO
/****** Object:  Trigger [sm].[Trg_VisitorLog]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[sm].[Trg_VisitorLog]
   ON  [sm].[VisitorLog]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [smaudit].[VisitorLog]
	(
	   [VisitorLogId]
      ,[FlatId]
      ,[VisitorName]
      ,[VisitorMobile]
      ,[VisitPurpose]
      ,[CheckIn]
      ,[CheckOut]
      ,[ApprovedBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	
	)
   SELECT 
       [VisitorLogId]
      ,[FlatId]
      ,[VisitorName]
      ,[VisitorMobile]
      ,[VisitPurpose]
      ,[CheckIn]
      ,[CheckOut]
      ,[ApprovedBy]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
    FROM inserted
END
GO
ALTER TABLE [sm].[VisitorLog] ENABLE TRIGGER [Trg_VisitorLog]
GO
/****** Object:  Trigger [sm].[Trg_VotingDetail]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [sm].[Trg_VotingDetail]
   ON [sm].[VotingDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN 
		SET NOCOUNT ON;

		INSERT INTO [smaudit].[VotingDetail]
		(
			 [DetailId]
            ,[VotingId]
            ,[UserId]
			,[FlatId]
            ,[OptionSelected]
            ,[Remarks]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
	       	 [DetailId]
            ,[VotingId]
            ,[UserId]
			,[FlatId]
            ,[OptionSelected]
            ,[Remarks]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted;

			INSERT INTO [smaudit].[VotingDetail]
		(
			 [DetailId]
            ,[VotingId]
            ,[UserId]
			,[FlatId]
            ,[OptionSelected]
            ,[Remarks]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [DetailId]
            ,[VotingId]
            ,[UserId]
			,[FlatId]
            ,[OptionSelected]
            ,[Remarks]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM deleted;
END
GO
ALTER TABLE [sm].[VotingDetail] ENABLE TRIGGER [Trg_VotingDetail]
GO
/****** Object:  Trigger [sm].[Trg_VotingMaster]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [sm].[Trg_VotingMaster]
   ON [sm].[VotingMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN 
		SET NOCOUNT ON;

		INSERT INTO [smaudit].[VotingMaster]
		(
			 [VotingId]
            ,[SocietyId]
            ,[VotingDate]
            ,[MasterCode]
            ,[Question]
            ,[Options]
            ,[IsAnonymous]
            ,[VotingDescription]
            ,[RequestedBy]
            ,[StartDate]
            ,[EndDate]
            ,[Status]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [VotingId]
            ,[SocietyId]
            ,[VotingDate]
            ,[MasterCode]
            ,[Question]
            ,[Options]
            ,[IsAnonymous]
            ,[VotingDescription]
            ,[RequestedBy]
            ,[StartDate]
            ,[EndDate]
            ,[Status]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted;

			INSERT INTO [smaudit].[VotingMaster]
		(
			 [VotingId]
            ,[SocietyId]
            ,[VotingDate]
            ,[MasterCode]
            ,[Question]
            ,[Options]
            ,[IsAnonymous]
            ,[VotingDescription]
            ,[RequestedBy]
            ,[StartDate]
            ,[EndDate]
            ,[Status]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [VotingId]
            ,[SocietyId]
            ,[VotingDate]
            ,[MasterCode]
            ,[Question]
            ,[Options]
            ,[IsAnonymous]
            ,[VotingDescription]
            ,[RequestedBy]
            ,[StartDate]
            ,[EndDate]
            ,[Status]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM deleted;
END
GO
ALTER TABLE [sm].[VotingMaster] ENABLE TRIGGER [Trg_VotingMaster]
GO
/****** Object:  Trigger [spe].[trg_Activity]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[trg_Activity]
   ON  [spe].[Activity]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [speaudit].[Activity]
	(
	   [ActivityId]
      ,[MasterId]
      ,[MasterType]
      ,[Message]
      ,[MessageType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ActivityId]
      ,[MasterId]
      ,[MasterType]
      ,[Message]
      ,[MessageType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[Activity]
	(
	   [ActivityId]
      ,[MasterId]
      ,[MasterType]
      ,[Message]
      ,[MessageType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ActivityId]
      ,[MasterId]
      ,[MasterType]
      ,[Message]
      ,[MessageType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [spe].[Activity] ENABLE TRIGGER [trg_Activity]
GO
/****** Object:  Trigger [spe].[trg_Announcement]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[trg_Announcement]
   ON  [spe].[Announcement]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [speaudit].[Announcement]
	(
	   [AnnouncementId]
      ,[SchoolId]
      ,[Title]
      ,[MasterId]
      ,[Message]
      ,[Audience]
      ,[PostedAt]
      ,[ValidUntil]
      ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[MasterType]
	)
	SELECT 
	   [AnnouncementId]
      ,[SchoolId]
      ,[Title]
      ,[MasterId]
      ,[Message]
      ,[Audience]
      ,[PostedAt]
      ,[ValidUntil]
      ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[MasterType]
	  FROM inserted
	  INSERT INTO [speaudit].[Announcement]
	(
	   [AnnouncementId]
      ,[SchoolId]
      ,[Title]
      ,[MasterId]
      ,[Message]
      ,[Audience]
      ,[PostedAt]
      ,[ValidUntil]
      ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[MasterType]
	)
	SELECT 
	   [AnnouncementId]
      ,[SchoolId]
      ,[Title]
      ,[MasterId]
      ,[Message]
      ,[Audience]
      ,[PostedAt]
      ,[ValidUntil]
      ,[Languages]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  ,[MasterType]
	  FROM deleted
END
GO
ALTER TABLE [spe].[Announcement] ENABLE TRIGGER [trg_Announcement]
GO
/****** Object:  Trigger [spe].[Trg_AssignmentMaster]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_AssignmentMaster]
ON [spe].[AssignmentMaster]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[AssignmentMaster]
        (
           [AssignmentId],
           [SchoolId],
           [ClassId],
           [SectionId],
           [SubjectId],
           [TeacherId],
           [Title],
           [Description],
           [AssignedDate],
           [DueDate],
           [SubmissionType],
           [TotalMarks],
		   [FileUrl],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        )
        SELECT 
           [AssignmentId],
           [SchoolId],
           [ClassId],
           [SectionId],
           [SubjectId],
           [TeacherId],
           [Title],
           [Description],
           [AssignedDate],
           [DueDate],
           [SubmissionType],
           [TotalMarks],
		   [FileUrl],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[AssignmentMaster]
        (
           [AssignmentId],
           [SchoolId],
           [ClassId],
           [SectionId],
           [SubjectId],
           [TeacherId],
           [Title],
           [Description],
           [AssignedDate],
           [DueDate],
           [SubmissionType],
           [TotalMarks],
		   [FileUrl],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        )
        SELECT 
           [AssignmentId],
           [SchoolId],
           [ClassId],
           [SectionId],
           [SubjectId],
           [TeacherId],
           [Title],
           [Description],
           [AssignedDate],
           [DueDate],
           [SubmissionType],
           [TotalMarks],
		   [FileUrl],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        FROM deleted;
    END;
GO
ALTER TABLE [spe].[AssignmentMaster] ENABLE TRIGGER [Trg_AssignmentMaster]
GO
/****** Object:  Trigger [spe].[Trg_ClassMaster]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_ClassMaster]
ON [spe].[ClassMaster]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[ClassMaster]
        (
           [ClassId],
           [SchoolId],
           [ClassName],
           [Description],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        )
        SELECT 
           [ClassId],
           [SchoolId],
           [ClassName],
           [Description],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[ClassMaster]
        (
           [ClassId],
           [SchoolId],
           [ClassName],
           [Description],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        )
        SELECT 
           [ClassId],
           [SchoolId],
           [ClassName],
           [Description],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        FROM deleted;
    END
GO
ALTER TABLE [spe].[ClassMaster] ENABLE TRIGGER [Trg_ClassMaster]
GO
/****** Object:  Trigger [spe].[Trg_CurriculumMaster]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_CurriculumMaster]
ON [spe].[CurriculumMaster]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[CurriculumMaster]
        (
		   [CurriculumId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[CurriculumName]
		  ,[Description]
		  ,[StartYear]
		  ,[EndYear]
		  ,[AcademicYear]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        )
        SELECT 
		   [CurriculumId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[CurriculumName]
		  ,[Description]
		  ,[StartYear]
		  ,[EndYear]
		  ,[AcademicYear]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        FROM inserted;
        INSERT INTO [speaudit].[CurriculumMaster]
        (
		   [CurriculumId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[CurriculumName]
		  ,[Description]
		  ,[StartYear]
		  ,[EndYear]
		  ,[AcademicYear]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        )
        SELECT 
		   [CurriculumId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[CurriculumName]
		  ,[Description]
		  ,[StartYear]
		  ,[EndYear]
		  ,[AcademicYear]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        FROM deleted;
    END
GO
ALTER TABLE [spe].[CurriculumMaster] ENABLE TRIGGER [Trg_CurriculumMaster]
GO
/****** Object:  Trigger [spe].[Trg_CurriculumSubjectMapping]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_CurriculumSubjectMapping]
ON [spe].[CurriculumSubjectMapping]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[CurriculumSubjectMapping]
        (
       [MappingId]
      ,[CurriculumId]
      ,[SubjectId]
      ,[ClassId]
      ,[SequenceOrder]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        )
        SELECT 
       [MappingId]
      ,[CurriculumId]
      ,[SubjectId]
      ,[ClassId]
      ,[SequenceOrder]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[CurriculumSubjectMapping]
        (
       [MappingId]
      ,[CurriculumId]
      ,[SubjectId]
      ,[ClassId]
      ,[SequenceOrder]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        )
        SELECT 
       [MappingId]
      ,[CurriculumId]
      ,[SubjectId]
      ,[ClassId]
      ,[SequenceOrder]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        FROM deleted;
    END
GO
ALTER TABLE [spe].[CurriculumSubjectMapping] ENABLE TRIGGER [Trg_CurriculumSubjectMapping]
GO
/****** Object:  Trigger [spe].[Trg_DiscussionDetail]    Script Date: 11/24/2025 5:55:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_DiscussionDetail]
   ON  [spe].[DiscussionDetail]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[DiscussionDetail]
	(
	   [DetailId]
      ,[DiscussionId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[DiscussionId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[DiscussionDetail]
	(
	   [DetailId]
      ,[DiscussionId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[DiscussionId]
      ,[PostedBy]
      ,[PostedAt]
      ,[DiscDesc]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[DiscussionDetail] ENABLE TRIGGER [Trg_DiscussionDetail]
GO
/****** Object:  Trigger [spe].[Trg_DiscussionMaster]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_DiscussionMaster]
   ON [spe].[DiscussionMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[DiscussionMaster]
	(
	   [DiscussionId]
      ,[MasterType]
      ,[MasterId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DiscussionId]
      ,[MasterType]
      ,[MasterId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[DiscussionMaster]
	(
	   [DiscussionId]
      ,[MasterType]
      ,[MasterId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DiscussionId]
      ,[MasterType]
      ,[MasterId]
      ,[DiscTitle]
      ,[DiscDesc]
      ,[PostedBy]
      ,[PostedAt]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[DiscussionMaster] ENABLE TRIGGER [Trg_DiscussionMaster]
GO
/****** Object:  Trigger [spe].[Trg_EventMaster]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_EventMaster]
ON [spe].[EventMaster]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[EventMaster]
        (
           [EventId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[SectionId]
		  ,[Title]
		  ,[EventCategory]
		  ,[EventDate]
		  ,[EventType]
		  ,[Description]
		  ,[IsPublished]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        )
        SELECT 
            [EventId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[SectionId]
		  ,[Title]
		  ,[EventCategory]
		  ,[EventDate]
		  ,[EventType]
		  ,[Description]
		  ,[IsPublished]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[EventMaster]
        (
           [EventId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[SectionId]
		  ,[Title]
		  ,[EventCategory]
		  ,[EventDate]
		  ,[EventType]
		  ,[Description]
		  ,[IsPublished]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        )
        SELECT 
            [EventId]
		  ,[SchoolId]
		  ,[ClassId]
		  ,[SectionId]
		  ,[Title]
		  ,[EventCategory]
		  ,[EventDate]
		  ,[EventType]
		  ,[Description]
		  ,[IsPublished]
		  ,[OtherDetail1]
		  ,[OtherDetail2]
		  ,[OtherDetail3]
		  ,[OtherDetail4]
		  ,[OtherDetail5]
		  ,[OtherDetail6]
		  ,[IsActive]
		  ,[IsDeleted]
		  ,[CreatedBy]
		  ,[CreatedOn]
		  ,[ModifiedBy]
		  ,[ModifiedOn]
        FROM deleted;
END;
GO
ALTER TABLE [spe].[EventMaster] ENABLE TRIGGER [Trg_EventMaster]
GO
/****** Object:  Trigger [spe].[Trg_ExamMaster]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_ExamMaster]
ON [spe].[ExamMaster]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[ExamMaster]
        (
           [ExamId]
          ,[SchoolId]
          ,[AcademicYear]
          ,[ExamName]
          ,[ExamType]
          ,[StartDate]
          ,[EndDate]
          ,[Status]
		  ,[GraceMarks]
          ,[Description]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        )
        SELECT 
           [ExamId]
          ,[SchoolId]
          ,[AcademicYear]
          ,[ExamName]
          ,[ExamType]
          ,[StartDate]
          ,[EndDate]
          ,[Status]
		  ,[GraceMarks]
          ,[Description]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[ExamMaster]
        (
           [ExamId]
          ,[SchoolId]
          ,[AcademicYear]
          ,[ExamName]
          ,[ExamType]
          ,[StartDate]
          ,[EndDate]
          ,[Status]
		  ,[GraceMarks]
          ,[Description]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        )
        SELECT 
           [ExamId]
          ,[SchoolId]
          ,[AcademicYear]
          ,[ExamName]
          ,[ExamType]
          ,[StartDate]
          ,[EndDate]
          ,[Status]
		  ,[GraceMarks]
          ,[Description]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        FROM deleted;
END;
GO
ALTER TABLE [spe].[ExamMaster] ENABLE TRIGGER [Trg_ExamMaster]
GO
/****** Object:  Trigger [spe].[Trg_ExamSchedule]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_ExamSchedule]
ON [spe].[ExamSchedule]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[ExamSchedule]
        (
           [ScheduleId]
          ,[ExamId]
          ,[ClassId]
          ,[SectionId]
          ,[SubjectId]
          ,[ExamDate]
          ,[TotalMarks]
          ,[Duration]
          ,[Weightage]
		  ,[Description]
		  ,[IsPublished]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        )
        SELECT 
           [ScheduleId]
          ,[ExamId]
          ,[ClassId]
          ,[SectionId]
          ,[SubjectId]
          ,[ExamDate]
          ,[TotalMarks]
          ,[Duration]
          ,[Weightage]
		  ,[Description]
		  ,[IsPublished]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[ExamSchedule]
        (
           [ScheduleId]
          ,[ExamId]
          ,[ClassId]
          ,[SectionId]
          ,[SubjectId]
          ,[ExamDate]
          ,[TotalMarks]
          ,[Duration]
          ,[Weightage]
		  ,[Description]
		  ,[IsPublished]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        )
        SELECT 
          [ScheduleId]
         ,[ExamId]
         ,[ClassId]
         ,[SectionId]
         ,[SubjectId]
         ,[ExamDate]
         ,[TotalMarks]
         ,[Duration]
         ,[Weightage]
		 ,[Description]
		 ,[IsPublished]
         ,[OtherDetail1]
         ,[OtherDetail2]
         ,[OtherDetail3]
         ,[OtherDetail4]
         ,[OtherDetail5]
         ,[OtherDetail6]
         ,[IsActive]
         ,[IsDeleted]
         ,[CreatedBy]
         ,[CreatedOn]
         ,[ModifiedBy]
         ,[ModifiedOn]
        FROM deleted;
END;
GO
ALTER TABLE [spe].[ExamSchedule] ENABLE TRIGGER [Trg_ExamSchedule]
GO
/****** Object:  Trigger [spe].[Trg_FeeComponentMaster]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER[spe].[Trg_FeeComponentMaster]
   ON  [spe].[FeeComponentMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[FeeComponentMaster]
	(
	   [FeeComponentId]
      ,[InstallmentId]
      ,[ComponentName]
      ,[Amount]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [FeeComponentId]
      ,[InstallmentId]
      ,[ComponentName]
      ,[Amount]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [spe].[FeeComponentMaster] ENABLE TRIGGER [Trg_FeeComponentMaster]
GO
/****** Object:  Trigger [spe].[trg_Feedback]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[trg_Feedback]
   ON  [spe].[Feedback]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;
	INSERT INTO [speaudit].[Feedback]
	(
	   [FeedbackId]
      ,[MasterId]
      ,[MasterType]
      ,[TeacherId]
      ,[SchoolId]
      ,[Rating]
      ,[Feedback]
      ,[FeedbackType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [FeedbackId]
      ,[MasterId]
      ,[MasterType]
      ,[TeacherId]
      ,[SchoolId]
      ,[Rating]
      ,[Feedback]
      ,[FeedbackType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[Feedback]
	(
	   [FeedbackId]
      ,[MasterId]
      ,[MasterType]
      ,[TeacherId]
      ,[SchoolId]
      ,[Rating]
      ,[Feedback]
      ,[FeedbackType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [FeedbackId]
      ,[MasterId]
      ,[MasterType]
      ,[TeacherId]
      ,[SchoolId]
      ,[Rating]
      ,[Feedback]
      ,[FeedbackType]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END;
GO
ALTER TABLE [spe].[Feedback] ENABLE TRIGGER [trg_Feedback]
GO
/****** Object:  Trigger [spe].[Trg_FeeInstallmentMaster]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_FeeInstallmentMaster]
   ON  [spe].[FeeInstallmentMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	 INSERT INTO [speaudit].[FeeInstallmentMaster]
	 (
	   [InstallmentId]
      ,[FeeStructureId]
      ,[InstallmentName]
      ,[Amount]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [InstallmentId]
      ,[FeeStructureId]
      ,[InstallmentName]
      ,[Amount]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [spe].[FeeInstallmentMaster] ENABLE TRIGGER [Trg_FeeInstallmentMaster]
GO
/****** Object:  Trigger [spe].[Trg_FeeStructureMaster]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [spe].[Trg_FeeStructureMaster]
   ON  [spe].[FeeStructureMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[FeeStructureMaster]
	(
       [ClassId]
      ,[FeeType]
      ,[Frequency]
      ,[Amount]
      ,[ApplicableFrom]
      ,[ApplicableTo]
      ,[Remarks]
	  ,[IsMandatory]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[FName]
	)
	SELECT
       [ClassId]
      ,[FeeType]
      ,[Frequency]
      ,[Amount]
      ,[ApplicableFrom]
      ,[ApplicableTo]
      ,[Remarks]
	  ,[IsMandatory]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[FName]
	  FROM inserted
END
GO
ALTER TABLE [spe].[FeeStructureMaster] ENABLE TRIGGER [Trg_FeeStructureMaster]
GO
/****** Object:  Trigger [spe].[Trg_LoanRequest]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_LoanRequest]
   ON  [spe].[LoanRequest]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

    INSERT INTO [speaudit].[LoanRequest]
	(
	   [LoanRequestId]
      ,[ServiceProviderRRN]
      ,[UserId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[LoanAmount]
      ,[ProductType]
      ,[Purpose]
      ,[CurrencyCode]
      ,[DeviceType]
      ,[DeviceName]
      ,[IPAddress]
      ,[GeoLatitude]
      ,[GeoLongitude]
      ,[Status]
      ,[LoanProviderRRN]
      ,[LoanProviderTxnId]
      ,[RequestDate]
      ,[ResponseDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [LoanRequestId]
      ,[ServiceProviderRRN]
      ,[UserId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[LoanAmount]
      ,[ProductType]
      ,[Purpose]
      ,[CurrencyCode]
      ,[DeviceType]
      ,[DeviceName]
      ,[IPAddress]
      ,[GeoLatitude]
      ,[GeoLongitude]
      ,[Status]
      ,[LoanProviderRRN]
      ,[LoanProviderTxnId]
      ,[RequestDate]
      ,[ResponseDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	   INSERT INTO [speaudit].[LoanRequest]
	(
	   [LoanRequestId]
      ,[ServiceProviderRRN]
      ,[UserId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[LoanAmount]
      ,[ProductType]
      ,[Purpose]
      ,[CurrencyCode]
      ,[DeviceType]
      ,[DeviceName]
      ,[IPAddress]
      ,[GeoLatitude]
      ,[GeoLongitude]
      ,[Status]
      ,[LoanProviderRRN]
      ,[LoanProviderTxnId]
      ,[RequestDate]
      ,[ResponseDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [LoanRequestId]
      ,[ServiceProviderRRN]
      ,[UserId]
	  ,[SubUserId]
      ,[BusinessId]
      ,[LoanAmount]
      ,[ProductType]
      ,[Purpose]
      ,[CurrencyCode]
      ,[DeviceType]
      ,[DeviceName]
      ,[IPAddress]
      ,[GeoLatitude]
      ,[GeoLongitude]
      ,[Status]
      ,[LoanProviderRRN]
      ,[LoanProviderTxnId]
      ,[RequestDate]
      ,[ResponseDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[LoanRequest] ENABLE TRIGGER [Trg_LoanRequest]
GO
/****** Object:  Trigger [spe].[Trg_OnboardingPreCheck]    Script Date: 11/24/2025 5:55:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_OnboardingPreCheck]
   ON  [spe].[OnboardingPreCheck]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[OnboardingPreCheck]
	(
	   [PreCheckId]
      ,[SchoolId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PreCheckId]
      ,[SchoolId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[OnboardingPreCheck]
	(
	   [PreCheckId]
      ,[SchoolId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PreCheckId]
      ,[SchoolId]
      ,[PName]
      ,[PDesc]
      ,[IsVerified]
      ,[VerifiedBy]
      ,[VerifiedDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END

GO
ALTER TABLE [spe].[OnboardingPreCheck] ENABLE TRIGGER [Trg_OnboardingPreCheck]
GO
/****** Object:  Trigger [spe].[Trg_ParentStudentMapping]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_ParentStudentMapping]
   ON  [spe].[ParentStudentMapping]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

  INSERT INTO [speaudit].[ParentStudentMapping]
  (
       [MapId]
      ,[ParentId]
      ,[StudentId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
  )
  SELECT
       [MapId]
      ,[ParentId]
      ,[StudentId]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM [spe].[ParentStudentMapping]
	  WHERE [IsActive] = 1;
END
GO
ALTER TABLE [spe].[ParentStudentMapping] ENABLE TRIGGER [Trg_ParentStudentMapping]
GO
/****** Object:  Trigger [spe].[Trg_PrintMaster]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_PrintMaster]
   ON [spe].[PrintMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[PrintMaster]
	(
	   [PrintId]
      ,[SchoolId]
      ,[TemplateId]
      ,[MasterId]
      ,[MasterType]
      ,[PName]
      ,[PDesc]
      ,[PContent]
      ,[PSeq]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PrintId]
      ,[SchoolId]
      ,[TemplateId]
      ,[MasterId]
      ,[MasterType]
      ,[PName]
      ,[PDesc]
      ,[PContent]
      ,[PSeq]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[PrintMaster]
	(
	   [PrintId]
      ,[SchoolId]
      ,[TemplateId]
      ,[MasterId]
      ,[MasterType]
      ,[PName]
      ,[PDesc]
      ,[PContent]
      ,[PSeq]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [PrintId]
      ,[SchoolId]
      ,[TemplateId]
      ,[MasterId]
      ,[MasterType]
      ,[PName]
      ,[PDesc]
      ,[PContent]
      ,[PSeq]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[PrintMaster] ENABLE TRIGGER [Trg_PrintMaster]
GO
/****** Object:  Trigger [spe].[Trg_ReceiptDetail]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_ReceiptDetail]
   ON  [spe].[ReceiptDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[ReceiptDetail]
	(
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[ReceiptDetail]
	(
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[ReceiptId]
      ,[MasterType]
      ,[MasterId]
      ,[MasterAmt]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[ReceiptDetail] ENABLE TRIGGER [Trg_ReceiptDetail]
GO
/****** Object:  Trigger [spe].[Trg_ReceiptMaster]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_ReceiptMaster]
   ON  [spe].[ReceiptMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[ReceiptMaster]
	(
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[ReceiptMaster]
	(
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [ReceiptId]
      ,[ReceiptDate]
      ,[ReceiptNumber]
      ,[PRRN]
      ,[ReceiptAmount]
      ,[RStatus]
      ,[MasterType]
      ,[MasterId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[ReceiptMaster] ENABLE TRIGGER [Trg_ReceiptMaster]
GO
/****** Object:  Trigger [spe].[Trg_SchoolBankMaster]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_SchoolBankMaster]
   ON  [spe].[SchoolBankMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[SchoolBankMaster]
	(
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountNo]
	  ,[AccountHolderName]
	  ,[AccountType]
      ,[IsVerified]
      ,[BankName]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[IsDefault]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountNo]
	  ,[AccountHolderName]
	  ,[AccountType]
      ,[IsVerified]
      ,[BankName]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[IsDefault]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted;
	  INSERT INTO [speaudit].[SchoolBankMaster]
	(
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountNo]
	  ,[AccountHolderName]
	  ,[AccountType]
      ,[IsVerified]
      ,[BankName]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[IsDefault]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [BankId]
      ,[MasterType]
      ,[MasterId]
      ,[AccountNo]
	  ,[AccountHolderName]
	  ,[AccountType]
      ,[IsVerified]
      ,[BankName]
      ,[BranchName]
      ,[IFSCCode]
      ,[Address]
      ,[Contact]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
	  ,[IsDefault]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted;
END
GO
ALTER TABLE [spe].[SchoolBankMaster] ENABLE TRIGGER [Trg_SchoolBankMaster]
GO
/****** Object:  Trigger [spe].[Trg_SchoolDocMaster]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[spe].[Trg_SchoolDocMaster]
   ON  [spe].[SchoolDocMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[SchoolDocMaster]
	(
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)SELECT
	   [DocId]
      ,[MasterType]
      ,[MasterId]
      ,[DocType]
      ,[DocNo]
      ,[DocDescription]
      ,[DocPath]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
END
GO
ALTER TABLE [spe].[SchoolDocMaster] ENABLE TRIGGER [Trg_SchoolDocMaster]
GO
/****** Object:  Trigger [spe].[Trg_SchoolImgMaster]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_SchoolImgMaster]
   ON [spe].[SchoolImgMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN 
		SET NOCOUNT ON;

		INSERT INTO [speaudit].[SchoolImgMaster]
		(
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		)
		SELECT
			 [ImgId]
			,[MasterType]
			,[MasterId]
			,[ImgPath]
			,[ImgTitle]
			,[IsDefault]
			,[OtherDetail1]
			,[OtherDetail2]
			,[OtherDetail3]
			,[OtherDetail4]
			,[OtherDetail5]
			,[OtherDetail6]
			,[IsActive]
			,[IsDeleted]
			,[CreatedBy] 
			,[CreatedOn]
			,[ModifiedBy]
			,[ModifiedOn]
		FROM inserted
END
GO
ALTER TABLE [spe].[SchoolImgMaster] ENABLE TRIGGER [Trg_SchoolImgMaster]
GO
/****** Object:  Trigger [spe].[Trg_SchoolMaster]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_SchoolMaster]
   ON [spe].[SchoolMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

  SET NOCOUNT ON;
  INSERT INTO [speaudit].[SchoolMaster]
  (
       [SchoolId]
      ,[SchoolName]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[AffiliationNumber]
	  ,[OnBoardingStatus]
	  ,[Longitude]
      ,[Latitude]
	  ,[ImgPath]
      ,[PhoneNo]
      ,[Email]
      ,[Description]
	  ,[SchoolType]
      ,[Website]
      ,[BoardName]
      ,[MediumOfInstruction]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
  )
   SELECT 
       [SchoolId]
      ,[SchoolName]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[AffiliationNumber]
	  ,[OnBoardingStatus]
	  ,[Longitude]
      ,[Latitude]
	  ,[ImgPath]
      ,[PhoneNo]
      ,[Email]
      ,[Description]
	  ,[SchoolType]
      ,[Website]
      ,[BoardName]
      ,[MediumOfInstruction]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[SchoolMaster]
  (
       [SchoolId]
      ,[SchoolName]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[AffiliationNumber]
	  ,[OnBoardingStatus]
	  ,[Longitude]
      ,[Latitude]
	  ,[ImgPath]
      ,[PhoneNo]
      ,[Email]
      ,[Description]
	  ,[SchoolType]
      ,[Website]
      ,[BoardName]
      ,[MediumOfInstruction]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
  )
   SELECT 
       [SchoolId]
      ,[SchoolName]
      ,[Address]
      ,[City]
      ,[State]
      ,[Pincode]
      ,[AffiliationNumber]
	  ,[OnBoardingStatus]
	  ,[Longitude]
      ,[Latitude]
	  ,[ImgPath]
      ,[PhoneNo]
      ,[Email]
      ,[Description]
	  ,[SchoolType]
      ,[Website]
      ,[BoardName]
      ,[MediumOfInstruction]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[SchoolMaster] ENABLE TRIGGER [Trg_SchoolMaster]
GO
/****** Object:  Trigger [spe].[Trg_SectionMaster]    Script Date: 11/24/2025 5:55:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[spe].[Trg_SectionMaster]
   ON  [spe].[SectionMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [speaudit].[SectionMaster]
	(
	   [SectionId]
      ,[ClassId]
      ,[SectionName]
      ,[Capacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [SectionId]
      ,[ClassId]
      ,[SectionName]
      ,[Capacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[SectionMaster]
	(
	   [SectionId]
      ,[ClassId]
      ,[SectionName]
      ,[Capacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT
	   [SectionId]
      ,[ClassId]
      ,[SectionName]
      ,[Capacity]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[SectionMaster] ENABLE TRIGGER [Trg_SectionMaster]
GO
/****** Object:  Trigger [spe].[Trg_StudentAdmission]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[spe].[Trg_StudentAdmission]
   ON [spe].[StudentAdmission]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	 
	 INSERT INTO [speaudit].[StudentAdmission]
	 (
	   [AdmissionId]
      ,[AdmissionNo]
      ,[SUserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[ProfileImg]
      ,[DOB]
      ,[Gender]
      ,[BloodGroup]
      ,[MobileNo]
      ,[EmailId]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
      ,[MotherTongue]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[PinCode]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[SchoolId]
      ,[AcademicYear]
      ,[ClassId]
      ,[AdmissionCategory]
      ,[AdmissionStatus]
      ,[ApplicationDate]
      ,[ApprovedBy]
      ,[ApprovedDate]
      ,[Remarks]
      ,[AdmissionDate]
      ,[AdmissionMedium]
      ,[AdmissionType]
      ,[AdmissionBoard]
      ,[PreviousSchoolName]
      ,[PreviousSchoolAddress]
      ,[PreviousMedium]
      ,[PreviousLastClass]
      ,[PreviousMarksObtained]
      ,[PreviousBoard]
      ,[ReasonForTransfer]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[PGRelation]
      ,[PGUserId]
      ,[PGName]
      ,[PGDOB]
      ,[PGProfileImg]
      ,[PGEducation]
      ,[PGMobileNo]
      ,[PGOccupation]
      ,[PGDesignation]
      ,[PGAnnualIncome]
      ,[PGEmailId]
      ,[PGAadharNumber]
      ,[PGPanNumber]
      ,[SGRelation]
      ,[SGUserId]
      ,[SGName]
      ,[SGDOB]
      ,[SGProfileImg]
      ,[SGEducation]
      ,[SGMobileNo]
      ,[SGOccupation]
      ,[SGDesignation]
      ,[SGAnnualIncome]
      ,[SGEmailId]
      ,[SGAadharNumber]
      ,[SGPanNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [AdmissionId]
      ,[AdmissionNo]
      ,[SUserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[ProfileImg]
      ,[DOB]
      ,[Gender]
      ,[BloodGroup]
      ,[MobileNo]
      ,[EmailId]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
      ,[MotherTongue]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[PinCode]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[SchoolId]
      ,[AcademicYear]
      ,[ClassId]
      ,[AdmissionCategory]
      ,[AdmissionStatus]
      ,[ApplicationDate]
      ,[ApprovedBy]
      ,[ApprovedDate]
      ,[Remarks]
      ,[AdmissionDate]
      ,[AdmissionMedium]
      ,[AdmissionType]
      ,[AdmissionBoard]
      ,[PreviousSchoolName]
      ,[PreviousSchoolAddress]
      ,[PreviousMedium]
      ,[PreviousLastClass]
      ,[PreviousMarksObtained]
      ,[PreviousBoard]
      ,[ReasonForTransfer]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[PGRelation]
      ,[PGUserId]
      ,[PGName]
      ,[PGDOB]
      ,[PGProfileImg]
      ,[PGEducation]
      ,[PGMobileNo]
      ,[PGOccupation]
      ,[PGDesignation]
      ,[PGAnnualIncome]
      ,[PGEmailId]
      ,[PGAadharNumber]
      ,[PGPanNumber]
      ,[SGRelation]
      ,[SGUserId]
      ,[SGName]
      ,[SGDOB]
      ,[SGProfileImg]
      ,[SGEducation]
      ,[SGMobileNo]
      ,[SGOccupation]
      ,[SGDesignation]
      ,[SGAnnualIncome]
      ,[SGEmailId]
      ,[SGAadharNumber]
      ,[SGPanNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  	 INSERT INTO [speaudit].[StudentAdmission]
	 (
	   [AdmissionId]
      ,[AdmissionNo]
      ,[SUserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[ProfileImg]
      ,[DOB]
      ,[Gender]
      ,[BloodGroup]
      ,[MobileNo]
      ,[EmailId]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
      ,[MotherTongue]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[PinCode]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[SchoolId]
      ,[AcademicYear]
      ,[ClassId]
      ,[AdmissionCategory]
      ,[AdmissionStatus]
      ,[ApplicationDate]
      ,[ApprovedBy]
      ,[ApprovedDate]
      ,[Remarks]
      ,[AdmissionDate]
      ,[AdmissionMedium]
      ,[AdmissionType]
      ,[AdmissionBoard]
      ,[PreviousSchoolName]
      ,[PreviousSchoolAddress]
      ,[PreviousMedium]
      ,[PreviousLastClass]
      ,[PreviousMarksObtained]
      ,[PreviousBoard]
      ,[ReasonForTransfer]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[PGRelation]
      ,[PGUserId]
      ,[PGName]
      ,[PGDOB]
      ,[PGProfileImg]
      ,[PGEducation]
      ,[PGMobileNo]
      ,[PGOccupation]
      ,[PGDesignation]
      ,[PGAnnualIncome]
      ,[PGEmailId]
      ,[PGAadharNumber]
      ,[PGPanNumber]
      ,[SGRelation]
      ,[SGUserId]
      ,[SGName]
      ,[SGDOB]
      ,[SGProfileImg]
      ,[SGEducation]
      ,[SGMobileNo]
      ,[SGOccupation]
      ,[SGDesignation]
      ,[SGAnnualIncome]
      ,[SGEmailId]
      ,[SGAadharNumber]
      ,[SGPanNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	 )
	 SELECT 
	   [AdmissionId]
      ,[AdmissionNo]
      ,[SUserId]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[ProfileImg]
      ,[DOB]
      ,[Gender]
      ,[BloodGroup]
      ,[MobileNo]
      ,[EmailId]
      ,[AadharNumber]
      ,[PanNumber]
      ,[Nationality]
      ,[Religion]
      ,[Caste]
      ,[MotherTongue]
      ,[Address]
      ,[Country]
      ,[State]
      ,[City]
      ,[PinCode]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[SchoolId]
      ,[AcademicYear]
      ,[ClassId]
      ,[AdmissionCategory]
      ,[AdmissionStatus]
      ,[ApplicationDate]
      ,[ApprovedBy]
      ,[ApprovedDate]
      ,[Remarks]
      ,[AdmissionDate]
      ,[AdmissionMedium]
      ,[AdmissionType]
      ,[AdmissionBoard]
      ,[PreviousSchoolName]
      ,[PreviousSchoolAddress]
      ,[PreviousMedium]
      ,[PreviousLastClass]
      ,[PreviousMarksObtained]
      ,[PreviousBoard]
      ,[ReasonForTransfer]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[PGRelation]
      ,[PGUserId]
      ,[PGName]
      ,[PGDOB]
      ,[PGProfileImg]
      ,[PGEducation]
      ,[PGMobileNo]
      ,[PGOccupation]
      ,[PGDesignation]
      ,[PGAnnualIncome]
      ,[PGEmailId]
      ,[PGAadharNumber]
      ,[PGPanNumber]
      ,[SGRelation]
      ,[SGUserId]
      ,[SGName]
      ,[SGDOB]
      ,[SGProfileImg]
      ,[SGEducation]
      ,[SGMobileNo]
      ,[SGOccupation]
      ,[SGDesignation]
      ,[SGAnnualIncome]
      ,[SGEmailId]
      ,[SGAadharNumber]
      ,[SGPanNumber]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[StudentAdmission] ENABLE TRIGGER [Trg_StudentAdmission]
GO
/****** Object:  Trigger [spe].[Trg_StudentAssignmentSubmission]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_StudentAssignmentSubmission]
ON [spe].[StudentAssignmentSubmission]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[StudentAssignmentSubmission]
        (
           [SubmissionId]
          ,[AssignmentId]
          ,[StudentId]
          ,[SubmissionDate]
          ,[FileUrl]
          ,[Status]
          ,[MarksObtained]
          ,[TotalMarks]
          ,[Remarks]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        )
        SELECT 
           [SubmissionId]
          ,[AssignmentId]
          ,[StudentId]
          ,[SubmissionDate]
          ,[FileUrl]
          ,[Status]
          ,[MarksObtained]
          ,[TotalMarks]
          ,[Remarks]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        FROM inserted;
        INSERT INTO [speaudit].[StudentAssignmentSubmission]
        (
           [SubmissionId]
          ,[AssignmentId]
          ,[StudentId]
          ,[SubmissionDate]
          ,[FileUrl]
          ,[Status]
          ,[MarksObtained]
          ,[TotalMarks]
          ,[Remarks]
          ,[OtherDetail1]
          ,[OtherDetail2]
          ,[OtherDetail3]
          ,[OtherDetail4]
          ,[OtherDetail5]
          ,[OtherDetail6]
          ,[IsActive]
          ,[IsDeleted]
          ,[CreatedBy]
          ,[CreatedOn]
          ,[ModifiedBy]
          ,[ModifiedOn]
        )
        SELECT 
          [SubmissionId]
         ,[AssignmentId]
         ,[StudentId]
         ,[SubmissionDate]
         ,[FileUrl]
         ,[Status]
         ,[MarksObtained]
         ,[TotalMarks]
         ,[Remarks]
         ,[OtherDetail1]
         ,[OtherDetail2]
         ,[OtherDetail3]
         ,[OtherDetail4]
         ,[OtherDetail5]
         ,[OtherDetail6]
         ,[IsActive]
         ,[IsDeleted]
         ,[CreatedBy]
         ,[CreatedOn]
         ,[ModifiedBy]
         ,[ModifiedOn]
        FROM deleted;
END;
GO
ALTER TABLE [spe].[StudentAssignmentSubmission] ENABLE TRIGGER [Trg_StudentAssignmentSubmission]
GO
/****** Object:  Trigger [spe].[Trg_StudentClassMapping]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_StudentClassMapping]
   ON  [spe].[StudentClassMapping]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[StudentClassMapping]
	(
	   [MappingId]
      ,[UserId]
      ,[ClassId]
      ,[SectionId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [MappingId]
      ,[UserId]
      ,[ClassId]
      ,[SectionId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[StudentClassMapping]
	(
	   [MappingId]
      ,[UserId]
      ,[ClassId]
      ,[SectionId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [MappingId]
      ,[UserId]
      ,[ClassId]
      ,[SectionId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[StudentClassMapping] ENABLE TRIGGER [Trg_StudentClassMapping]
GO
/****** Object:  Trigger [spe].[Trg_StudentExamMarks]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_StudentExamMarks]
   ON  [spe].[StudentExamMarks]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[StudentExamMarks]
	(
	   [MarkId]
      ,[ScheduleId]
      ,[StudentId]
      ,[ObtainedMarks]
      ,[TotalMarks]
      ,[Percentage]
      ,[Grade]
      ,[Result]
      ,[Remarks]
      ,[GraceMarks]
      ,[GraceMarksGiven]
      ,[IsAbsent]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsConfirm]
	)
	SELECT 
	   [MarkId]
      ,[ScheduleId]
      ,[StudentId]
      ,[ObtainedMarks]
      ,[TotalMarks]
      ,[Percentage]
      ,[Grade]
      ,[Result]
      ,[Remarks]
      ,[GraceMarks]
      ,[GraceMarksGiven]
      ,[IsAbsent]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsConfirm]
	  FROM inserted
	  	INSERT INTO [speaudit].[StudentExamMarks]
	(
	   [MarkId]
      ,[ScheduleId]
      ,[StudentId]
      ,[ObtainedMarks]
      ,[TotalMarks]
      ,[Percentage]
      ,[Grade]
      ,[Result]
      ,[Remarks]
      ,[GraceMarks]
      ,[GraceMarksGiven]
      ,[IsAbsent]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsConfirm]
	)
	SELECT 
	   [MarkId]
      ,[ScheduleId]
      ,[StudentId]
      ,[ObtainedMarks]
      ,[TotalMarks]
      ,[Percentage]
      ,[Grade]
      ,[Result]
      ,[Remarks]
      ,[GraceMarks]
      ,[GraceMarksGiven]
      ,[IsAbsent]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[IsConfirm]
	  FROM deleted
END
GO
ALTER TABLE [spe].[StudentExamMarks] ENABLE TRIGGER [Trg_StudentExamMarks]
GO
/****** Object:  Trigger [spe].[Trg_StudentFeeStructureMapping]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_StudentFeeStructureMapping]
ON [spe].[StudentFeeStructureMapping]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[StudentFeeStructureMapping]
        (
           [MappingId],
           [StudentId],
           [ClassId],
           [FeeStructureId],
           [FeeType],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        )
        SELECT 
           [MappingId],
           [StudentId],
           [ClassId],
           [FeeStructureId],
           [FeeType],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[StudentFeeStructureMapping]
        (
           [MappingId],
           [StudentId],
           [ClassId],
           [FeeStructureId],
           [FeeType],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        )
        SELECT 
           [MappingId],
           [StudentId],
           [ClassId],
           [FeeStructureId],
           [FeeType],
           [OtherDetail1],
           [OtherDetail2],
           [OtherDetail3],
           [OtherDetail4],
           [OtherDetail5],
           [OtherDetail6],
           [IsActive],
           [IsDeleted],
           [CreatedBy],
           [CreatedOn],
           [ModifiedBy],
           [ModifiedOn]
        FROM deleted;
    END
GO
ALTER TABLE [spe].[StudentFeeStructureMapping] ENABLE TRIGGER [Trg_StudentFeeStructureMapping]
GO
/****** Object:  Trigger [spe].[Trg_StudentRegistration]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_StudentRegistration]
   ON[spe].[StudentRegistration]  
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
 
	SET NOCOUNT ON;
 
	INSERT INTO [speaudit].[StudentRegistration]
	(
	    [RegistrationId]
      ,[SchoolId]
      ,[UserId]
      ,[AdmissionNo]
      ,[AdmissionType]
      ,[AdmissionStatus]
      ,[MotherTongue]
      ,[IncomeProof]
      ,[PreviousSchoolName]
      ,[PLastClass]
      ,[PMarksObtained]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AdmissionDate]
      ,[AcademicYear]
      ,[ClassId]
      ,[SectionId]
      ,[AdmissionCategory]
      ,[PreviousSchoolAddress]
      ,[PBoard]
      ,[ReasonForTransfer]
      ,[GuardianType]
      ,[GuardianName]
      ,[GuardianContactNo]
      ,[AlternateContactNo]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[MappingId]
	)
	SELECT 
	     [RegistrationId]
      ,[SchoolId]
      ,[UserId]
      ,[AdmissionNo]
      ,[AdmissionType]
      ,[AdmissionStatus]
      ,[MotherTongue]
      ,[IncomeProof]
      ,[PreviousSchoolName]
      ,[PLastClass]
      ,[PMarksObtained]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AdmissionDate]
      ,[AcademicYear]
      ,[ClassId]
      ,[SectionId]
      ,[AdmissionCategory]
      ,[PreviousSchoolAddress]
      ,[PBoard]
      ,[ReasonForTransfer]
      ,[GuardianType]
      ,[GuardianName]
      ,[GuardianContactNo]
      ,[AlternateContactNo]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[MappingId]
	  FROM inserted
	  INSERT INTO [speaudit].[StudentRegistration]
	(
	   [RegistrationId]
      ,[SchoolId]
      ,[UserId]
      ,[AdmissionNo]
      ,[AdmissionType]
      ,[AdmissionStatus]
      ,[MotherTongue]
      ,[IncomeProof]
      ,[PreviousSchoolName]
      ,[PLastClass]
      ,[PMarksObtained]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AdmissionDate]
      ,[AcademicYear]
      ,[ClassId]
      ,[SectionId]
      ,[AdmissionCategory]
      ,[PreviousSchoolAddress]
      ,[PBoard]
      ,[ReasonForTransfer]
      ,[GuardianType]
      ,[GuardianName]
      ,[GuardianContactNo]
      ,[AlternateContactNo]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[MappingId]
	)
	SELECT 
	    [RegistrationId]
      ,[SchoolId]
      ,[UserId]
      ,[AdmissionNo]
      ,[AdmissionType]
      ,[AdmissionStatus]
      ,[MotherTongue]
      ,[IncomeProof]
      ,[PreviousSchoolName]
      ,[PLastClass]
      ,[PMarksObtained]
      ,[TransferCertificateNo]
      ,[TCDate]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[AdmissionDate]
      ,[AcademicYear]
      ,[ClassId]
      ,[SectionId]
      ,[AdmissionCategory]
      ,[PreviousSchoolAddress]
      ,[PBoard]
      ,[ReasonForTransfer]
      ,[GuardianType]
      ,[GuardianName]
      ,[GuardianContactNo]
      ,[AlternateContactNo]
      ,[SpecialNeeds]
      ,[DisabilityStatus]
      ,[MappingId]
	  FROM deleted
END
GO
ALTER TABLE [spe].[StudentRegistration] ENABLE TRIGGER [Trg_StudentRegistration]
GO
/****** Object:  Trigger [spe].[Trg_StudentRouteMapping]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TRIGGER [spe].[Trg_StudentRouteMapping]
   ON  [spe].[StudentRouteMapping]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [speaudit].StudentRouteMapping
	(
		 [MappingId]
		,[UserId]
		,[RouteId]
		,[PickupDetailId]
		,[DropDetailId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	)
	SELECT 
		 [MappingId]
		,[UserId]
		,[RouteId]
		,[PickupDetailId]
		,[DropDetailId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	FROM inserted
	INSERT INTO [speaudit].StudentRouteMapping
	(
		 [MappingId]
		,[UserId]
		,[RouteId]
		,[PickupDetailId]
		,[DropDetailId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	)
	SELECT 
		 [MappingId]
		,[UserId]
		,[RouteId]
		,[PickupDetailId]
		,[DropDetailId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	FROM deleted
END
GO
ALTER TABLE [spe].[StudentRouteMapping] ENABLE TRIGGER [Trg_StudentRouteMapping]
GO
/****** Object:  Trigger [spe].[Trg_SubjectMaster]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_SubjectMaster]
ON [spe].[SubjectMaster]
AFTER INSERT, DELETE, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

        INSERT INTO [speaudit].[SubjectMaster]
        (
       [SubjectId]
      ,[SchoolId]
      ,[ClassId]
      ,[SubjectCode]
      ,[SubjectName]
      ,[Description]
      ,[AcademicLevel]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        )
        SELECT 
       [SubjectId]
      ,[SchoolId]
      ,[ClassId]
      ,[SubjectCode]
      ,[SubjectName]
      ,[Description]
      ,[AcademicLevel]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        FROM inserted;


        INSERT INTO [speaudit].[SubjectMaster]
        (
       [SubjectId]
      ,[SchoolId]
      ,[ClassId]
      ,[SubjectCode]
      ,[SubjectName]
      ,[Description]
      ,[AcademicLevel]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        )
        SELECT 
       [SubjectId]
      ,[SchoolId]
      ,[ClassId]
      ,[SubjectCode]
      ,[SubjectName]
      ,[Description]
      ,[AcademicLevel]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
        FROM deleted;
    END
GO
ALTER TABLE [spe].[SubjectMaster] ENABLE TRIGGER [Trg_SubjectMaster]
GO
/****** Object:  Trigger [spe].[Trg_TeacherClassSubjectMapping]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TRIGGER [spe].[Trg_TeacherClassSubjectMapping]
   ON  [spe].[TeacherClassSubjectMapping]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [speaudit].[TeacherClassSubjectMapping]
	(
	   [MappingId]
      ,[TeacherId]
      ,[SchoolId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [MappingId]
      ,[TeacherId]
      ,[SchoolId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	FROM inserted
	INSERT INTO [speaudit].[TeacherClassSubjectMapping]
	(
	   [MappingId]
      ,[TeacherId]
      ,[SchoolId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [MappingId]
      ,[TeacherId]
      ,[SchoolId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[AcademicYear]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	FROM deleted
END;
GO
ALTER TABLE [spe].[TeacherClassSubjectMapping] ENABLE TRIGGER [Trg_TeacherClassSubjectMapping]
GO
/****** Object:  Trigger [spe].[Trg_TeacherScheduleMaster]    Script Date: 11/24/2025 5:55:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_TeacherScheduleMaster]
   ON  [spe].[TeacherScheduleMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[TeacherScheduleMaster]
	(
	   [ScheduleId]
      ,[SchoolId]
      ,[ScheduleDate]
      ,[TeacherId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[ScheduleType]
      ,[StartTime]
      ,[Duration]
      ,[EndTime]
      ,[Mode]
      ,[MeetingLink]
      ,[Status]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DayOfWeek]
	)
	SELECT 
	   [ScheduleId]
      ,[SchoolId]
      ,[ScheduleDate]
      ,[TeacherId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[ScheduleType]
      ,[StartTime]
      ,[Duration]
      ,[EndTime]
      ,[Mode]
      ,[MeetingLink]
      ,[Status]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DayOfWeek]
	  FROM inserted
	  	INSERT INTO [speaudit].[TeacherScheduleMaster]
	(
	   [ScheduleId]
      ,[SchoolId]
      ,[ScheduleDate]
      ,[TeacherId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[ScheduleType]
      ,[StartTime]
      ,[Duration]
      ,[EndTime]
      ,[Mode]
      ,[MeetingLink]
      ,[Status]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DayOfWeek]
	)
	SELECT 
	   [ScheduleId]
      ,[SchoolId]
      ,[ScheduleDate]
      ,[TeacherId]
      ,[ClassId]
      ,[SectionId]
      ,[SubjectId]
      ,[ScheduleType]
      ,[StartTime]
      ,[Duration]
      ,[EndTime]
      ,[Mode]
      ,[MeetingLink]
      ,[Status]
      ,[Description]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
      ,[DayOfWeek]
	  FROM deleted
END
GO
ALTER TABLE [spe].[TeacherScheduleMaster] ENABLE TRIGGER [Trg_TeacherScheduleMaster]
GO
/****** Object:  Trigger [spe].[Trg_UserAffiliationMapping]    Script Date: 11/24/2025 5:55:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[spe].[Trg_UserAffiliationMapping]
   ON  [spe].[UserAffiliationMapping]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN
	
	SET NOCOUNT ON;

	INSERT INTO [speaudit].[UserAffiliationMapping]
	(
		 [MappingId]
		,[UserId]
		,[SchoolId]
		,[AffiliationType]
		,[Designation]
		,[Occupation]
		,[Income]
		,[IsPrimary]
		,[JoinedOn]
		,[AssignedRoleId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		)
		SELECT 
		 [MappingId]
		,[UserId]
		,[SchoolId]
		,[AffiliationType]
		,[Designation]
		,[Occupation]
		,[Income]
		,[IsPrimary]
		,[JoinedOn]
		,[AssignedRoleId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	FROM inserted

	INSERT INTO [speaudit].[UserAffiliationMapping]
	(
		 [MappingId]
		,[UserId]
		,[SchoolId]
		,[AffiliationType]
		,[Designation]
		,[Occupation]
		,[Income]
		,[IsPrimary]
		,[JoinedOn]
		,[AssignedRoleId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
		)
		SELECT 
		 [MappingId]
		,[UserId]
		,[SchoolId]
		,[AffiliationType]
		,[Designation]
		,[Occupation]
		,[Income]
		,[IsPrimary]
		,[JoinedOn]
		,[AssignedRoleId]
		,[OtherDetail1]
		,[OtherDetail2]
		,[OtherDetail3]
		,[OtherDetail4]
		,[OtherDetail5]
		,[OtherDetail6]
		,[IsActive]
		,[IsDeleted]
		,[CreatedBy]
		,[CreatedOn]
		,[ModifiedBy]
		,[ModifiedOn]
	FROM deleted
END
GO
ALTER TABLE [spe].[UserAffiliationMapping] ENABLE TRIGGER [Trg_UserAffiliationMapping]
GO
/****** Object:  Trigger [spe].[Trg_VehicleDriverAssignment]    Script Date: 11/24/2025 5:55:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_VehicleDriverAssignment]
   ON [spe].[VehicleDriverAssignment]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[VehicleDriverAssignment]
	(
	   [AssignmentId]
      ,[VehicleId]
      ,[DriverId]
      ,[RouteId]
      ,[StartDate]
      ,[EndDate]
      ,[IsPrimaryDriver]
      ,[Shift]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AssignmentId]
      ,[VehicleId]
      ,[DriverId]
      ,[RouteId]
      ,[StartDate]
      ,[EndDate]
      ,[IsPrimaryDriver]
      ,[Shift]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	 INSERT INTO [speaudit].[VehicleDriverAssignment]
	(
	   [AssignmentId]
      ,[VehicleId]
      ,[DriverId]
      ,[RouteId]
      ,[StartDate]
      ,[EndDate]
      ,[IsPrimaryDriver]
      ,[Shift]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [AssignmentId]
      ,[VehicleId]
      ,[DriverId]
      ,[RouteId]
      ,[StartDate]
      ,[EndDate]
      ,[IsPrimaryDriver]
      ,[Shift]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[VehicleDriverAssignment] ENABLE TRIGGER [Trg_VehicleDriverAssignment]
GO
/****** Object:  Trigger [spe].[Trg_VehicleMaster]    Script Date: 11/24/2025 5:55:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER[spe].[Trg_VehicleMaster]
   ON  [spe].[VehicleMaster]
   AFTER INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].[VehicleMaster]
	(
	   [VehicleId]
      ,[SchoolId]
      ,[VehicleNo]
      ,[ImgPath]
      ,[Capacity]
      ,[Type]
      ,[OwnershipType]
      ,[ChassisNo]
      ,[InsuranceExpiryDate]
      ,[PermitNo]
      ,[PermitExpiryDate]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [VehicleId]
      ,[SchoolId]
      ,[VehicleNo]
      ,[ImgPath]
      ,[Capacity]
      ,[Type]
      ,[OwnershipType]
      ,[ChassisNo]
      ,[InsuranceExpiryDate]
      ,[PermitNo]
      ,[PermitExpiryDate]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[VehicleMaster]
	(
	   [VehicleId]
      ,[SchoolId]
      ,[VehicleNo]
      ,[ImgPath]
      ,[Capacity]
      ,[Type]
      ,[OwnershipType]
      ,[ChassisNo]
      ,[InsuranceExpiryDate]
      ,[PermitNo]
      ,[PermitExpiryDate]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [VehicleId]
      ,[SchoolId]
      ,[VehicleNo]
      ,[ImgPath]
      ,[Capacity]
      ,[Type]
      ,[OwnershipType]
      ,[ChassisNo]
      ,[InsuranceExpiryDate]
      ,[PermitNo]
      ,[PermitExpiryDate]
      ,[Status]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[VehicleMaster] ENABLE TRIGGER [Trg_VehicleMaster]
GO
/****** Object:  Trigger [spe].[Trg_VehicleRouteDetail]    Script Date: 11/24/2025 5:55:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TRIGGER [spe].[Trg_VehicleRouteDetail]
   ON  [spe].[VehicleRouteDetail]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;

	INSERT INTO [speaudit].VehicleRouteDetail
	(
	   [DetailId]
      ,[RouteId]
      ,[StopName]
      ,[Latitude]
      ,[Longitude]
      ,[SequenceNo]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[RouteId]
      ,[StopName]
      ,[Latitude]
      ,[Longitude]
      ,[SequenceNo]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].VehicleRouteDetail
	(
	   [DetailId]
      ,[RouteId]
      ,[StopName]
      ,[Latitude]
      ,[Longitude]
      ,[SequenceNo]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [DetailId]
      ,[RouteId]
      ,[StopName]
      ,[Latitude]
      ,[Longitude]
      ,[SequenceNo]
	  ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[VehicleRouteDetail] ENABLE TRIGGER [Trg_VehicleRouteDetail]
GO
/****** Object:  Trigger [spe].[Trg_VehicleRouteMapping]    Script Date: 11/24/2025 5:55:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_VehicleRouteMapping]
   ON [spe].[VehicleRouteMapping] 
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN

	SET NOCOUNT ON;
	INSERT INTO [speaudit].[VehicleRouteMapping]
	(
	   [MappingId]
      ,[VehicleId]
      ,[RouteId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [MappingId]
      ,[VehicleId]
      ,[RouteId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  	INSERT INTO [speaudit].[VehicleRouteMapping]
	(
	   [MappingId]
      ,[VehicleId]
      ,[RouteId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [MappingId]
      ,[VehicleId]
      ,[RouteId]
      ,[Remarks]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[VehicleRouteMapping] ENABLE TRIGGER [Trg_VehicleRouteMapping]
GO
/****** Object:  Trigger [spe].[Trg_VehicleRouteMaster]    Script Date: 11/24/2025 5:55:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TRIGGER [spe].[Trg_VehicleRouteMaster]
   ON  [spe].[VehicleRouteMaster]
   AFTER  INSERT,DELETE,UPDATE
AS 
BEGIN
	SET NOCOUNT ON;
	INSERT INTO [speaudit].[VehicleRouteMaster]
	(
	   [RouteId]
      ,[RouteName]
      ,[SchoolId]
      ,[StartLocation]
      ,[EndLocation]
      ,[Distance]
      ,[EstimatedTime]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RouteId]
      ,[RouteName]
      ,[SchoolId]
      ,[StartLocation]
      ,[EndLocation]
      ,[Distance]
      ,[EstimatedTime]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM inserted
	  INSERT INTO [speaudit].[VehicleRouteMaster]
	(
	   [RouteId]
      ,[RouteName]
      ,[SchoolId]
      ,[StartLocation]
      ,[EndLocation]
      ,[Distance]
      ,[EstimatedTime]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	)
	SELECT 
	   [RouteId]
      ,[RouteName]
      ,[SchoolId]
      ,[StartLocation]
      ,[EndLocation]
      ,[Distance]
      ,[EstimatedTime]
      ,[OtherDetail1]
      ,[OtherDetail2]
      ,[OtherDetail3]
      ,[OtherDetail4]
      ,[OtherDetail5]
      ,[OtherDetail6]
      ,[IsActive]
      ,[IsDeleted]
      ,[CreatedBy]
      ,[CreatedOn]
      ,[ModifiedBy]
      ,[ModifiedOn]
	  FROM deleted
END
GO
ALTER TABLE [spe].[VehicleRouteMaster] ENABLE TRIGGER [Trg_VehicleRouteMaster]
GO
