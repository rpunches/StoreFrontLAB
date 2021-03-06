/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2016 (13.0.5026)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserDetails]') AND type in (N'U'))
ALTER TABLE [dbo].[UserDetails] DROP CONSTRAINT IF EXISTS [FK_UserDetails_AspNetUsers]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movies]') AND type in (N'U'))
ALTER TABLE [dbo].[Movies] DROP CONSTRAINT IF EXISTS [FK_Movies_ProductionCompany]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movies]') AND type in (N'U'))
ALTER TABLE [dbo].[Movies] DROP CONSTRAINT IF EXISTS [FK_Movies_Genres]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieDirector]') AND type in (N'U'))
ALTER TABLE [dbo].[MovieDirector] DROP CONSTRAINT IF EXISTS [FK_MovieDirector_Movies]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieDirector]') AND type in (N'U'))
ALTER TABLE [dbo].[MovieDirector] DROP CONSTRAINT IF EXISTS [FK_MovieDirector_Director]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieActor]') AND type in (N'U'))
ALTER TABLE [dbo].[MovieActor] DROP CONSTRAINT IF EXISTS [FK_MovieActor_Movies]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieActor]') AND type in (N'U'))
ALTER TABLE [dbo].[MovieActor] DROP CONSTRAINT IF EXISTS [FK_MovieActor_Actor]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT IF EXISTS [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[UserDetails]
GO
/****** Object:  Table [dbo].[ProductionCompany]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[ProductionCompany]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[Movies]
GO
/****** Object:  Table [dbo].[MovieDirector]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[MovieDirector]
GO
/****** Object:  Table [dbo].[MovieActor]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[MovieActor]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[Genres]
GO
/****** Object:  Table [dbo].[Director]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[Director]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUsers]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserRoles]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserLogins]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetUserClaims]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[AspNetRoles]
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[Actor]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/18/2019 1:29:28 PM ******/
DROP TABLE IF EXISTS [dbo].[__MigrationHistory]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__MigrationHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Actor]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Actor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Actor](
	[ActorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Actor] PRIMARY KEY CLUSTERED 
(
	[ActorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Director]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Director]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Director](
	[DirectorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Director] PRIMARY KEY CLUSTERED 
(
	[DirectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Genres]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Genres](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[GenreName] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MovieActor]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieActor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MovieActor](
	[MovieActorID] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NOT NULL,
	[ActorID] [int] NOT NULL,
 CONSTRAINT [PK_MovieActor] PRIMARY KEY CLUSTERED 
(
	[MovieActorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[MovieDirector]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieDirector]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[MovieDirector](
	[MovieDirectorID] [int] IDENTITY(1,1) NOT NULL,
	[MovieID] [int] NOT NULL,
	[DirectorID] [int] NOT NULL,
 CONSTRAINT [PK_MovieDirector] PRIMARY KEY CLUSTERED 
(
	[MovieDirectorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Movies](
	[MovieID] [int] IDENTITY(1,1) NOT NULL,
	[MovieTitle] [nvarchar](100) NOT NULL,
	[GenreID] [int] NOT NULL,
	[Price] [decimal](19, 4) NULL,
	[UnitsSold] [int] NULL,
	[ReleaseDate] [date] NULL,
	[ProductionID] [int] NOT NULL,
	[Plot] [nvarchar](max) NULL,
	[PosterImage] [varchar](255) NULL,
 CONSTRAINT [PK_Movies] PRIMARY KEY CLUSTERED 
(
	[MovieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ProductionCompany]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductionCompany]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ProductionCompany](
	[ProductionID] [int] IDENTITY(1,1) NOT NULL,
	[ProductionCompany] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductionCompany] PRIMARY KEY CLUSTERED 
(
	[ProductionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 10/18/2019 1:29:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserDetails]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserDetails](
	[UserID] [nvarchar](128) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](75) NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201910081804373_InitialCreate', N'StoreFrontLAB.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5C5B6FE336167E5F60FF83A0A7EE22B572D9194C03BB45C6497683CD0DE34CD1B7012DD18E3012A54A549AA0E82FEB437F52FF420F254A166FBAD88AED14058A583CFCCEE1E147F2903C9C3F7FFF63FCC37318584F3849FD884CECA3D1A16D61E2469E4F96133BA38B6F3FD83F7CFFCF7F8C2FBCF0D9FAB1943B61725093A413FB91D2F8D47152F71187281D85BE9B4469B4A023370A1DE445CEF1E1E177CED1918301C2062CCB1A7FCA08F5439CFF809FD388B838A6190A6E220F0729FF0E25B31CD5BA45214E63E4E2893DA351822F9388D0EBB38FA342DEB6CE021F812D331C2C6C0B11125144C1D2D3CF299E51105ECE62F8808287971883DC020529E62D385D89776DCCE1316B8CB3AA5842B9594AA3B027E0D109F78E23575FCBC776E53DF0DF05F899BEB056E73E9CD8571ECE3F7D8A027080ACF0741A244C7862DF542ACED2F816D351597154405E2600F74B947C1DD5110FACCEF50E2A361D8F0ED97F07D6340B6896E009C1194D507060DD67F3C077FF8F5F1EA2AF984C4E8EE68B930FEFDE23EFE4FD7FF0C9BB7A4BA1AD20277C804FF74914E3046CC38BAAFDB6E588F51CB96255AD56A7F00A700906866DDDA0E76B4C96F41186CCF107DBBAF49FB1577EE1E4FA4C7C184750892619FCBCCD8200CD035C953B8D3AD9FF1BB41EBF7B3F88D65BF4E42FF3AE97F4C3C049605C7DC2415E9A3EFA7131BC84FEFEC2C5603C86ECB7C8AFA2F4CB2CCA12973526328A3CA06489A968DDD85991B713A519D4F0B42E51F79FDACC5295DE5A51D6A0754642A962DBA3A1B4F775F57666DC591C43E7E5D4621E69229C6EB91A49F50F2C416A459FA3AEF421D0ACBFF36C7811223F18603AECA0056291859F84B86AE5C708C887486F9BEF519AC26CE0FD0FA58F0DA6C39F03983EC36E960049671485F1AB6BBB7F8C08BECDC239E3FEF6740DD6350FBF4497C88531774158AD8DF1AE23F76B94D10BE29D238A3F53B704643F1FFCB03BC020E69CB92E4ED34B2033F6A61184DA25E015A127C7BDE1D814B5EB70641A203FD4C723D264FAA5145DC5247A09252E3188E962932653AFA3A54FBA995A8A9A4D2D245A4DE5627D4D6560DD2CE59266437381563B0BA9C1A2BDBC87860FF772D8FD8FF7365BBC4D7341CD8D7954F25F4C7002D398778F28C50959F54097796317C142DE7D4CE9ABAF4DB9A61F51900DAD6AADD1904F02C38F861C76FF47436E267C7EF23D169574D80495C200DF495EBFBF6A1F739265DB1E0E4233B7AD7C3B738069B89CA569E4FAF928D01C7FF1C30BD17E88E1ACF6938CA235F26908340C88EEB3250FBE40DB6C995477E41C079862EBCC2D8E07A7287591A7BA111AE4F530AC5C513586AD4E4544E3FEADE804A6E38455426C1394C248F5095587854F5C3F4641AB97A49A1D9730D6F64A875C728E634C98C2564F7451AE3F046106547AA44E69F3D0D8A931AE998886A8D5D4E76D21ECAADF95B389AD70B2257636F092C76FAF42CC668F6D819CCD2EE96280F1406F1704E57B95AE0490372EFB465069C76420280FA9B64250D1633B20A8E8923747D0628BDAB5FFA5FDEABED153DC286F7F596F74D70EB829F863CFA859C49E5087420D9CA8F43C9FB342FC4C359B33B093EFCF521EEACA1461E0334CC5239B55BCAB8D439D661099444D802BA2B580F2AB40054819503D8C2BCFF21AADE351440FD8F2DCAD1196CFFD126C8D032A76FD4AB42668BE3895C9D969F751B5AC628342F24E9B851A8E8610F2E42536BC83534CE7B2AA63BAC4C27DA2E15AC378673438A825723538A96CCCE05E2AA9D9EE255D40D62724DBC84B52F864F052D998C1BDC439DAEE244D50D0232CD8C845E2123ED0602B4F3AAAD5A62A1B3B45AE14FF30760C4955E31B14C73E59D692ACF8176B5664584DBF9DF54F3C0A0B0CC74D35F94795B595261A256889A552500D965EFA494ACF114573C4CE79A65EA88869D756C3F45FAAAC2F9F6A2796EB4029CDFEE637ABBA0B7C61B555C3118E72096D0C594C93636818A0AF6EB1B43714A04473763F8D822C24E610CB5CBBB8C1ABD72FBEA8086347B25F09A1147F2981AEE8FC4E5DA30E8BC1BAA98A61D6EF2A3384C9E165045A77B9292A35A39487547514D3C1D5CEBACE14CCF4EC2E3952ECDF5BAD08AF33B6787A4A1D807FEA8951CB7050C06A65DD51C524943AA658D21D51CA34A9434A453DACACE7930846D60BD6C23378542FD15D839A415247574BBB236B7249EAD09AE235B03536CB65DD5135E92675604D7177EC55EE893C8DEEF1EA65DCBF6CB07C159BDCCDD62F03C6EBCC89C32C7FB5BBFC3A50ED734F2C7E5BAF80F1EF7BC927E34E6F033E15A71B9BF1C980619E7D847B7071F269BCBC37630A97DBC204DF74B96FC6EBC7DA57E586B2D593452AEDD5964FDADA8DF936ABFD518DB2EF2A446CAB742330EA25A5381C3181D1ECE7601AF8984DE5A5C00D22FE02A7B448E8B08F0F8F8EA55739FBF342C649532FD06C534DCF64C43EDB426E16794289FB88123553628357242B50E510FA8A78F87962FF9AD73ACDCF33D85FF9E703EB2AFD4CFC9F33287848326CFDA6667E0E9355DFE11D4765E86F6FE2814477975FFDF4A5A87A60DD25309C4EAD43C9D1EB74BFF86CA2973545D50DAC59FB31C5DB1D6DC22B052DAA345AD67F9430F7E9200F124A2BBF09D1F3BFFA9AA67D74B011A2E661C1507883B8D0F470601D2CE3A3010F7ED2FCD140BFC6EA1F11AC639AF101814FFA83C9CF07BA4F4365CD1DAE439A2DD336A6A4DCCFADE9D71BE562EE7A6D52B2B4371AE86A26760FB841B3AD370B51DE5816F3604BA726497930EC5DF2FED53393F725197915B4EF3607799B69C70DD74A7FAB6CE33DC88FD3E4FBEC3EA778DB5C339D01EF796266BFCCE13D231B5FE6779F1FBC6DB2990E88F79C6CBDB280F78C6BBB5A3F77CCB4CE4BE8CE737AD5F424C35D8EEE14B92D67B7387287EDFF3C0212141165F1D4529F24D694E0DAA2702562566ACE4E93152B0347D1AB4834ABEDD756BEE0373696CB34AB35E47436E9E6F37FA36E2ED3ACDB9029B98B6C636DAEA22E03BC651E6B4AA27A4BD9C5424B5A92D9DB62D6C68BF9B7944C3C885384D163B85D7E3BB9C383B864C8A1D3235758BD2886B5B3F66F34C2FA9DFACB1504FB171B09768555B392B9228BA85CBC258B4A11E984E60653E4C1927A96507F815C0AC5EC003A7F2B9E1FEAB16B9039F6AEC85D46E38C429371380F84032F160434E9CF13A2459BC77731FB950ED10430D36707F777E463E6075E65F7A5E64CC800C1A20B7EDCCBFA92B263DFE54B85741B918E40DC7D5550F480C33800B0F48ECCD0135EC736A0DF355E22F7657502680269EF08D1EDE3731F2D1314A61C63551F7E0287BDF0F9FBBF004BAE5E89AA540000, N'6.2.0-61023')
SET IDENTITY_INSERT [dbo].[Actor] ON 

INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (1, N'Al', N'Pacino')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (2, N'Ben', N'Affleck')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (3, N'Bill', N'Murray')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (4, N'Billy Bob', N'Thornton')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (5, N'Brad', N'Pitt')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (6, N'Bruce', N'Willis')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (7, N'Cary', N'Elwes')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (8, N'Chadwick', N'Boseman')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (9, N'Channing', N'Tatum')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (10, N'Charlie', N'Hunnam')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (11, N'Charlie', N'Sheen')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (12, N'Chiwetel', N'Ejiofor')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (13, N'Chris', N'Evans')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (14, N'Chris', N'Hemsworth')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (15, N'Chris', N'Pine')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (16, N'Clint', N'Eastwood')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (17, N'Daniel', N'Kaluuya')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (18, N'David', N'Oyelowo')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (19, N'Denzel', N'Washington')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (20, N'Edward', N'Norton')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (21, N'Elijah', N'Wood')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (22, N'Elle', N'Fanning')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (23, N'Ewan', N'McGregor')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (24, N'Frank', N'Langella')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (25, N'Gal', N'Gadot')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (26, N'George', N'Clooney')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (27, N'Gerard', N'Butler')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (28, N'Harrison', N'Ford')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (29, N'Henry', N'Thomas')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (30, N'Hugh', N'Jackman')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (31, N'Idris', N'Elba')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (32, N'Jack', N'Nicholson')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (33, N'Jake', N'Gyllenhaal')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (34, N'Jamie', N'Foxx')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (35, N'Jason', N'London')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (36, N'Jason', N'Momoa')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (37, N'Jason', N'Statham')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (38, N'Jeffrey Dean', N'Morgan')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (39, N'Jeremy', N'Renner')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (40, N'Jessica', N'Chastain')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (41, N'Jim', N'Caviezel')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (42, N'John', N'Cusak')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (43, N'John', N'Krasinski')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (44, N'John', N'Travolta')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (45, N'Johnny', N'Depp')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (46, N'Keanu', N'Reeves')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (47, N'Kevin', N'Spacey')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (48, N'Leonardo', N'DiCaprio')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (49, N'Lupita', N'Nyong''o')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (50, N'Maggie', N'Smith')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (51, N'Mark', N'Hamill')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (52, N'Mark', N'Wahlberg')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (53, N'Matthey', N'McConaughey')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (54, N'Mel', N'Gibson')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (55, N'Michael J', N'Fox')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (56, N'Michael', N'Keaton')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (57, N'Mickey', N'Rourke')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (58, N'Mike', N'Vogel')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (59, N'Morgan', N'Freeman')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (60, N'Naomi', N'Watts')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (61, N'Natalie', N'Portman')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (62, N'Nicolas', N'Cage')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (63, N'Nicole', N'Kidman')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (64, N'Oprah', N'Winfrey')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (65, N'Robert', N'Downey Jr.')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (66, N'Ron', N'Perlman')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (67, N'Russell', N'Crowe')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (68, N'Sam', N'Neill')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (69, N'Sandra', N'Bullock')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (70, N'Scarlett', N'Johansson')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (71, N'Sean', N'Connery')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (72, N'Shia', N'LaBeouf')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (73, N'Sigourney', N'Weaver')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (74, N'Simon', N'Pegg')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (75, N'Tom', N'Cruise')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (76, N'Tom', N'Hanks')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (77, N'Vince', N'Vaughn')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (78, N'Will', N'Ferrell')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (79, N'Will', N'Smith')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (80, N'Albert', N'Finney')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (81, N'Amber', N'Heard')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (82, N'Angelina', N'Jolie')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (83, N'Annette', N'Bening')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (84, N'Anthony', N'Mackie')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (85, N'Barry', N'Pepper')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (86, N'Benedict', N'Cumberbatch')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (87, N'Cameron', N'Diaz')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (88, N'Christian', N'Bale')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (89, N'Christina', N'Applegate')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (90, N'Christopher', N'Lloyd')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (91, N'Dakota', N'Fanning')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (92, N'Dennis', N'Quaid')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (93, N'Drew', N'Barrymore')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (94, N'Emily', N'Blunt')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (95, N'Gary', N'Sinise')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (96, N'Heath', N'Ledger')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (97, N'Hugo', N'Weaving')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (98, N'Ian', N'McKellen')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (99, N'Jeff', N'Goldblum')
GO
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (100, N'Jennifer', N'Connelly')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (101, N'Jennifer', N'Garner')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (102, N'Joaquin', N'Phoenix')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (103, N'John C.', N'Reilly')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (104, N'Jon', N'Favreau')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (105, N'Joseph', N'Gordon-Levitt')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (106, N'Josh', N'Brolin')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (107, N'Jude', N'Law')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (108, N'Kevin', N'Bacon')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (109, N'Lena', N'Heady')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (110, N'Martin', N'Lawrence')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (111, N'Matt', N'Damon')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (112, N'Meryl', N'Streep')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (113, N'Michael B', N'Jordon')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (114, N'Michael', N'Biehn')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (115, N'Michael', N'Douglas')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (116, N'Michael', N'Sheen')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (117, N'Michelle', N'Pfeiffer')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (118, N'Mila', N'Kunis')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (119, N'Natalie', N'Portman')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (120, N'Nick', N'Frost')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (121, N'Pablo', N'Schreiber')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (122, N'Patrick', N'Stewart')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (123, N'Reese', N'Witherspoon')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (124, N'Ryan', N'Phillippe')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (125, N'Samuel L', N'Jackson')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (126, N'Sean', N'Penn')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (127, N'Taylor', N'Kitsch')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (128, N'Viggo', N'Mortensen')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (129, N'Winston', N'Duke')
INSERT [dbo].[Actor] ([ActorID], [FirstName], [LastName]) VALUES (130, N'Zachary', N'Quinto')
SET IDENTITY_INSERT [dbo].[Actor] OFF
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'f857c9a0-1379-4769-a91c-c2b7f3aba345', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'cbc19c08-1fd4-4d54-afb1-044922c49fbb', N'Customer')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'3c5e9468-e9c9-4fcf-88b0-471009694c4d', N'cbc19c08-1fd4-4d54-afb1-044922c49fbb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4c2793a5-fe13-4667-8c0e-e6f2b0d9726b', N'cbc19c08-1fd4-4d54-afb1-044922c49fbb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5c9a20be-4656-4cb5-ab08-a5781c0577d4', N'cbc19c08-1fd4-4d54-afb1-044922c49fbb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'c44d0b3a-df0e-43e4-a27f-c1caa38b86a7', N'f857c9a0-1379-4769-a91c-c2b7f3aba345')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'23148a63-7b5a-4083-9265-c4fb5e008312', N'rachel3@moviestore.com', 0, N'ALrEejQIsSU5QK/pMiBvwEF5aN9aoCNI7oAmSSdPjjbpTUjeHYJkCdgxlTaSqIVfkQ==', N'ebe3c53a-8e30-415e-90d6-a585952eb0c0', NULL, 0, 0, NULL, 1, 0, N'rachel3@moviestore.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'3c5e9468-e9c9-4fcf-88b0-471009694c4d', N'customer@moviestore.com', 0, N'AKUNuDrKOlGnM8PIWplumixudpDIqbg7QB1QiaMe3EnA5XUn2wQmYoJd0H/BRUkjWw==', N'4228d6cd-7570-4791-b519-a4a754aa03b3', NULL, 0, 0, NULL, 1, 0, N'customer@moviestore.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4c2793a5-fe13-4667-8c0e-e6f2b0d9726b', N'rachel@moviestore.com', 0, N'AGuy4i/Zt9VSY4T+dQpqj8quxAheaKVjwTF+295pi2TIn0B5ouiSY4LmG13RfvERGA==', N'83d96b0d-bc41-476b-8823-bd2b16ae782c', NULL, 0, 0, NULL, 1, 0, N'rachel@moviestore.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'5c9a20be-4656-4cb5-ab08-a5781c0577d4', N'rachel2@moviestore.com', 0, N'AICSajNOvBAFCCf33Ic27ccFtGYxBSKC7FYd03B2g4Qv146Ku1SSwaEhf8cU9c8d5w==', N'17f1c4f2-429c-497a-b9e0-7173a56e64b7', NULL, 0, 0, NULL, 1, 0, N'rachel2@moviestore.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c44d0b3a-df0e-43e4-a27f-c1caa38b86a7', N'admin@moviestore.com', 0, N'AFqFpyiDOYexx/35qcth4iSiqSs0mOlhWGJ96TVLMOfAIhuTOUrbNV5ak3TU59XIZQ==', N'fd2a2cc1-11d7-48ad-96dc-fe494ee8d95b', NULL, 0, 0, NULL, 1, 0, N'admin@moviestore.com')
SET IDENTITY_INSERT [dbo].[Director] ON 

INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (1, N'Steven', N'Spielberg')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (2, N'Stanley', N'Kubrick')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (3, N'Martin', N'Scorsese')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (4, N'Quentin', N'Tarantino')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (5, N'Christopher', N'Nolan')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (6, N'James', N'Cameron')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (7, N'David', N'Fincher')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (8, N'Clint', N'Eastwood')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (9, N'Spike', N'Lee')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (10, N'Ridley', N'Scott')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (11, N'Tony', N'Scott')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (12, N'Terrence', N'Malick')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (13, N'John', N'Singleton')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (14, N'David', N'Lynch')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (15, N'Robert', N'Zemeckis')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (16, N'Peter', N'Jackson')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (17, N'Tim', N'Burton')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (18, N'Richard', N'Linklater')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (19, N'JJ', N'Abrams')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (20, N'George', N'Lucas')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (21, N'Spike', N'Jonze')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (22, N'Robert', N'Altman')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (23, N'Steven', N'Soderbergh')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (24, N'Oliver', N'Stone')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (25, N'Michael', N'Bay')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (26, N'Ron', N'Howard')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (27, N'Ang', N'Lee')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (28, N'Alfonso', N'Cuaron')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (29, N'Guillermo', N'del Toro')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (30, N'Peter', N'Berg')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (31, N'Sam', N'Mendes')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (32, N'Joe', N'Russo')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (33, N'Anthony', N'Russo')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (34, N'Ryan', N'Coogler')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (35, N'Darren', N'Aronofsky')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (36, N'Edgar', N'Wright')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (37, N'Guy', N'Ritchie')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (38, N'James', N'Mangold')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (39, N'James', N'Wan')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (40, N'Matt', N'Reeves')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (41, N'Zack', N'Snyder')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (42, N'Joss', N'Whedon')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (43, N'Jordan', N'Peele')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (44, N'Kathryn', N'Bigelow')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (45, N'Steve', N'McQueen')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (46, N'Sofia', N'Coppola')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (47, N'Patty', N'Jenkins')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (48, N'Adam', N'McKay')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (49, N'Doug', N'Liman')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (50, N'Ava', N'DuVernay')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (51, N'Louis', N'Leterrier')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (52, N'Kenneth', N'Branagh')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (53, N'Jon', N'Favreau')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (54, N'Richard', N'Marquand')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (1002, N'Irvin', N'Kerschner')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (1003, N'Joe', N'Johnston')
INSERT [dbo].[Director] ([DirectorID], [FirstName], [LastName]) VALUES (1004, N'Justin', N'Lin')
SET IDENTITY_INSERT [dbo].[Director] OFF
SET IDENTITY_INSERT [dbo].[Genres] ON 

INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (1, N'Comedy')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (2, N'SciFi')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (3, N'Horror')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (4, N'Romance')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (5, N'Action')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (6, N'Thriller')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (7, N'Drama')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (8, N'Mystery')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (9, N'Crime')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (10, N'Animation')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (11, N'Adventure')
INSERT [dbo].[Genres] ([GenreID], [GenreName]) VALUES (12, N'Fantasy')
SET IDENTITY_INSERT [dbo].[Genres] OFF
SET IDENTITY_INSERT [dbo].[MovieActor] ON 

INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (1, 5, 27)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (2, 5, 109)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (3, 8, 12)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (4, 9, 43)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (5, 9, 121)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (6, 10, 20)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (7, 10, 85)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (8, 11, 67)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (9, 11, 88)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (10, 12, 67)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (11, 12, 100)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (12, 13, 64)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (13, 13, 123)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (14, 14, 62)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (15, 14, 112)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (16, 15, 73)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (17, 16, 73)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (18, 16, 114)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (19, 17, 47)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (20, 17, 83)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (21, 18, 78)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (22, 18, 89)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (23, 19, 1)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (24, 19, 92)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (25, 20, 76)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (26, 20, 108)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (27, 22, 36)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (28, 22, 81)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (29, 23, 6)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (30, 23, 2)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (31, 24, 65)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (32, 24, 13)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (33, 25, 70)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (34, 25, 14)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (35, 26, 65)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (36, 26, 106)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (37, 27, 55)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (38, 27, 90)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (39, 28, 79)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (40, 28, 110)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (41, 29, 79)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (42, 29, 110)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (43, 30, 56)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (44, 30, 32)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (45, 31, 56)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (46, 31, 117)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (47, 32, 42)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (48, 32, 87)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (49, 33, 23)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (50, 33, 80)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (51, 34, 8)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (52, 34, 113)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (53, 35, 61)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (54, 35, 118)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (55, 36, 33)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (56, 36, 96)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (57, 37, 13)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (58, 37, 97)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (59, 38, 13)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (60, 38, 84)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (61, 39, 58)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (62, 40, 35)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (63, 40, 53)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (64, 41, 29)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (65, 41, 93)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (66, 42, 75)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (67, 42, 94)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (68, 43, 52)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (69, 45, 4)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (70, 46, 24)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (71, 46, 116)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (72, 47, 17)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (73, 48, 67)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (74, 48, 102)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (75, 49, 50)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (76, 49, 124)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (77, 50, 69)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (78, 50, 26)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (79, 51, 79)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (80, 52, 66)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (81, 53, 66)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (82, 54, 39)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (83, 54, 84)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (84, 55, 48)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (85, 55, 105)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (86, 56, 28)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (87, 56, 71)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (88, 57, 28)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (89, 58, 65)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (90, 59, 65)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (91, 59, 57)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (92, 60, 68)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (93, 60, 99)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (94, 61, 2)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (95, 61, 25)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (96, 62, 10)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (97, 63, 30)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (98, 63, 122)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (99, 64, 52)
GO
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (101, 64, 127)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (102, 65, 21)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (103, 65, 98)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (104, 66, 21)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (105, 66, 128)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (106, 67, 21)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (107, 67, 98)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (108, 68, 3)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (109, 68, 70)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (110, 69, 9)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (111, 69, 53)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (112, 70, 19)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (113, 70, 91)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (114, 71, 52)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (115, 72, 5)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (116, 72, 82)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (117, 73, 60)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (118, 74, 26)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (119, 74, 5)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (120, 77, 26)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (121, 77, 5)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (122, 75, 26)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (123, 75, 5)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (124, 78, 31)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (125, 78, 10)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (126, 79, 52)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (127, 80, 46)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (128, 81, 44)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (129, 81, 125)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (130, 82, 28)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (131, 83, 54)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (132, 83, 95)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (133, 84, 76)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (134, 85, 76)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (135, 85, 111)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (136, 86, 7)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (137, 87, 59)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (138, 88, 18)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (139, 89, 74)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (140, 89, 120)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (141, 90, 65)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (142, 90, 107)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (143, 91, 65)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (144, 91, 107)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (145, 92, 45)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (146, 93, 37)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (147, 93, 5)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (148, 94, 15)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (149, 94, 130)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (150, 95, 15)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (151, 95, 130)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (152, 96, 15)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (153, 96, 86)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (154, 97, 51)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (155, 97, 28)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (156, 98, 51)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (157, 98, 28)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (158, 99, 51)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (159, 99, 28)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (160, 100, 78)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (161, 100, 103)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (162, 101, 22)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (163, 102, 77)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (164, 102, 104)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (165, 103, 65)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (166, 103, 125)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (167, 104, 63)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (168, 105, 48)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (169, 105, 111)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (170, 106, 34)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (171, 106, 101)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (172, 107, 53)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (173, 108, 78)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (174, 108, 52)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (175, 109, 71)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (176, 109, 62)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (177, 110, 32)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (178, 112, 30)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (179, 113, 57)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (180, 114, 41)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (181, 114, 126)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (182, 115, 14)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (183, 115, 61)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (184, 116, 72)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (185, 117, 16)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (186, 117, 59)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (187, 118, 49)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (191, 118, 129)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (192, 119, 11)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (193, 119, 115)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (194, 120, 72)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (195, 120, 115)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (196, 121, 38)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (197, 122, 25)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (198, 122, 15)
INSERT [dbo].[MovieActor] ([MovieActorID], [MovieID], [ActorID]) VALUES (199, 123, 40)
SET IDENTITY_INSERT [dbo].[MovieActor] OFF
SET IDENTITY_INSERT [dbo].[MovieDirector] ON 

INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (1, 5, 41)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (2, 8, 45)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (3, 9, 25)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (4, 10, 9)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (5, 11, 38)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (6, 12, 26)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (7, 13, 50)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (8, 14, 21)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (10, 15, 10)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (11, 16, 6)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (12, 17, 31)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (13, 18, 48)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (14, 19, 24)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (15, 20, 26)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (16, 22, 39)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (17, 23, 25)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (18, 24, 42)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (19, 25, 32)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (20, 26, 33)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (21, 27, 15)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (22, 28, 25)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (23, 29, 25)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (24, 30, 17)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (25, 31, 17)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (26, 32, 21)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (27, 33, 17)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (28, 34, 34)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (29, 35, 35)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (30, 36, 27)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (31, 37, 1003)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (32, 38, 32)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (33, 39, 40)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (34, 40, 18)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (35, 41, 1)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (36, 42, 49)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (37, 43, 13)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (38, 45, 30)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (39, 46, 26)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (40, 47, 43)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (41, 48, 10)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (42, 49, 22)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (43, 50, 28)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (44, 51, 30)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (45, 52, 29)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (46, 53, 29)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (47, 54, 44)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (48, 55, 5)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (49, 56, 1)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (50, 57, 1)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (52, 58, 53)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (53, 59, 53)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (54, 60, 1)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (55, 61, 41)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (56, 62, 37)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (57, 63, 38)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (58, 64, 30)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (59, 65, 16)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (60, 66, 16)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (61, 67, 16)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (62, 68, 46)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (63, 69, 23)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (64, 70, 11)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (65, 71, 30)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (66, 72, 49)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (67, 73, 14)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (68, 74, 23)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (69, 77, 23)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (70, 75, 23)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (71, 78, 29)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (72, 79, 30)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (73, 80, 44)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (74, 81, 4)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (75, 82, 1)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (76, 83, 26)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (77, 84, 31)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (78, 85, 1)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (79, 86, 39)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (80, 87, 7)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (81, 88, 50)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (82, 89, 36)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (83, 90, 37)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (84, 91, 37)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (85, 92, 17)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (86, 93, 37)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (87, 94, 19)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (88, 95, 1004)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (89, 96, 19)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (90, 97, 20)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (91, 98, 1002)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (92, 99, 54)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (93, 100, 48)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (94, 101, 19)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (95, 102, 49)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (96, 103, 42)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (97, 104, 46)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (98, 105, 3)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (99, 106, 30)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (100, 107, 18)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (101, 108, 48)
GO
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (102, 109, 25)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (103, 110, 2)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (104, 112, 38)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (105, 113, 35)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (106, 114, 12)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (107, 115, 52)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (108, 116, 25)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (109, 117, 8)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (110, 118, 43)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (111, 119, 24)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (112, 120, 24)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (113, 121, 41)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (114, 122, 47)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (115, 123, 44)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (117, 25, 33)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (118, 38, 33)
INSERT [dbo].[MovieDirector] ([MovieDirectorID], [MovieID], [DirectorID]) VALUES (119, 26, 32)
SET IDENTITY_INSERT [dbo].[MovieDirector] OFF
SET IDENTITY_INSERT [dbo].[Movies] ON 

INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (5, N'300', 5, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2007-03-09' AS Date), 1002, N'In the Battle of Thermopylae of 480 BC an alliance of Greek city-states fought the invading Persian army in the mountain pass of Thermopylae. Vastly outnumbered, the Greeks held back the enemy in one of the most famous last stands of history. Persian King Xerxes led a Army of well over 100,000 (Persian king Xerxes before war has about 170,000 army) men to Greece and was confronted by 300 Spartans, 700 Thespians, and 400 Thebans.', N'300.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (8, N'12 Years a Slave', 7, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2013-11-08' AS Date), 28, N'Based on an incredible true story of one man''s fight for survival and freedom. In the pre-Civil War United States, Solomon Northup, a free black man from upstate New York, is abducted and sold into slavery. Facing cruelty personified by a malevolent slave owner, as well as unexpected kindnesses, Solomon struggles not only to stay alive, but to retain his dignity. In the twelfth year of his unforgettable odyssey, Solomon''s chance meeting with a Canadian abolitionist will forever alter his life.', N'12Years.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (9, N'13 Hours', 5, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2016-01-15' AS Date), 3, N'Libya, 2012. At an unofficial CIA base in Benghazi a group of ex-military contractors are providing security. In the aftermath of Gaddafi''s downfall a power vacuum exists and the climate is volatile. Military weapons are freely available. The US Ambassador to Libya, Chris Stevens, makes a visit to the area, staying in a compound near the CIA base. On the night of 11 September, 2012, the Ambassador''s compound is attacked by hordes of heavily armed locals. The only forces willing and able to defend it are six CIA contractors.', N'13Hours.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (10, N'25th Hour', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2003-01-10' AS Date), 14, N'The 25th Hour depicts the last day of freedom for a young man before he begins serving a seven-year jail term for drug dealing. Prowling through the city until dawn with his two close male friends and his girlfriend, he is forced to re-examine his life and how he got himself into his predicament, which leads to a shocking, disturbing finale.', N'25thHour.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (11, N'3:10 to Yuma', 5, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2007-09-07' AS Date), 11, N'Rancher Dan Evans heads into Bisbee to clear up issues concerning the sale of his land when he witnesses the closing events of a stagecoach robbery led by famed outlaw Ben Wade. Shortly thereafter, Wade is captured by the law in Bisbee and Evans finds himself one of the escorts who will take Wade to the 3:10 to Yuma train in Contention for the reward of $200. Evans''s effort to take Wade to the station is in part an effort to save his land but also part of an inner battle to determine whether he can be more than just a naive rancher in the eyes of his impetuous and gunslinging son William Evans. The transport to Contention is hazardous and filled with ambushes by Indians, pursuits by Wade''s vengeful gang and Wade''s own conniving and surreptitious demeanor that makes the ride all the more intense.', N'Yuma.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (12, N'A Beautiful Mind', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2002-01-04' AS Date), 4, N'From the heights of notoriety to the depths of depravity, John Forbes Nash, Jr. experienced it all. A mathematical genius, he made an astonishing discovery early in his career and stood on the brink of international acclaim. But the handsome and arrogant Nash soon found himself on a painful and harrowing journey of self-discovery. After many years of struggle, he eventually triumphed over his tragedy, and finally - late in life - received the Nobel Prize.', N'BeautifulMind.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (13, N'A Wrinkle in Time', 12, CAST(24.9900 AS Decimal(19, 4)), 0, CAST(N'2018-03-09' AS Date), 7, N'Following the discovery of a new form of space travel as well as Meg''s father''s disappearance, she, her brother, and her friend must join three magical beings - Mrs. Whatsit, Mrs. Who, and Mrs. Which - to travel across the universe to rescue him from a terrible evil.', N'WrinkleInTime.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (14, N'Adaptation.', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2003-02-14' AS Date), 31, N'Frequently cynical screenwriter Charlie Kaufman has just taken on a new assignment. That is, to adapt writer Susan Orlean''s "The Orchid Thief" into a screenplay, all of it based on the life of the eccentric John Laroche, an exotic plant collector based out of Florida. While his easygoing twin brother Donald, is writing scripts with ease, Charlie finds himself on a perpetual struggle that never seems to end.', N'Adaptation.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (15, N'Alien', 2, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1979-06-22' AS Date), 2, N'In the distant future, the crew of the commercial spaceship Nostromo are on their way home when they pick up a distress call from a distant moon. The crew are under obligation to investigate and the spaceship descends on the moon afterwards. After a rough landing, three crew members leave the spaceship to explore the area on the moon. At the same time as they discover a hive colony of some unknown creature, the ship''s computer deciphers the message to be a warning, not a distress call. When one of the eggs is disturbed, the crew realizes that they are not alone on the spaceship and they must deal with the consequences.', N'Alien.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (16, N'Aliens', 2, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1986-07-18' AS Date), 2, N'57 years after Ellen Ripley had a close encounter with the reptilian alien creature from the first movie, she is called back, this time, to help a group of highly trained colonial marines fight off against the sinister extraterrestrials. But this time, the aliens have taken over a space colony on the moon LV-426. When the colonial marines are called upon to search the deserted space colony, they later find out that they are up against more than what they bargained for. Using specially modified machine guns and enough firepower, it''s either fight or die as the space marines battle against the aliens. As the Marines do their best to defend themselves, Ripley must attempt to protect a young girl who is the sole survivor of the decimated space colony.', N'Aliens.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (17, N'American Beauty', 7, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1999-10-01' AS Date), 1, N'Lester and Carolyn Burnham are, on the outside, a perfect husband and wife in a perfect house in a perfect neighborhood. But inside, Lester is slipping deeper and deeper into a hopeless depression. He finally snaps when he becomes infatuated with one of his daughter''s friends. Meanwhile, his daughter Jane is developing a happy friendship with a shy boy-next-door named Ricky, who lives with an abusive father.', N'AmericanBeauty.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (18, N'Anchorman', 1, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-07-09' AS Date), 1, N'In 1970s San Diego, journalism was a well respected profession and people actually cared about what they saw on TV. And the top rated anchor man in the city is Ron Burgundy. He enjoys his run at the top, and has for the last five years. And his news team is equally as good as he is. Professional jock and former professional baseball player Champ Kind handles the sports, the curiously dim witted Brick Tamland - who''s a few channels short of a cable subscription - handles the weather, and ladies'' man Brian Fantana - whose collection of fine scents would be in the Guinness Book Of Records - handles the on-field reporting. But now all that is about to change forever. The TV station Burgundy works for, Channel 4, has embraced diversity and has hired a beautiful new female anchor named Veronica Corningstone. While Ron Burgundy and the rest of the Channel 4 news team enjoys fighting with competitors, drinking, and flirting with the ladies, Veronica quietly climbs her way to the top. ', N'Anchorman.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (19, N'Any Given Sunday', 7, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1999-12-22' AS Date), 1002, N'An aging football coach finds himself struggling with his personal and professional life while trying to hold his team together. A star quarterback has been knocked out of the game and a naive football player replaces him only to become exposed to the world of sports and become a danger to himself and to his players. Meanwhile, the coach finds himself constantly at battle with the team owner''s money and power hungry daughter intent on moving the team out.', N'AnyGivenSunday.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (20, N'Apollo 13', 7, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1995-06-30' AS Date), 4, N'Based on the true story of the ill-fated 13th Apollo mission bound for the moon. Astronauts Lovell, Haise and Swigert were scheduled to fly Apollo 14, but are moved up to 13. It''s 1970, and The US has already achieved their lunar landing goal, so there''s little interest in this "routine" flight.. until that is, things go very wrong, and prospects of a safe return fade.', N'Apollo13.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (22, N'Aquaman', 11, CAST(24.9900 AS Decimal(19, 4)), 0, CAST(N'2018-12-21' AS Date), 1002, N'Arthur Curry, half human half from Atlantis, goes on a trip of a lifetime. Not only does this adventure compel him to come to terms with his real identity, but it also forces him to discover whether he is entirely worthy of fulfilling his own destiny: becoming a king.', N'Aquaman.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (23, N'Armageddon', 5, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1998-07-01' AS Date), 14, N'A giant, global-killing asteriod, like the one that killed off the dinosaurs 65 million years ago is 18 days away from hitting the Earth. NASA''s been caught with their pants down and needs a new plan to stop the rock. They enlist the help of Harry Stamper, an expert deep core driller, to train their astronauts and help them drill into the asteroid and plant a nuclear bomb. ', N'Armageddon.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (24, N'Avengers: Age of Ultron', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2015-05-01' AS Date), 24, N'Tony Stark creates the Ultron Program to protect the world, but when the peacekeeping program becomes hostile, The Avengers go into action to try and defeat a virtually impossible enemy together. Earth''s mightiest heroes must come together once again to protect the world from global extinction.', N'AgeOfUltron.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (25, N'Avengers: Endgame', 11, CAST(24.9900 AS Decimal(19, 4)), 0, CAST(N'2019-04-26' AS Date), 24, N'After half of all life is snapped away by Thanos, the Avengers are left scattered and divided. Now with a way to reverse the damage, the Avengers and their allies must assemble once more and learn to put differences aside in order to work together and set things right. Along the way, the Avengers realize that sacrifices must be made as they prepare for the ultimate final showdown with Thanos, which will result in the heroes fighting the biggest battle they have ever faced.', N'Endgame.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (26, N'Avengers: Infinity War', 11, CAST(24.9900 AS Decimal(19, 4)), 0, CAST(N'2018-04-27' AS Date), 24, N'As the Avengers and their allies have continued to protect the world from threats too large for any one hero to handle, a new danger has emerged from the cosmic shadows: Thanos. A despot of intergalactic infamy, his goal is to collect all six Infinity Stones, artifacts of unimaginable power, and use them to inflict his twisted will on all of reality. Everything the Avengers have fought for has led up to this moment, the fate of Earth and existence has never been more uncertain.', N'InfinityWar.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (27, N'Back to the Future', 2, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1985-07-03' AS Date), 4, N'Marty McFly, a typical American teenager of the Eighties, is accidentally sent back to 1955 in a plutonium-powered DeLorean "time machine" invented by a slightly mad scientist. During his often hysterical, always amazing trip back in time, Marty must make certain his teenage parents-to-be meet and fall in love - so he can get back to the future.', N'BackToFuture.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (28, N'Bad Boys', 5, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1995-04-07' AS Date), 32, N'Marcus Burnett is a hen-pecked family man. Mike Lowry is a foot-loose and fancy free ladies'' man. Both are Miami policemen, and both have 72 hours to reclaim a consignment of drugs stolen from under their station''s nose. To complicate matters, in order to get the assistance of the sole witness to a murder, they have to pretend to be each other.', N'BadBoys.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (29, N'Bad Boys II', 5, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2003-07-18' AS Date), 32, N'Narcotics cops Mike Lowrey and Marcus Burnett head up a task force investigating the flow of ecstasy into Miami. Their search leads to a dangerous kingpin Johnny Tapia, whose plan to control the city''s drug traffic has touched off an underground war. Meanwhile, things get sexy between Mike and Syd, Marcus''s sister.', N'BadBoys2.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (30, N'Batman', 5, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1989-06-23' AS Date), 1002, N'Having witnessed his parents'' brutal murder as a child, millionaire philanthropist Bruce Wayne fights crime in Gotham City disguised as Batman, a costumed hero who strikes fear into the hearts of villains. But when a deformed madman who calls himself "The Joker" seizes control of Gotham''s criminal underworld, Batman must face his most ruthless nemesis ever while protecting both his identity and his love interest, reporter Vicki Vale.', N'Batman.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (31, N'Batman Returns', 5, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1992-06-19' AS Date), 1002, N'After stopping The Joker''s Rampage, Batman finds himself facing the hideously grotesque Penguin--a deformed villain who emerges from the sewers who plans to be respected into Gotham''s community. Little does Batman know is that devious businessman Max Shreck is working with the Penguin to becoming Mayor of Gotham. And they also plan to frame Batman from a different perspective. Meanwhile, Max''s lowly secretary Selina Kyle gets thrown out a window from her workplace and transforms herself into the mysterious vigilante called Catwoman. Can Batman defeat two fiendish foes at once and clear his name at the same time?', N'BatmanReturns.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (32, N'Being John Malkovich', 7, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1999-12-03' AS Date), 33, N'Street entertainer Craig Schwartz doesn''t seem to have much luck somehow always managing to offend someone - which occasionally leads to a black eye. He eventually gets a job as a file clerk for a company located in an office tower on Floor 7½ - where the ceilings are only 5½ feet high. No one seems to think the arrangement is odd and Craig just gets on with his work. Things take a shift into the bizarre when Craig moves a filing cabinet behind which he finds a tunnel that leads him to see through the eyes of actor John Malkovich. For Craig and the others who become aware of the portal, it represents both risks and opportunities.', N'BeingJohn.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (33, N'Big Fish', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-01-09' AS Date), 9, N'This picture follows the incredible life of Edward Bloom, through a series of flashbacks that begin when his son Will visits him for the last time. Edward is dying of cancer, and Will hasn''t spoken to him for years because he believes him to be a liar that never really cared for his family. As Edward''s story unfolds once again, Will tries to finally understand the truth about who his father really was...', N'BigFish.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (34, N'Black Panther', 11, CAST(24.9900 AS Decimal(19, 4)), 0, CAST(N'2018-04-16' AS Date), 24, N'After the events of Captain America: Civil War, Prince T''Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country''s new king. However, T''Challa soon finds that he is challenged for the throne from factions within his own country. When two foes conspire to destroy Wakanda, the hero known as Black Panther must team up with C.I.A. agent Everett K. Ross and members of the Dora Milaje, Wakandan special forces, to prevent Wakanda from being dragged into a world war. After the events of Captain America: Civil War, Prince T''Challa returns home to the reclusive, technologically advanced African nation of Wakanda to serve as his country''s new king. However, T''Challa soon finds that he is challenged for the throne from factions within his own country. When two foes conspire to destroy Wakanda, the hero known as Black Panther must team up with C.I.A. agent Everett K. Ross and members of the Dora Milaje, Wakandan special forces, to prevent Wakanda from being dragged into a world war. ', N'BlackPanther.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (35, N'Black Swan', 7, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2010-12-17' AS Date), 34, N'Nina is a ballerina in a New York City ballet company whose life, like all those in her profession, is completely consumed with dance. She lives with her obsessive former ballerina mother Erica who exerts a suffocating control over her. When artistic director Thomas Leroy decides to replace prima ballerina Beth MacIntyre for the opening production of their new season, Swan Lake, Nina is his first choice. But Nina has competition: a new dancer, Lily, who impresses Leroy as well. Swan Lake requires a dancer who can play both the White Swan with innocence and grace, and the Black Swan, who represents guile and sensuality. Nina fits the White Swan role perfectly but Lily is the personification of the Black Swan. As the two young dancers expand their rivalry into a twisted friendship, Nina begins to get more in touch with her dark side - a recklessness that threatens to destroy her.', N'BlackSwan.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (36, N'Brokeback Mountain', 4, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2006-01-13' AS Date), 10, N'Two young men, Ennis Del Mar and Jack Twist, meet when they get a job as sheep herders on Brokeback Mountain. They are at first strangers, then they become friends. Throughout the weeks, they grow closer as they learn more about each other. One night, after some heavy drinking, they find a deeper connection. They then indulge in a blissful romance for the rest of the summer. Unable to deal with their feelings for each other, they part ways at the end of the summer. Four years go by, and they each settle down, Ennis in Wyoming with his wife and two girls, and Jack in Texas with his wife and son. Still longing for each other, they meet back up, and are faced with the fact that they need each other. They undeniably need each other, and unsure of what to do, they start a series of "fishing trips", in order to spend time together. The relationship struggles on for years until tragedy strikes.', N'BrokebackMountain.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (37, N'Captain America: The First Avenger', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2011-07-22' AS Date), 24, N'It is 1942, America has entered World War II, and sickly but determined Steve Rogers is frustrated at being rejected yet again for military service. Everything changes when Dr. Erskine recruits him for the secret Project Rebirth. Proving his extraordinary courage, wits and conscience, Rogers undergoes the experiment and his weak body is suddenly enhanced into the maximum human potential. When Dr. Erskine is then immediately assassinated by an agent of Nazi Germany''s secret HYDRA research department (headed by Johann Schmidt, a.k.a. the Red Skull), Rogers is left as a unique man who is initially misused as a propaganda mascot; however, when his comrades need him, Rogers goes on a successful adventure that truly makes him Captain America, and his war against Schmidt begins.', N'CAFirstAvenger.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (38, N'Captain America: The Winter Soldier', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2014-04-04' AS Date), 24, N'For Steve Rogers, awakening after decades of suspended animation involves more than catching up on pop culture; it also means that this old school idealist must face a world of subtler threats and difficult moral complexities. That becomes clear when Director Nick Fury is killed by the mysterious assassin, the Winter Soldier, but not before warning Rogers that SHIELD has been subverted by its enemies. When Rogers acts on Fury''s warning to trust no one there, he is branded as a traitor by the organization. Now a fugitive, Captain America must get to the bottom of this deadly mystery with the help of the Black Widow and his new friend, The Falcon. However, the battle will be costly for the Sentinel of Liberty, with Rogers finding enemies where he least expects them while learning that the Winter Soldier looks disturbingly familiar.', N'CAWinterSoldier.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (39, N'Cloverfield', 2, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2008-01-18' AS Date), 3, N'NTo celebrate Rob''s massive promotion, his lover, Beth, and friends, decide to throw a massive surprise farewell party, now that he is about to move to Japan. However, a deafening explosion and the arrival of an enormous scaly and gangly creature will abruptly interrupt the festivities, as all hell breaks loose in New York City, and the Statue of Liberty is decapitated. As the reptilian behemoth levels Manhattan, a daring dash to rescue Beth begins, while at the same time, everything is recorded through the lens of a hand-held camcorder, amid mayhem and destruction. In the end, where did this relentless invader come from, and above all, is there a chance of survival? As they go to investigate, an adventure deep into the streets of New York begins, as the friends are determined to rescue Rob''s true love.ULL', N'Cloverfield.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (40, N'Dazed & Confused', 1, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1994-02-10' AS Date), 35, N'It''s the last day of school at a high school in a small town in Texas in 1976. The upperclassmen are hazing the incoming freshmen, and everyone is trying to get stoned, drunk, or laid, even the football players that signed a pledge not to.', N'DazedConfused.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (41, N'E.T.', 2, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1982-06-11' AS Date), 4, N'After a gentle alien becomes stranded on Earth, the being is discovered and befriended by a young boy named Elliott. Bringing the extraterrestrial into his suburban California house, Elliott introduces E.T., as the alien is dubbed, to his brother and his little sister, Gertie, and the children decide to keep its existence a secret. Soon, however, E.T. falls ill, resulting in government intervention and a dire situation for both Elliott and the alien.', N'ET.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (42, N'Edge of Tomorrow', 2, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2014-06-06' AS Date), 1002, N'An alien race has hit the Earth in an unrelenting assault, unbeatable by any military unit in the world. Major William Cage is an officer who has never seen a day of combat when he is unceremoniously dropped into what amounts to a suicide mission. Killed within minutes, Cage now finds himself inexplicably thrown into a time loop-forcing him to live out the same brutal combat over and over, fighting and dying again...and again. But with each battle, Cage becomes able to engage the adversaries with increasing skill, alongside Special Forces warrior Rita Vrataski. And, as Cage and Vrataski take the fight to the aliens, each repeated encounter gets them one step closer to defeating the enemy!', N'EdgeOfTomorrow.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (43, N'Four Brothers', 5, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2005-07-01' AS Date), 3, N'Four adopted brothers come to avenge their mother''s death in what appears to be a random killing in a grocery store robbery. However, the boys'' investigation of the death reveals more nefarious activities involving the one brother''s business dealings with a notorious local hoodlum. Two cops who are trying to solve the case may also not be what they seem.', N'FourBrothers.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (45, N'Friday Night Lights', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-10-08' AS Date), 30, N'Odessa, Texas, is a small, town in Texas. Racially divided and economically dying, there is one night that gives the town something to live for: Friday Night. The Permian Panthers have a big winning tradition in Texas high school football, led by QB Mike Winchell and superstar tailback Boobie Miles, but all is not well, as Boobie suffers a career-ending injury in the first game of the season. Hope is lost among citizens in Odessa, and for the team, but Coach Gary Gaines, who believes that "Perfection is being able to look your friends in the eye and know you did everything you could not to let them down", is somehow able to help the team rise up from the ashes and make a huge season comeback. Now on their way to state, the Panthers must go out and be perfect, because they may never matter this much for the rest of their lives.', N'FridayNightLights.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (46, N'Frost/Nixon', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2008-01-22' AS Date), 30, N'Writer Peter Morgan''s legendary battle between Richard Nixon, the disgraced president with a legacy to save, and David Frost, a jet-setting television personality with a name to make, in the story of the historic encounter that changed both their lives. For three years after being forced from office, Nixon remained silent. But in summer 1977, the steely, cunning former commander-in-chief agreed to sit for one all-inclusive interview to confront the questions of his time in office and the Watergate scandal that ended his presidency. Nixon surprised everyone in selecting Frost as his televised confessor, intending to easily outfox the breezy British showman and secure a place in the hearts and minds of Americans (as well as a $600,000 fee). Likewise, Frost''s team harbored doubts about their boss'' ability to hold his own. But as cameras rolled, a charged battle of wits resulted. ULL', N'FrostNixon.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (47, N'Get Out', 3, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2017-02-24' AS Date), 4, N'Chris and his girlfriend Rose go upstate to visit her parents for the weekend. At first, Chris reads the family''s overly accommodating behavior as nervous attempts to deal with their daughter''s interracial relationship, but as the weekend progresses, a series of increasingly disturbing discoveries lead him to a truth that he never could have imagined.', N'GetOut.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (48, N'Gladiator', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2000-05-05' AS Date), 1, N'Maximus is a powerful Roman general, loved by the people and the aging Emperor, Marcus Aurelius. Before his death, the Emperor chooses Maximus to be his heir over his own son, Commodus, and a power struggle leaves Maximus and his family condemned to death. The powerful general is unable to save his family, and his loss of will allows him to get captured and put into the Gladiator games until he dies. The only desire that fuels him now is the chance to rise to the top so that he will be able to look into the eyes of the man who will feel his revenge.', N'Gladiator.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (49, N'Godsford Park', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2002-01-18' AS Date), 36, N'Set in the 1930s, the story takes place in an old-fashioned English country house where a weekend shooting party is underway. The story centers on the McCordle family, particularly the man of the house, William McCordle. Getting on in years, William has become benefactor to many of his relatives and friends. As the weekend goes on, secrets are revealed, and it seems everyone, above stairs and below, wants a piece of William and his money, but how far will they go to get it?', N'GodsfordPark.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (50, N'Gravity', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2002-01-18' AS Date), 1002, N'Dr. Ryan Stone is a medical engineer on her first shuttle mission. Her commander is veteran astronaut Matt Kowalsky, helming his last flight before retirement. Then, during a routine space walk by the pair, disaster strikes: The shuttle is destroyed, leaving Ryan and Matt stranded in deep space with no link to Earth and no hope of rescue. As fear turns to panic, they realize that the only way home may be to venture further into space.', N'Gravity.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (51, N'Hancock', 11, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2008-07-02' AS Date), 6, N'The powerful superhero John Hancock has become a joke because of his alcoholism and clumsiness. He has also become the most hated man in Los Angeles. Though he has saved many lives, he also destroyed a lot of property, costing the city millions every time he goes into action. When he saves the life of PR expert Ray Embrey from an oncoming train, the executive is thankful and believes he can restore Hancock''s image as a true superhero. He brings the anti-hero home for dinner and introduces him to his son Aaron, a big fan, and to his wife, Mary. But for some mysterious reason Mary doesn''t want Hancock anywhere near her or her family.', N'Hancock.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (52, N'Hellboy', 12, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-04-02' AS Date), 25, N'In the final days of World War II, the Nazis attempt to use black magic to aid their dying cause. The Allies raid the camp where the ceremony is taking place, but not before a demon, Hellboy, has already been conjured. Joining the Allied forces, Hellboy eventually grows to adulthood, serving the cause of good rather than evil.', N'Hellboy.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (53, N'Hellbooy II: Golden Army', 12, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2008-07-11' AS Date), 4, N'In this continuation to the adventure of the demon superhero, an evil elf breaks an ancient pact between humans and creatures, as he declares war against humanity. He is on a mission to release The Golden Army, a deadly group of fighting machines that can destroy the human race. As Hell on Earth is ready to erupt, Hellboy and his crew set out to defeat the evil Prince before The Golden Army can destroy humanity''s existence. ', N'Hellboy2.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (54, N'Hurt Locker', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2009-07-31' AS Date), 19, N'An intense portrayal of elite soldiers who have one of the most dangerous jobs in the world: disarming bombs in the heat of combat. When a new sergeant, James, takes over a highly trained bomb disposal team amidst violent conflict, he surprises his two subordinates, Sanborn and Eldridge, by recklessly plunging them into a deadly game of urban combat, behaving as if he''s indifferent to death. As the men struggle to control their wild new leader, the city explodes into chaos, and James'' true character reveals itself in a way that will change each man forever.', N'HurtLocker.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (55, N'Inception', 6, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2010-07-16' AS Date), 1002, N'Dom Cobb is a skilled thief, the absolute best in the dangerous art of extraction, stealing valuable secrets from deep within the subconscious during the dream state, when the mind is at its most vulnerable. Cobb''s rare ability has made him a coveted player in this treacherous new world of corporate espionage, but it has also made him an international fugitive and cost him everything he has ever loved. Now Cobb is being offered a chance at redemption. One last job could give him his life back but only if he can accomplish the impossible, inception. Instead of the perfect heist, Cobb and his team of specialists have to pull off the reverse: their task is not to steal an idea, but to plant one. If they succeed, it could be the perfect crime. But no amount of careful planning or expertise can prepare the team for the dangerous enemy that seems to predict their every move. An enemy that only Cobb could have seen coming.', N'Inception.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (56, N'Indiana Jones and the Last Crusade', 11, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1989-05-24' AS Date), 18, N'An art collector appeals to Indiana Jones to embark on a search for the Holy Grail. He learns that another archaeologist has disappeared while searching for the precious goblet, and the missing man is his own father, Dr. Henry Jones. The artifact is much harder to find than they expected, and its powers are too much for those impure of heart.', N'IJLastCrusade.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (57, N'Indiana Jones and the Temple of Doom', 11, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1984-05-23' AS Date), 18, N'A prequel to Raiders of the Lost Ark (1981) set in 1935, the year before, the professor, archaeologist and adventurer by the name of Indiana Jones is back in action in his latest adventure. This time he teams up with a nightclub singer named Wilhelmina "Willie" Scott and a twelve-year-old Chinese boy named Short Round. They end up in a small distressed village in India, where the people believe that evil spirits have taken all their children away after a sacred precious stone was stolen. They also discover the great mysterious terror surrounding a booby-trapped temple known as the Temple of Doom. Thuggee is beginning to attempt to rise once more, believing that with the power of all five Sankara stones they can rule the world. It''s all up to Indiana to put an end to the Thuggee campaign, rescue the lost children, win the girl and conquer the Temple of Doom.', N'IJTempleDoom.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (58, N'Iron Man', 11, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2008-05-02' AS Date), 24, N'Tony Stark. Genius, billionaire, playboy, philanthropist. Son of legendary inventor and weapons contractor Howard Stark. When Tony Stark is assigned to give a weapons presentation to an Iraqi unit led by Lt. Col. James Rhodes, he''s given a ride on enemy lines. That ride ends badly when Stark''s Humvee that he''s riding in is attacked by enemy combatants. He survives - barely - with a chest full of shrapnel and a car battery attached to his heart. In order to survive he comes up with a way to miniaturize the battery and figures out that the battery can power something else. Thus Iron Man is born. He uses the primitive device to escape from the cave in Iraq. Once back home, he then begins work on perfecting the Iron Man suit. But the man who was put in charge of Stark Industries has plans of his own to take over Tony''s technology for other matters.', N'IronMan.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (59, N'Iron Man 2', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2010-05-07' AS Date), 24, N'With the world now aware of his dual life as the armored superhero Iron Man, billionaire inventor Tony Stark faces pressure from the government, the press, and the public to share his technology with the military. Unwilling to let go of his invention, Stark, along with Pepper Potts, and James "Rhodey" Rhodes at his side, must forge new alliances - and confront powerful enemies. ', N'IronMan2.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (60, N'Jurassic Park', 2, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1993-06-11' AS Date), 22, N'Huge advancements in scientific technology have enabled a mogul to create an island full of living dinosaurs. John Hammond has invited four individuals, along with his two grandchildren, to join him at Jurassic Park. But will everything go according to plan? A park employee attempts to steal dinosaur embryos, critical security systems are shut down and it now becomes a race for survival with dinosaurs roaming freely over the island.', N'JurassicPark.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (61, N'Justice League', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2017-11-17' AS Date), 1002, N'Fueled by his restored faith in humanity and inspired by Superman''s selfless act, Bruce Wayne enlists the help of his newfound ally, Diana Prince, to face an even greater enemy. Together, Batman and Wonder Woman work quickly to find and recruit a team of meta-humans to stand against this newly awakened threat. But despite the formation of this unprecedented league of heroes-Batman, Wonder Woman, Aquaman, Cyborg and The Flash-it may already be too late to save the planet from an assault of catastrophic proportions.', N'JusticeLeague.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (62, N'King Arthur: Legend of the Sword', 12, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2017-05-12' AS Date), 1002, N'An alternative version of the King Arthur legend. As a boy, Arthur is left orphaned after his father, King Uther Pendragon, and mother are killed in a war waged against them by Vortigern, who then assumes the throne. Arthur flees and is raised in a brothel, knowing very little of his birthright. Vortigern wants Arthur dead, to ensure there is no claimant to the throne. The legends foretell that only the next king will be able to draw Excalibur, Uther''s sword, from the rock where it is lodged. So, in an effort to identify Arthur, Vortigern forces all the young men of Arthur''s age to attempt to draw out the sword. Now it is Arthur''s turn. ', N'KingArthur.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (63, N'Logan', 5, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2017-03-03' AS Date), 2, N'In 2029 the mutant population has shrunken significantly due to genetically modified plants designed to reduce mutant powers and the X-Men have disbanded. Logan, whose power to self-heal is dwindling, has surrendered himself to alcohol and now earns a living as a chauffeur. He takes care of the ailing old Professor X whom he keeps hidden away. One day, a female stranger asks Logan to drive a girl named Laura to the Canadian border. At first he refuses, but the Professor has been waiting for a long time for her to appear. Laura possesses an extraordinary fighting prowess and is in many ways like Wolverine. She is pursued by sinister figures working for a powerful corporation; this is because they made her, with Logan''s DNA. A decrepit Logan is forced to ask himself if he can or even wants to put his remaining powers to good use. It would appear that in the near-future, the times in which they were able put the world to rights with razor sharp claws and telepathic powers are now over.', N'Logan.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (64, N'Lone Survivor', 5, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2014-01-10' AS Date), 37, N'Marcus Luttrell, a Navy Seal, and his team set out on a mission to capture or kill notorious Taliban leader Ahmad Shah, in late June 2005. After running into mountain herders and capturing them, they were left with no choice but to follow their rules of engagement or be imprisoned. Now Marcus and his team are left to fight for their lives in one of the most valiant efforts of modern warfare.', N'LoneSurvivor.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (65, N'Lord of the Rings: Fellowship of the Ring', 12, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2001-12-19' AS Date), 8, N'An ancient Ring thought lost for centuries has been found, and through a strange twist of fate has been given to a small Hobbit named Frodo. When Gandalf discovers the Ring is in fact the One Ring of the Dark Lord Sauron, Frodo must make an epic quest to the Cracks of Doom in order to destroy it. However, he does not go alone. He is joined by Gandalf, Legolas the elf, Gimli the Dwarf, Aragorn, Boromir, and his three Hobbit friends Merry, Pippin, and Samwise. Through mountains, snow, darkness, forests, rivers and plains, facing evil and danger at every corner the Fellowship of the Ring must go. Their quest to destroy the One Ring is the only hope for the end of the Dark Lords reign. ', N'LORFellowship.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (66, N'Lord of the Rings: The Two Towers', 12, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2002-12-18' AS Date), 8, N'The continuing quest of Frodo and the Fellowship to destroy the One Ring. Frodo and Sam discover they are being followed by the mysterious Gollum. Aragorn, the Elf archer Legolas, and Gimli the Dwarf encounter the besieged Rohan kingdom, whose once great King Theoden has fallen under Saruman''s deadly spell.', N'LORTwoTowers.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (67, N'Lord of the Rings: The Return of the King', 12, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2003-12-17' AS Date), 8, N'The final confrontation between the forces of good and evil fighting for control of the future of Middle-earth. Frodo and Sam reach Mordor in their quest to destroy the One Ring, while Aragorn leads the forces of good against Sauron''s evil army at the stone city of Minas Tirith.', N'LORReturnOfKing.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (68, N'Lost in Translation', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2003-10-03' AS Date), 10, N'A lonely, aging movie star named Bob Harris and a conflicted newlywed, Charlotte, meet in Tokyo. Bob is there to film a Japanese whiskey commercial; Charlotte is accompanying her celebrity-photographer husband. Strangers in a foreign land, the two find escape, distraction and understanding amidst the bright Tokyo lights after a chance meeting in the quiet lull of the hotel bar. They form a bond that is as unlikely as it is heartfelt and meaningful.', N'LostInTranslation.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (69, N'Magic Mike', 1, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2012-06-29' AS Date), 38, N'Mike Lane is a thirty-year old living in Tampa, Florida. By day he works as a roofer while at night, as Magic Mike, he is the star attraction of the Kings of Tampa, a group of male strippers. Secretly he wants out in order to further a projected furniture-making business but his credit rating precludes a bank loan for this despite his considerable savings. One night Adam, a teen-aged work-mate of Mike, follows him to the club and, when one of the acts is unable to go on, he is prevailed upon to strip - becoming a huge hit. However success goes to his head and his foolish actions not only threaten to jeopardize his sister Brooke''s relationship with Mike but Mike''s ambitions as well.', N'MagicMike.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (70, N'Man on Fire', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-04-23' AS Date), 28, N'Hard drinking, burnt out ex CIA operative John Creasy has given up on life until he''s hired as a bodyguard to protect nine year old Pita Ramos. Bit by bit, Creasy begins to reclaim some of his soul, but when pita is kidnapped, Creasy''s fiery rage is finally released and he will stop at nothing to save her as he sets out on a dangerous, revenge fuelled rescue mission.', N'ManOnFire.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (71, N'Mile 22', 5, CAST(24.9900 AS Decimal(19, 4)), 0, CAST(N'2018-08-17' AS Date), 37, N'In a visceral modern thriller from the director of Lone Survivor, Mark Wahlberg stars as James Silva, an operative of the CIA''s most highly-prized and least-understood unit. Aided by a top-secret tactical command team, Silva must retrieve and transport an asset who holds life-threatening information to Mile 22 for extraction before the enemy closes in.', N'Mile22.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (72, N'Mr & Mrs Smith', 5, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2005-06-10' AS Date), 28, N'John and Jane Smith are a normal married couple, living a normal life in a normal suburb, working normal jobs...well, if you can call secretly being assassins "normal". But neither Jane nor John knows about their spouse''s secret, until they are surprised to find each other as targets! But on their quest to kill each other, they learn a lot more about each other than they ever did in five (or six) years of marriage.', N'MrMrsSmith.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (73, N'Mulholland Drive', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2001-10-19' AS Date), 29, N'A bright-eyed young actress travels to Hollywood, only to be ensnared in a dark conspiracy involving a woman who was nearly murdered, and now has amnesia because of a car crash. Eventually, both women are pulled into a psychotic illusion involving a dangerous blue box, a director named Adam Kesher, and the mysterious night club Silencio.', N'MulhollandDr.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (74, N'Ocean''s Eleven', 9, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2001-12-07' AS Date), 1002, N'Danny Ocean wants to score the biggest heist in history. He combines an eleven member team, including Frank Catton, Rusty Ryan and Linus Caldwell. Their target? The Bellagio, the Mirage and the MGM Grand. All casinos owned by Terry Benedict. It''s not going to be easy, as they plan to get in secretly and out with $150 million', N'Oceans11.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (75, N'Ocean''s Twelve', 9, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-12-10' AS Date), 1002, N'Set three years after "Ocean''s 11," this sequel shows us Danny Ocean gathering up his complete gang of con artists and thieves from the first film in New York City before they all jet off to Amsterdam, Rome, and Paris to pull off three seperate heists. All the while, the boys must deal with increasing pressure from a very mad Terry Benedict, a dedicated Europol agent with a link to Rusty''s past, and a mysterious French rival known as the "Night Fox." Will Ocean''s crew reach their full potential and become the greatest thieves the world has ever known, or will they fall victim to Benedict''s revenge? All bets are off.', N'Oceans12.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (77, N'Ocean''s Thirteen', 9, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2007-06-08' AS Date), 1002, N'The last time we saw Danny Ocean''s crew, they were paying back ruthless casino mogul Terry Benedict after stealing millions from him. However, it''s been a while since they''ve come back together, which is all about to change. When one of their own, Reuben Tishkoff, builds a hotel with another casino owner, Willy Bank, the last thing he ever wanted was to get cut out of the deal personally by the loathsome Bank. Bank''s attitude even goes so far as to finding the amusement in Tishkoff''s misfortune when the double crossing lands Reuben in the hospital because of a heart attack. However, Danny and his crew won''t stand for Bank and what he''s done to a friend. Uniting with their old enemy Benedict, who himself has a vendetta against Bank, the crew is out to pull off a major plan; one that will unfold on the night Bank''s newest hot spot opens up. They''re not in this for the money, but for the revenge.', N'Oceans13.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (78, N'Pacific Rim', 12, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2013-07-12' AS Date), 1002, N'When monstrous creatures, known as Kaiju, started rising from the sea, a war began that would take millions of lives and consume humanity''s resources for years on end. To combat the giant Kaiju, a special type of weapon was devised: massive robots, called Jaegers, which are controlled simultaneously by two pilots whose minds are locked in a neural bridge. But even the Jaegers are proving nearly defenseless in the face of the relentless Kaiju. On the verge of defeat, the forces defending mankind have no choice but to turn to two unlikely heroes - a washed up former pilot and an untested trainee - who are teamed to drive a legendary but seemingly obsolete Jaeger from the past. Together, they stand as mankind''s last hope against the mounting apocalypse.', N'PacificRim.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (79, N'Patriot''s Day', 6, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2017-01-13' AS Date), 39, N'On April 15, 2013 Boston, Massachusetts, Police Sgt, Tommy Saunders is pulling security duty on the annual Boston Marathon when the Tsarnaev brothers strike with their homemade bombs in an act of terrorism. In the resulting chaos as the wounded are cared for, Saunders and his comrades join forces with the FBI to get to the bottom of this attack. As the investigation continues, the Tsarnaev brothers realize that the authorities are close to identifying them and attempt to flee the city to continue their fanatical mayhem. To stop them, a police manhunt is performed that would have bloody confrontations and a massive dragnet shutting down the City of Boston to make sure there is no escape from the law.', N'PatriotsDay.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (80, N'Point Break', 6, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1991-07-12' AS Date), 40, N'In Los Angeles, California, a gang of bank robbers call themselves The Ex-Presidents. commit their crimes while wearing masks of ex-Presidents Reagan, Carter, Nixon, and Johnson. The F.B.I. believes that the members of the gang could be surfers, and send young Agent Johnny Utah undercover at the beach to mix with the surfers and gather information. Utah meets surfer Bodhi, and gets drawn into the lifestyle of his new friend.', N'PointBreak.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (81, N'Pulp Fiction', 5, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1994-10-14' AS Date), 13, N'Faced with life''s cruel irony, the unpredictable stories of a well-dressed pair of low-level hitmen; a gangster''s statuesque moll, and a double-crossing prizefighter become inextricably intertwined, as the small-time crooks, Honey Bunny and Pumpkin, summon up the courage to hold up their favourite L.A. diner. Entrusted with retrieving a glow-emitting leather suitcase which belongs to their boss--the powerful crime kingpin, Marsellus--instead, the dark-suited gunmen, Vincent Vega and Jules Winnfield, end up with a bloody mess. Fortunately--with men like Mr Wolf always around to handle a crisis--there''s time to cool off in a long twist contest, while at the same time, the proud champion boxer, Butch, makes the decision of a lifetime. Soon, things will come full circle, as, once more, Jules and Vincent find themselves in the perfect dead-end situation, exactly where it all began: an all-too-familiar cafeteria. Is truth stranger than fiction?', N'PulpFiction.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (82, N'Raiders of the Lost Ark', 11, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1981-06-12' AS Date), 18, N'The year is 1936. An archeology professor named Indiana Jones is venturing in the jungles of South America searching for a golden statue. Unfortunately, he sets off a deadly trap but miraculously escapes. Then, Jones hears from a museum curator named Marcus Brody about a biblical artifact called The Ark of the Covenant, which can hold the key to humanly existence. Jones has to venture to vast places such as Nepal and Egypt to find this artifact. However, he will have to fight his enemy Rene Belloq and a band of Nazis in order to reach it.', N'IJLostArk.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (83, N'Ransom', 6, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1996-11-08' AS Date), 30, N'Tom Mullen is a millionaire, he built his fortune by working hard. Along the way he learned how to play the game. He has a great family. One day his son is kidnapped. He is willing to pay the ransom but decides to call in the FBI, who manages to go into his home secretly. When he goes to make the drop something goes wrong. The kidnapper calls him again and reschedules it. On the way Mullen decides not to go and appears on TV saying that the ransom he was going to give to the kidnapper is now a bounty on the kidnapper.', N'Ransom.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (84, N'Road to Perdition', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2002-07-12' AS Date), 1, N'It is the year 1931. Mike Sullivan is a henchman of southern Illinois crime boss John Rooney. Having taken Sullivan under his wing as as orphan, Rooney''s paternal affections for him are greater than for his son and heir, Connor Rooney, who is a violent and dangerous man. Sullivan''s eldest son Michael, who is curious about his mysterious father, inadvertently witnesses a mob hit that is carried out by his father and Connor. Michael is caught and sworn to secrecy but Connor views him as a loose end. This puts Sullivan at odds with Rooney who is forced to side with his son, making Sullivan an enemy of the mob. Sullivan then takes action to protect his family and to put an end to the threat.', N'RoadToPerdition.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (85, N'Saving Private Ryan', 7, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1998-07-24' AS Date), 1, N'Opening with the Allied invasion of Normandy on 6 June 1944, members of the 2nd Ranger Battalion under Cpt. Miller fight ashore to secure a beachhead. Amidst the fighting, two brothers are killed in action. Earlier in New Guinea, a third brother is KIA. Their mother, Mrs. Ryan, is to receive all three of the grave telegrams on the same day. The United States Army Chief of Staff, George C. Marshall, is given an opportunity to alleviate some of her grief when he learns of a fourth brother, Private James Ryan, and decides to send out 8 men (Cpt. Miller and select members from 2nd Rangers) to find him and bring him back home to his mother...', N'PrivateRyan.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (86, N'Saw', 3, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-10-29' AS Date), 41, N'Waking up in a bathroom, two men, Adam and Dr. Lawrence Gordon, discover they have been captured by the infamous Jigsaw Killer. The men must escape before time runs out, otherwise, they will face the deadly consequences.', N'Saw.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (87, N'Se7en', 9, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1995-09-22' AS Date), 8, N'Two police detectives - one, Somerset, about to retire and the other, Mills, just transferred into the precinct - investigate the murder of an obese man. On his wall was written the word "Gluttony". Then they are alerted to the murder of a lawyer. On his floor was written the word "Greed". Somerset suspects that the murders were the work of the same man, a man murdering people who have committed the seven deadly sins.', N'Se7en.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (88, N'Selma', 7, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2015-01-09' AS Date), 42, N'The unforgettable true story chronicles the tumultuous three-month period in 1965, when Dr. Martin Luther King, Jr. led a dangerous campaign to secure equal voting rights in the face of violent opposition. The epic march from Selma to Montgomery culminated in President Johnson signing the Voting Rights Act of 1965, one of the most significant victories for the civil rights movement. Director Ava DuVernay''s "Selma" tells the story of how the revered leader and visionary Dr. Martin Luther King, Jr and his brothers and sisters in the movement prompted change that forever altered history.', N'Selma.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (89, N'Shaun of the Dead', 2, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2004-09-24' AS Date), 29, N'Shaun doesn''t have a very good day, so he decides to turn his life around by getting his ex to take him back, but he times it for right in the middle of what may be a zombie apocalypse... But for him, it''s an opportunity to show everyone he knows how useful he is by saving them all. All he has to do is survive... And get his ex back.', N'ShaunDead.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (90, N'Sherlock Holmes', 11, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2009-12-25' AS Date), 1002, N'After finally catching serial killer and occult "sorcerer" Lord Blackwood, legendary sleuth Sherlock Holmes and his assistant Dr. Watson can close yet another successful case. But when Blackwood mysteriously returns from the grave and resumes his killing spree, Holmes must take up the hunt once again. Contending with his partner''s new fiancée and the dimwitted head of Scotland Yard, the dauntless detective must unravel the clues that will lead him into a twisted web of murder, deceit, and black magic - and the deadly embrace of temptress Irene Adler.', N'SherlockHolmes.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (91, N'Sherlock Holmes: Game of Shadows', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2011-12-16' AS Date), 1002, N'With Dr. John Watson about to marry and end their partnership, a disconsolate Sherlock Holmes occupies his time investigating the schemes of his archenemy, Professor James Moriarty. However, when Moriarty warns that he considers the Watsons a legitimate target for his retaliation against the detective, Holmes must save them and get John involved in one last case. To do so, they join the Roma lady Madam Simza Heron''s quest to find her missing brother, Renee, who may be the key to defeating Moriarty. Together, the trio find themselves involved in a dangerous international conspiracy led by the Napoleon of Crime in which the fate of all of Europe hangs in the balance.', N'SHGameShadows.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (92, N'Sleepy Hollow', 6, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1999-11-19' AS Date), 3, N'The curse of the headless horseman is the legacy of the small town of Sleepy Hollow. Spearheaded by the eager Constable Ichabod Crane and his new world ways into the quagmire of secrets and murder, secrets once laid to rest, best forgotten and now reawakened, and he too, holding a dark secret of a past once gone.', N'SleepyHollow.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (93, N'Snatch', 9, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2001-01-19' AS Date), 6, N'Turkish and his close friend/accomplice Tommy get pulled into the world of match fixing by the notorious Brick Top. Things get complicated when the boxer they had lined up gets badly beaten by Mickey, a ''pikey'' ( slang for an Irish Gypsy)- who comes into the equation after Turkish, an unlicensed boxing promoter wants to buy a caravan off the Irish Gypsies. They then try to convince Mickey not only to fight for them, but to lose for them too. Whilst all this is going on, a huge diamond heist takes place, and a fistful of motley characters enter the story, including ''Cousin Avi'', ''Boris The Blade'', ''Franky Four Fingers'' and ''Bullet Tooth Tony''. Things go from bad to worse as it all becomes about the money, the guns, and the damned dog.', N'Snatch,jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (94, N'Star Trek', 2, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2009-05-08' AS Date), 20, N'On the day of James T. Kirk''s birth, his father dies on his damaged starship in a last stand against a Romulan mining vessel looking for Ambassador Spock, who in this time, has grown on Vulcan disdained by his neighbors for his half-human heritage. 25 years later, James T. Kirk has grown into a young rebellious troublemaker. Challenged by Captain Christopher Pike to realize his potential in Starfleet, he comes to annoy academy instructors like Commander Spock. Suddenly, there is an emergency on Vulcan and the newly-commissioned USS Enterprise is crewed with promising cadets like Nyota Uhura, Hikaru Sulu, Pavel Chekov and even Kirk himself, thanks to Leonard McCoy''s medical trickery. Together, this crew will have an adventure in the final frontier where the old legend is altered forever as a new version of the legend begins.', N'StarTrek.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (95, N'Star Trek Beyond', 2, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2016-07-22' AS Date), 3, N'After stopping off at Starbase Yorktown, a remote outpost on the fringes of Federation space, the USS Enterprise, halfway into their five-year mission, is destroyed by an unstoppable wave of unknown aliens. With the crew stranded on an unknown planet and with no apparent means of rescue, they find themselves fighting against a ruthless enemy with a well-earned hatred of the Federation and everything it stands for. Only a rebellious alien warrior can help them reunite and leave the planet to stop this deadly menace from beginning a possible galactic war.', N'STBeyond.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (96, N'Star Trek: Into Darkness', 2, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2013-05-16' AS Date), 20, N'When the USS Enterprise crew is called back home, they find an unstoppable force of terror from within their own organization has detonated the fleet and everything it stands for, leaving our world in a state of crisis. With a personal score to settle, Captain Kirk leads a manhunt to a war-zone world to capture a one-man weapon of mass destruction. As our space heroes are propelled into an epic chess game of life and death, love will be challenged, friendships will be torn apart, and sacrifices must be made for the only family Kirk has left: his crew.', N'STDarkness.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (97, N'Star Wars: Episode IV - A New Hope', 2, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1977-05-25' AS Date), 18, N'The Imperial Forces, under orders from cruel Darth Vader, hold Princess Leia hostage in their efforts to quell the rebellion against the Galactic Empire. Luke Skywalker and Han Solo, captain of the Millennium Falcon, work together with the companionable droid duo R2-D2 and C-3PO to rescue the beautiful princess, help the Rebel Alliance and restore freedom and justice to the Galaxy.', N'StarWars4.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (98, N'Star Wars: Episode V - Empire Strikes Back', 2, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1980-06-20' AS Date), 18, N'Luke Skywalker, Han Solo, Princess Leia and Chewbacca face attack by the Imperial forces and its AT-AT walkers on the ice planet Hoth. While Han and Leia escape in the Millennium Falcon, Luke travels to Dagobah in search of Yoda. Only with the Jedi Master''s help will Luke survive when the Dark Side of the Force beckons him into the ultimate duel with Darth Vader.', N'StarWars5.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (99, N'Star Wars: Episode VI - Return of the Jedi', 2, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1983-05-25' AS Date), 18, N'Luke Skywalker battles Jabba the Hutt and Darth Vader to save his comrades in the Rebel Alliance and triumph over the Galactic Empire. Han Solo and Princess Leia reaffirm their love, and team with Chewbacca, Lando Calrissian, the Ewoks, and droids C-3PO and R2-D2 to aid in the disruption of the Dark Side, and the defeat of the evil emperor.', N'StarWars6.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (100, N'Step Brothers', 1, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2008-07-25' AS Date), 6, N'Brennan Huff and Dale Doback are both about 40 when Brennan''s mom and Dale''s dad marry. The sons still live with the parents so they must now share a room. Initial antipathy threatens the household''s peace and the parents'' relationship. Dad lays down the law: both slackers have a week to find a job. Out of the job search and their love of music comes a pact that leads to friendship but more domestic disarray compounded by the boys'' sleepwalking. Hovering nearby are Brennan''s successful brother and his lonely wife: the brother wants to help sell his step-father''s house, the wife wants Dale''s attention, and the newlyweds want to retire and sail the seven seas. Can harmony come from the discord?', N'StepBrothers.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (101, N'Super 8', 2, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2001-06-10' AS Date), 22, N'Summer, 1979: a group of young friends are filming a Super-8 movie when a pickup truck derails a speeding train. When the locals start to disappear and even the inquisitive deputy can''t come up with answers, suspicions emerge that the incident was anything but an accident. As the truth finally begins emerge, no one is prepared to learn what now stalks the unsuspecting citizens of this once quiet community.', N'Super8.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (102, N'Swingers', 1, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1997-04-11' AS Date), 13, N'This is a story about Mike, a guy who left his girl in New York when he came to LA to be a star. It''s been six months since his girlfriend left him and he''s not doing so good. So, his pal and some other friends try and get him back in the social scene and forget about his 6 year relationship.', N'Swingers.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (103, N'The Avengers', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2012-05-04' AS Date), 24, N'Nick Fury is the director of S.H.I.E.L.D., an international peace-keeping agency. The agency is a who''s who of Marvel Super Heroes, with Iron Man, The Incredible Hulk, Thor, Captain America, Hawkeye and Black Widow. When global security is threatened by Loki and his cohorts, Nick Fury and his team will need all their powers to save the world from disaster which is formed by Loki and his team.', N'Avengers.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (104, N'The Beguiled', 6, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2017-06-30' AS Date), 10, N'Three years into the American Civil War, in 1864, the dilapidated mansion of Miss Martha Farnsworth''s Seminary for Young Ladies is still running, occupied by the matriarch, a teacher and five students in Spanish moss-draped Virginia. However, when a young student stumbles upon Corporal John McBurney, a wounded Union deserter on the verge of death, the already frail balance of things will be disrupted, as the hesitant headmistress decides to take him in to heal from his injury. Little by little, as the unwelcome guest arouses an uneasy sexual excitation among the women of the secluded boarding school, it is not before long that they will find themselves competing for the alluring man''s favour. Undoubtedly, this handsome devil is a manipulator, nevertheless, will the ladies stay forever beguiled by his charm?', N'Beguiled.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (105, N'The Departed', 6, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2006-10-06' AS Date), 1002, N'In this crime-action tour de force, the South Boston state police force is waging war on Irish-American organized crime. Young undercover cop Billy Costigan is assigned to infiltrate the mob syndicate run by gangland chief Frank Costello. While Billy quickly gains Costello''s confidence, Colin Sullivan, a hardened young criminal who has infiltrated the state police as an informer for the syndicate is rising to a position of power in the Special Investigation Unit. Each man becomes deeply consumed by their double lives, gathering information about the plans and counter-plans of the operations they have penetrated. But when it becomes clear to both the mob and the police that there is a mole in their midst, Billy and Colin are suddenly in danger of being caught and exposed to the enemy - and each must race to uncover the identity of the other man in time to save themselves. But is either willing to turn on their friends and comrades they''ve made during their long stints undercover?', N'Departed.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (106, N'The Kingdom', 6, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2007-09-28' AS Date), 4, N'After a terrorist attack on an American housing compound in Riyadh, Saudi Arabia, where families and FBI Agent Francis Manner are murdered, FBI agent Ronald Fleury blackmails the Saudi Arabian consul to get five days of investigation in the location. He travels with agent Grant Sykes, Janet Mayes and Adam Leavitt to avenge their friend and try to find those responsible for the bombing. The agents find all sorts of difficulties in their investigation, but they are supported by Colonel Faris Al Ghazi that advises the team how to act in a hostile environment. ', N'Kingdom.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (107, N'The Newton Boys', 9, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1998-03-27' AS Date), 2, N'Four Newton brothers are a poor farmer family in the 1920s. The oldest of them, Willis, one day realizes that there''s no future in the fields and offers his brothers to become a bank robbers. Soon the family agrees. They become very famous robbers, and five years later execute the greatest train robbery in American history.', N'NewtonBoys.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (108, N'The Other Guys', 1, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2010-08-06' AS Date), 6, N'Terry Hoitz''s past mistakes in the line of duty and Allen Gamble''s reluctance to take risks have landed them the roles of the "Other Guys", disgraced New York City police detectives relegated to filling out paperwork for cocky hero cops Danson and Highsmith. The mismatched duo must look past their differences when they take on a high-profile investigation of shady capitalist David Ershon and attempt to fill the shoes of the notoriously reckless officers they idolize.', N'OtherGuys.jpg')
GO
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (109, N'The Rock', 5, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1996-06-07' AS Date), 32, N'A group of renegade Marine commandos seizes a stockpile of chemical weapons and takes over Alcatraz, with eighty-one tourists as hostages. Their leader, a former highly-decorated General, demands one hundred million dollars to be paid in ransom, as restitution to families of Marines who died in covert operations and were thereby denied compensation. Otherwise, he is threatening to launch fifteey rockets carrying deadly VX nerve gas into the San Francisco Bay area. An elite S.E.A.L. team, with support from an F.B.I. chemical warfare expert (Stanley Goodspeed) and a former Alcatraz escapee (John Patrick Mason), is assembled to penetrate the terrorists'' defenses on Alcatraz and neutralize the rocket threat before time runs out.', N'TheRock.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (110, N'The Shining', 3, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1980-06-13' AS Date), 1002, N'Signing a contract, Jack Torrance, a normal writer and former teacher agrees to take care of a hotel which has a long, violent past that puts everyone in the hotel in a nervous situation. While Jack slowly gets more violent and angry of his life, his son, Danny, tries to use a special talent, the "Shining", to inform the people outside about whatever that is going on in the hotel.', N'TheShining.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (112, N'The Wolverine', 5, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2013-07-26' AS Date), 2, N'In modern day Japan, Wolverine is out of his depth in an unknown world as he faces his ultimate nemesis in a life-or-death battle that will leave him forever changed. Vulnerable for the first time and pushed to his physical and emotional limits, he confronts not only lethal samurai steel but also his inner struggle against his own near-immortality, emerging more powerful than we have ever seen him before.', N'Wolverine.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (113, N'The Wrestler', 7, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2009-01-30' AS Date), 34, N'This is a drama about an aging professional wrestler, decades past his prime, who now barely gets by working small wrestling shows in VFW halls and as a part-time grocery store employee. As he faces health problems that may end his wrestling career for good he attempts to come to terms with his life outside the ring: by working full time at the grocery store, trying to reconcile with the daughter he abandoned in childhood and forming a closer bond with a stripper he has romantic feelings for. He struggles with his new life and an offer of a high-profile rematch with his 1980s arch-nemesis, The Ayatollah, which may be his ticket back to stardom.', N'Wrestler.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (114, N'Thin Red Line', 7, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1999-01-15' AS Date), 2, N'U.S. Army Private Witt (AWOL) is found and imprisoned on a troop carrier by his company First Sergeant, Welsh.The men of C Company,1st Battalion,27th Infantry Regiment,25th Infantry Division have been brought to Guadalcanal as reinforcements in the campaign to secure Henderson Field and seize the island from the Japanese. They arrive near Hill 210, a key Japanese position. Their task is to capture the hill at all cost. What happens next is a story developing about redemption and the meaningless of war. Regardless the outcome.', N'ThinRedLine.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (115, N'Thor', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2011-05-06' AS Date), 24, N'The warrior Thor is cast out of the fantastic realm of Asgard by his father Odin for his arrogance and sent to Earth to live amongst humans. Falling in love with scientist Jane Foster teaches Thor much-needed lessons, and his new-found strength comes into play as a villain from his homeland sends dark forces toward Earth.', N'Thor.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (116, N'Transformers', 5, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2007-07-03' AS Date), 1, N'High-school student Sam Witwicky buys his first car, who is actually the Autobot Bumblebee. Bumblebee defends Sam and his girlfriend Mikaela Banes from the Decepticon Barricade, before the other Autobots arrive on Earth. They are searching for the Allspark, and the war on Earth heats up as the Decepticons attack a United States military base in Qatar. Sam and Mikaela are taken by the top-secret agency Sector 7 to help stop the Decepticons, but when they learn the agency also intends to destroy the Autobots, they formulate their own plan to save the world.', N'Transformers.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (117, N'Unforgiven', 7, CAST(9.9900 AS Decimal(19, 4)), 0, CAST(N'1992-08-07' AS Date), 1002, N'The town of Big Whiskey, Wyoming is full of normal people trying to lead quiet lives. Cowboys try to make a living. Sheriff "Little Bill" Daggett tries to build a house and keep a heavy-handed order. The town prostitutes just try to get by.Then a couple of cowboys cut up one of them. Dissatisfied with Bill''s justice, the prostitutes put a bounty on the cowboys. The bounty attracts a young gun billing himself as "The Schofield Kid", and aging killer William Munny. Munny reformed for his young wife, and has been raising crops and two children in peace. But his wife is dead. Farm life is hard. And Munny is no good at it. So he calls his old partner Ned Logan, saddles his ornery nag, and rides off to kill one more time, blurring the lines between heroism and villainy, man and myth.', N'Unforgiven.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (118, N'Us', 3, CAST(24.9900 AS Decimal(19, 4)), 0, CAST(N'2019-03-22' AS Date), 4, N'In order to get away from their busy lives, the Wilson family takes a vacation to Santa Cruz, California with the plan of spending time with their friends, the Tyler family. On a day at the beach, their young son Jason almost wanders off, causing his mother Adelaide to become protective of her family. That night, four mysterious people break into Adelaide''s childhood home where they''re staying. The family is shocked to find out that the intruders look like them, only with grotesque appearances.', N'Us.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (119, N'Wall Street', 7, CAST(7.9900 AS Decimal(19, 4)), 0, CAST(N'1987-12-11' AS Date), 2, N'On the Wall Street of the 1980s, Bud Fox is a stockbroker full of ambition, doing whatever he can to make his way to the top. Admiring the power of the unsparing corporate raider Gordon Gekko, Fox entices Gekko into mentoring him by providing insider trading. As Fox becomes embroiled in greed and underhanded schemes, his decisions eventually threaten the livelihood of his scrupulous father. Faced with this dilemma, Fox questions his loyalties.', N'WallStreet.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (120, N'Wall Street: Money Never Sleeps', 7, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2010-09-24' AS Date), 2, N'As the global economy teeters on the brink of disaster, a young Wall Street trader partners with disgraced former Wall Street corporate raider Gordon Gekko on a two-tiered mission: To alert the financial community to the coming doom, and to find out who was responsible for the death of the young trader''s mentor.', N'WallStreet2.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (121, N'Watchmen', 11, CAST(15.9900 AS Decimal(19, 4)), 0, CAST(N'2009-03-06' AS Date), 1002, N'In a gritty and alternate 1985 the glory days of costumed vigilantes have been brought to a close by a government crackdown, but after one of the masked veterans is brutally murdered an investigation into the killer is initiated. The reunited heroes set out to prevent their own destruction, but in doing so discover a deeper and far more diabolical plot.', N'Watchmen.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (122, N'Wonder Woman', 11, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2017-06-02' AS Date), 1002, N'Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, when a pilot crashes on their shores and tells of a massive conflict raging in the outside world, Diana leaves her home, convinced she can stop the threat. Fighting alongside man in a war to end all wars, Diana will discover her full powers and her true destiny.', N'WonderWoman.jpg')
INSERT [dbo].[Movies] ([MovieID], [MovieTitle], [GenreID], [Price], [UnitsSold], [ReleaseDate], [ProductionID], [Plot], [PosterImage]) VALUES (123, N'Zero Dark Thirty', 6, CAST(19.9900 AS Decimal(19, 4)), 0, CAST(N'2013-01-11' AS Date), 6, N'Maya is a CIA operative whose first experience is in the interrogation of prisoners following the Al Qaeda attacks against the U.S. on the 11th September 2001. She is a reluctant participant in extreme duress applied to the detainees, but believes that the truth may only be obtained through such tactics. For several years, she is single-minded in her pursuit of leads to uncover the whereabouts of Al Qaeda''s leader, Osama Bin Laden. Finally, in 2011, it appears that her work will pay off, and a U.S. Navy SEAL team is sent to kill or capture Bin Laden. But only Maya is confident Bin Laden is where she says he is.', N'ZeroDarkThirty.jpg')
SET IDENTITY_INSERT [dbo].[Movies] OFF
SET IDENTITY_INSERT [dbo].[ProductionCompany] ON 

INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (1, N'DreamWorks Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (2, N'20th Century Fox')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (3, N'Paramount Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (4, N'Universal Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (5, N'Metro-Goldwyn Mayer')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (6, N'Columbia Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (7, N'Walt Disney Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (8, N'New Line Cinema')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (9, N'Sony Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (10, N'Focus Features')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (11, N'Lionsgate')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (12, N'Castle Rock Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (13, N'Miramax')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (14, N'Touchstone Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (15, N'United Artists')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (16, N'Legendary Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (17, N'Annapurna Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (18, N'Lucasfilm')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (19, N'Summit Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (20, N'Bad Robot Productions')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (21, N'Screen Gems')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (22, N'Amblin Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (23, N'Spyglass Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (24, N'Marvel Studios')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (25, N'Revolution Studios')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (26, N'DreamWorks Animation')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (27, N'Walden Media')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (28, N'Regency Enterprises')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (29, N'StudioCanal')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (30, N'Imagine Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (31, N'Beverly Detroit')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (32, N'Jerry Bruckheimer Films')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (33, N'Propaganda Films')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (34, N'Fox Searchlight Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (35, N'Gramercy Pictures')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (36, N'USA Films')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (37, N'Film 44')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (38, N'Iron Horse Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (39, N'Bluegrass Films')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (40, N'Largo Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (41, N'Evolution Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (42, N'Plan B Entertainment')
INSERT [dbo].[ProductionCompany] ([ProductionID], [ProductionCompany]) VALUES (1002, N'Warner Bros')
SET IDENTITY_INSERT [dbo].[ProductionCompany] OFF
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'23148a63-7b5a-4083-9265-c4fb5e008312', N'Rachel3', N'Punches3')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'4c2793a5-fe13-4667-8c0e-e6f2b0d9726b', N'Rachel', N'Punches')
INSERT [dbo].[UserDetails] ([UserID], [FirstName], [LastName]) VALUES (N'5c9a20be-4656-4cb5-ab08-a5781c0577d4', N'Rachel2', N'Punches2')
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieActor_Actor]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieActor]'))
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Actor] FOREIGN KEY([ActorID])
REFERENCES [dbo].[Actor] ([ActorID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieActor_Actor]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieActor]'))
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Actor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieActor_Movies]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieActor]'))
ALTER TABLE [dbo].[MovieActor]  WITH CHECK ADD  CONSTRAINT [FK_MovieActor_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([MovieID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieActor_Movies]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieActor]'))
ALTER TABLE [dbo].[MovieActor] CHECK CONSTRAINT [FK_MovieActor_Movies]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieDirector_Director]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieDirector]'))
ALTER TABLE [dbo].[MovieDirector]  WITH CHECK ADD  CONSTRAINT [FK_MovieDirector_Director] FOREIGN KEY([DirectorID])
REFERENCES [dbo].[Director] ([DirectorID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieDirector_Director]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieDirector]'))
ALTER TABLE [dbo].[MovieDirector] CHECK CONSTRAINT [FK_MovieDirector_Director]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieDirector_Movies]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieDirector]'))
ALTER TABLE [dbo].[MovieDirector]  WITH CHECK ADD  CONSTRAINT [FK_MovieDirector_Movies] FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movies] ([MovieID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_MovieDirector_Movies]') AND parent_object_id = OBJECT_ID(N'[dbo].[MovieDirector]'))
ALTER TABLE [dbo].[MovieDirector] CHECK CONSTRAINT [FK_MovieDirector_Movies]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Movies_Genres]') AND parent_object_id = OBJECT_ID(N'[dbo].[Movies]'))
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_Genres] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([GenreID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Movies_Genres]') AND parent_object_id = OBJECT_ID(N'[dbo].[Movies]'))
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_Genres]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Movies_ProductionCompany]') AND parent_object_id = OBJECT_ID(N'[dbo].[Movies]'))
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD  CONSTRAINT [FK_Movies_ProductionCompany] FOREIGN KEY([ProductionID])
REFERENCES [dbo].[ProductionCompany] ([ProductionID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Movies_ProductionCompany]') AND parent_object_id = OBJECT_ID(N'[dbo].[Movies]'))
ALTER TABLE [dbo].[Movies] CHECK CONSTRAINT [FK_Movies_ProductionCompany]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserDetails_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserDetails]'))
ALTER TABLE [dbo].[UserDetails]  WITH CHECK ADD  CONSTRAINT [FK_UserDetails_AspNetUsers] FOREIGN KEY([UserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_UserDetails_AspNetUsers]') AND parent_object_id = OBJECT_ID(N'[dbo].[UserDetails]'))
ALTER TABLE [dbo].[UserDetails] CHECK CONSTRAINT [FK_UserDetails_AspNetUsers]
GO
