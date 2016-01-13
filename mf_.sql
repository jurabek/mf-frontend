USE [mf]
GO
/****** Object:  Table [dbo].[secondary_file_type]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[secondary_file_type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_secondary_file_type] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[sysdiagrams]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[sysdiagrams](
	[name] [nvarchar](128) NOT NULL,
	[principal_id] [int] NOT NULL,
	[diagram_id] [int] IDENTITY(1,1) NOT NULL,
	[version] [int] NULL,
	[definition] [varbinary](max) NULL,
 CONSTRAINT [PK_sysdiagrams] PRIMARY KEY CLUSTERED 
(
	[diagram_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tb_about_organization]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_about_organization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[address] [nvarchar](max) NOT NULL,
	[full_name] [nvarchar](max) NOT NULL,
	[short_name] [nvarchar](max) NOT NULL,
	[code] [nvarchar](max) NOT NULL,
	[site] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[is_active] [bit] NOT NULL,
	[tb_organization_Id] [int] NOT NULL,
	[tb_lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_about_organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ads_request]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ads_request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](512) NULL,
	[organization] [nvarchar](512) NULL,
	[phone] [nvarchar](32) NULL,
	[create_date] [datetime] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_ads_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_content]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[main_id] [int] NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[fixed_url] [nvarchar](256) NULL,
	[page_title] [nvarchar](256) NULL,
	[description] [nvarchar](2048) NULL,
	[page_content] [nvarchar](max) NULL,
	[order_id] [int] NULL,
	[is_active] [bit] NOT NULL,
	[show_on_menu] [bit] NULL,
	[lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_courses]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_courses](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[description] [nvarchar](512) NULL,
	[value] [nvarchar](32) NULL,
	[status_id] [int] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_courses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_courses_status]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_courses_status](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](32) NULL,
 CONSTRAINT [PK_tb_courses_status] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_dc]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_dc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[title] [nvarchar](256) NOT NULL,
	[description] [nvarchar](2048) NOT NULL,
	[image] [nvarchar](256) NOT NULL,
	[type_id] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
	[tb_organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_tb_dc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_dc_type]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_dc_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[lang] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_dc_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_donors]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_donors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[logo] [nvarchar](128) NULL,
	[name] [nvarchar](1024) NULL,
	[description] [nvarchar](max) NULL,
	[contacts] [nvarchar](1024) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_donors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_economic]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_economic](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[value] [nvarchar](max) NOT NULL,
	[tb_lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_economic] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_file_on_page]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_file_on_page](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[file_id] [int] NOT NULL,
	[content_page_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_file_on_page] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_files]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_files](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date_create] [datetime] NOT NULL,
	[category_id] [int] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NULL,
	[file_name] [nvarchar](256) NOT NULL,
	[lang_id] [int] NOT NULL,
	[public_date] [datetime] NULL,
	[is_main] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[tb_organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_tb_files] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_files_category]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_files_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[is_menu] [bit] NOT NULL,
	[lang] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_files_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_gallery]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_gallery](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1024) NOT NULL,
	[description] [nvarchar](max) NULL,
	[image] [nvarchar](256) NOT NULL,
	[category_id] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_gallery] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_gallery_category]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_gallery_category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[order_id] [int] NULL,
	[image] [nvarchar](512) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_gallery_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_info_mf]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_info_mf](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[tb_ministr_mf_Id] [int] NOT NULL,
	[tb_lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_info_mf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_lang]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_lang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](64) NULL,
	[code] [nvarchar](2) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_lang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ministr_mf]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ministr_mf](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[full_name] [nvarchar](max) NOT NULL,
	[last_name] [nvarchar](max) NOT NULL,
	[bio] [nvarchar](max) NOT NULL,
	[logo_file_name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tb_ministr_mf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_news]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_news](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](1024) NOT NULL,
	[descriptoin] [nvarchar](2024) NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[image] [nvarchar](1024) NULL,
	[create_date] [datetime] NOT NULL,
	[event_date] [datetime] NOT NULL,
	[type_id] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
	[is_important] [bit] NULL,
	[tb_organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_tb_news] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_news_type]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_news_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](32) NOT NULL,
	[description] [nvarchar](512) NULL,
	[is_active] [bit] NOT NULL,
	[show_on_main] [bit] NOT NULL,
	[lang] [int] NOT NULL,
 CONSTRAINT [PK_tb_news_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_organization]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_organization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[link] [nvarchar](max) NOT NULL,
	[index] [nvarchar](max) NOT NULL,
	[tb_region_Id] [int] NOT NULL,
	[tb_lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_pages]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_pages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[main_category_id] [int] NULL,
	[name] [nvarchar](128) NULL,
	[description] [nvarchar](2048) NULL,
	[is_active] [bit] NULL,
 CONSTRAINT [PK_tb_pages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_prints]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_prints](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](512) NOT NULL,
	[image] [nvarchar](512) NULL,
	[description] [nvarchar](max) NOT NULL,
	[text] [nvarchar](max) NULL,
	[published_since] [datetime] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_prints] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_prints_content]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_prints_content](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[year] [int] NULL,
	[month] [int] NULL,
	[date_print] [datetime] NULL,
	[image] [nvarchar](512) NULL,
	[text] [nvarchar](max) NULL,
	[prints_id] [int] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_prints_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_projects]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_projects](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](1024) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[full_text] [nvarchar](max) NOT NULL,
	[is_active] [bit] NOT NULL,
	[tb_lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_projects] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_question_categorys]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_question_categorys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[show_on_the_main] [bit] NOT NULL,
	[name] [nvarchar](256) NOT NULL,
	[image] [nvarchar](1024) NULL,
	[description] [nvarchar](2048) NULL,
	[lang] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_question_categorys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_question_request]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_question_request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](256) NULL,
	[organization] [nvarchar](256) NULL,
	[position] [nvarchar](256) NULL,
	[phone] [nvarchar](256) NULL,
	[email] [nvarchar](256) NULL,
	[category_id] [int] NULL,
	[question] [nvarchar](max) NULL,
	[is_active] [bit] NOT NULL,
	[create_date] [datetime] NULL,
 CONSTRAINT [PK_tb_question_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_question_sub_categorys]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_question_sub_categorys](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](32) NOT NULL,
	[lang] [int] NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_question_sub_categorys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_questions]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_questions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[category_id] [int] NOT NULL,
	[category_sub_id] [int] NOT NULL,
	[date_create] [datetime] NULL,
	[question_title] [nvarchar](1024) NOT NULL,
	[question_date] [datetime] NULL,
	[question] [nvarchar](max) NOT NULL,
	[question_author_fio] [nvarchar](1024) NULL,
	[question_author_email] [nvarchar](1024) NULL,
	[answer_date] [datetime] NULL,
	[answer_author_fio] [nvarchar](1024) NULL,
	[answer_author_position] [nvarchar](1024) NULL,
	[answer] [nvarchar](max) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_questions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_region]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_region](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name_tj] [nvarchar](max) NOT NULL,
	[name_ru] [nvarchar](max) NOT NULL,
	[name_en] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tb_region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_ruk_depart_mf]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_ruk_depart_mf](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[doljnost] [nvarchar](max) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[last_name] [nvarchar](max) NOT NULL,
	[full_name] [nvarchar](max) NOT NULL,
	[bio] [nvarchar](max) NOT NULL,
	[logo_file_name] [nvarchar](max) NOT NULL,
	[tb_info_mf_Id] [int] NOT NULL,
 CONSTRAINT [PK_tb_ruk_depart_mf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_secondary_files]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_secondary_files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[pub_date] [datetime] NOT NULL,
	[file_name] [nvarchar](max) NOT NULL,
	[descreption] [nvarchar](max) NOT NULL,
	[is_active] [bit] NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[secondary_file_type_Id] [int] NOT NULL,
 CONSTRAINT [PK_tb_secondary_files] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_structure_organization]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_structure_organization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[name_director] [nvarchar](max) NOT NULL,
	[last_name_director] [nvarchar](max) NOT NULL,
	[full_name_director] [nvarchar](max) NOT NULL,
	[picture_director] [nvarchar](max) NOT NULL,
	[bio_director] [nvarchar](max) NOT NULL,
	[text_for_nachalniki] [nvarchar](max) NOT NULL,
	[is_active] [bit] NOT NULL,
	[tb_organization_Id] [int] NOT NULL,
	[tb_lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_structure_organization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_subscription_news_request]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_subscription_news_request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](512) NULL,
	[email] [nvarchar](512) NULL,
	[organization] [nvarchar](1024) NULL,
	[position] [nvarchar](512) NULL,
	[phone] [nvarchar](32) NULL,
	[create_date] [datetime] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_subscription_news_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_subscription_request]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_subscription_request](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](512) NULL,
	[email] [nvarchar](512) NULL,
	[organization] [nvarchar](1024) NULL,
	[position] [nvarchar](512) NULL,
	[phone] [nvarchar](32) NULL,
	[print_id] [int] NULL,
	[create_date] [datetime] NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_subscription_request] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_tasks]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[is_active] [bit] NOT NULL,
	[tb_organization_Id] [int] NOT NULL,
	[tb_lang_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_in_role]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_in_role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [PK_tb_user_in_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_user_roles]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_user_roles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](64) NOT NULL,
	[description] [nvarchar](512) NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_user_roles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_users]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fio] [nvarchar](256) NOT NULL,
	[email] [nvarchar](256) NOT NULL,
	[password] [nvarchar](256) NOT NULL,
	[is_active] [bit] NOT NULL,
 CONSTRAINT [PK_tb_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_vacancy]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_vacancy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[open_date] [datetime] NOT NULL,
	[close_date] [datetime] NOT NULL,
	[is_closed] [bit] NOT NULL,
	[title] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[tb_lang_id] [int] NOT NULL,
	[tb_organization_Id] [int] NOT NULL,
 CONSTRAINT [PK_tb_vacancy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tb_zam_mf]    Script Date: 1/13/2016 7:59:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_zam_mf](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[doljnost] [nvarchar](max) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[last_name] [nvarchar](max) NOT NULL,
	[full_name] [nvarchar](max) NOT NULL,
	[bio] [nvarchar](max) NOT NULL,
	[logo_file_name] [nvarchar](max) NOT NULL,
	[tb_info_mf_Id] [int] NOT NULL,
 CONSTRAINT [PK_tb_zam_mf] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[secondary_file_type] ON 

INSERT [dbo].[secondary_file_type] ([Id], [name]) VALUES (1, N'Вакансии')
INSERT [dbo].[secondary_file_type] ([Id], [name]) VALUES (2, N'Проекты')
INSERT [dbo].[secondary_file_type] ([Id], [name]) VALUES (3, N'Информационные материалы')
SET IDENTITY_INSERT [dbo].[secondary_file_type] OFF
SET IDENTITY_INSERT [dbo].[tb_about_organization] ON 

INSERT [dbo].[tb_about_organization] ([Id], [address], [full_name], [short_name], [code], [site], [phone], [email], [is_active], [tb_organization_Id], [tb_lang_id]) VALUES (1, N'афыа', N'ффыаф', N'фыафыа', N'фаы', N'фаыфа', N'ыфа', N'фыа', 0, 1, 1)
SET IDENTITY_INSERT [dbo].[tb_about_organization] OFF
SET IDENTITY_INSERT [dbo].[tb_content] ON 

INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (2, 0, N'О министерстве', NULL, N'О министерстве', NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (3, 0, N'Горячая линия', NULL, N'Горячая линия', NULL, NULL, 2, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (4, 0, N'Пресс-служба', NULL, N'Пресс-служба', NULL, NULL, 3, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (5, 0, N'Нормативная информация', NULL, N'Нормативная информация', NULL, NULL, 4, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (6, 0, N'Аналитика', NULL, N'Аналитика', NULL, NULL, 5, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (7, 0, N'Печатные издания', NULL, N'Печатные издания', NULL, NULL, 7, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (8, 2, N'Правовые основы деятельности', NULL, N'Правовые основы деятельности', N'Правовые основы деятельности', N'<p>Министерство финансов Республики Таджикистан является центральным органом исполнительной власти в составе Правительства Республики Таджикистан и обеспечивает:</p>

<ul>
	<li>&nbsp;&nbsp; проведение единой государственной и нормативной правовой политики;</li>
	<li>&nbsp;&nbsp; регулирование финансовой, бюджетной, налоговой, страховой и валютной деятельности государства;</li>
	<li>&nbsp;&nbsp; координацию органов исполнительной власти по исполнению и соблюдению налогового законодательства;</li>
	<li>&nbsp;&nbsp; контроль исчисления, полноту и своевременность уплаты в государственный бюджет налогов, сборов и других обязательных&nbsp;платежей налогоплательщиками.</li>
</ul>
', 1, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (9, 2, N'Организационная структура', NULL, N'Организационная структура', NULL, NULL, 2, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (10, 2, N'Подведомственные организации', NULL, NULL, NULL, N'<ul>
	<li>Казначейство</li>
	<li>Государственный пробирный надзор (Госпробирнадзор) при Министерстве финансов Республики Таджикистан</li>
	<li>Государственное хранилище ценностей (Гохран) при Министерстве финансов Республики Таджикистан</li>
	<li>Государственная служба страхового надзора (Госстрахнадзор) при Министерстве финансов Республики Таджикистан</li>
	<li>Агентство по развитию рынка ценных бумаг и специализированного регистратора при Министерстве финансов Республики Таджикистан</li>
	<li>Институт финансов и экономики Таджикистана</li>
	<li>Научно-исследовательский институт &quot;Финансы&quot;</li>
	<li>Редакция журнала &quot;Молия ва хисобдори&quot; Министерства финансов Республики Таджикистан</li>
	<li>Центр повышения квалификации работников системы финансов</li>
	<li>Государственное казенное республиканское предприятие &quot;Тиллои Точик&quot;</li>
	<li>Государственная страховая компания &quot;Таджиксармоягузор&quot;</li>
	<li>Отдел капитального строительства Министерства финансов Республики Таджикистан</li>
</ul>

<h2>&nbsp;</h2>

<h2>Душанбе</h2>

<ul>
	<li>Главное управление финансов города Душанбе</li>
	<li>Управление финансов района Шохмансур города Душанбе</li>
	<li>Управление финансов района Исмоили Сомони города Душанбе</li>
	<li>Управление финансов района Фирдавси города Душанбе</li>
	<li>Управление финансов района Сино города Душанбе</li>
</ul>

<h2>&nbsp;</h2>

<h2>Республиканского подчинения</h2>

<ul>
	<li>Финансовое управление города Вахдат</li>
	<li>Финансовое управление города Рогун</li>
	<li>Финансовое управление города Турсунзаде</li>
	<li>Финансовое управление Варзобского района</li>
	<li>Финансовое управление Раштского района</li>
	<li>Финансовое управление Гиссарского района</li>
	<li>Финансовое управление Джиргитальского района</li>
	<li>Финансовое управление Нурободского района</li>
	<li>Финансовое управление района Рудаки</li>
	<li>Финансовое управление Тавильдаринского района</li>
	<li>Финансовое управление Файзабадского района</li>
	<li>Финансовое управление Шахринавского района</li>
	<li>Финансовое управление Таджикабадского района</li>
</ul>

<h2>&nbsp;</h2>

<h2>Горно-Бадахшанская область</h2>

<ul>
	<li>Главное управление финансов Горно - Бадахшанской автономной области</li>
	<li>Управление финансов города Хорог</li>
	<li>Управление финансов Ванчского района</li>
	<li>Управление финансов Дарвазского района</li>
	<li>Управление финансов Ишкашимского района</li>
	<li>Управление финансов Мургабского района</li>
	<li>Управление финансов Рошткалинского района</li>
	<li>Управление финансов Рушанского района</li>
	<li>Управление финансов Шугнанского района</li>
</ul>

<h2>&nbsp;</h2>

<h2>Хатлонская область</h2>

<ul>
	<li>Главное управление финансов Хатлонской области</li>
	<li>Главное управление финансов по Кулябской региональной зоне</li>
	<li>Управление финансов города Курган -тюбе</li>
	<li>Управление финансов города Куляб</li>
	<li>Управление финансов города Нурек</li>
	<li>Управление финансов города Сарбанд</li>
	<li>Управление финансов Бальджуванского района</li>
	<li>Управление финансов Бохтарского района</li>
	<li>Управление финансов Вахшского района</li>
	<li>Управление финансов Восейского района</li>
	<li>Управление финансов Дангаринского района</li>
	<li>Управление финансов Джиликульского района</li>
	<li>Управление финансов района Кубодиён</li>
	<li>Управление финансов района Джалолиддина Руми</li>
	<li>Управление финансов района Темурмалик</li>
	<li>Управление финансов Кумсангирского района</li>
	<li>Управление финансов Муминабадского района</li>
	<li>Управление финансов Пянджского района</li>
	<li>Управление финансов Фархорского района</li>
	<li>Управление финансов района Мир Сайид Алии Хамадони</li>
	<li>Управление финансов Ховалингского района</li>
	<li>Управление финансов района Хуросон</li>
	<li>Управление финансов района Носири Хусрав</li>
	<li>Управление финансов района Абдурахмона Джами</li>
	<li>Управление финансов Шаартузского района</li>
	<li>Управление финансов Шуроободского района</li>
	<li>Управление финансов Яванского района</li>
</ul>

<p>&nbsp;</p>

<h2>Согдийская область</h2>

<ul>
	<li>Главное управление финансов Согдийской области</li>
	<li>Управление финансов города Исфара</li>
	<li>Управление финансов города Истаравшан</li>
	<li>Управление финансов города Канибадам</li>
	<li>Управление финансов города Кайраккум</li>
	<li>Управление финансов города Пенджикент</li>
	<li>Управление финансов города Истиклол</li>
	<li>Управление финансов города Худжанд</li>
	<li>Управление финансов города Чкаловск</li>
	<li>Управление финансов Айнинского района</li>
	<li>Управление финансов Аштского района</li>
	<li>Управление финансов Бободжон Гафуровского района</li>
	<li>Управление финансов Ганчинского района</li>
	<li>Управление финансов Зафарабадского района</li>
	<li>Управление финансов Кухистони Мастчохского района</li>
	<li>Управление финансов Матчинского района</li>
	<li>Управление финансов Джаббор Расуловского района</li>
	<li>Управление финансов района Спитамен</li>
	<li>Управление финансов Шахристанского района</li>
</ul>
', 3, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (11, 2, N'История', NULL, N'История', NULL, N'<h2>Министры финансов Республики Таджикистан</h2>

<ol>
	<li>Азимҷон Акчурин моҳи декабри соли 1924 - моҳи марти соли 1926</li>
	<li>Шириншо Шотемур моҳи июни соли 1926 - моҳи октябри соли 1926</li>
	<li>Абдуҷаббор Айдарбек соли 1927 - соли 1928</li>
	<li>Темирбек Жургенов соли 1929 - соли 1930</li>
	<li>Иброҳим Исмоилов моҳи феврали соли 1931 - моҳи июни соли 1932</li>
	<li>Сергей Шалимов Димитриевич моҳи ноябри соли 1934<strong>&nbsp;-&nbsp;</strong>моҳи июни соли 1937</li>
	<li>Иосиф Лазарев Берлович моҳи июни соли 1938 - моҳи сентябри соли 1939</li>
	<li>Василий Волобуев Романович моҳи сентябри соли 1939<strong>&nbsp;-&nbsp;</strong>моҳи августи соли 1945</li>
	<li>Мирхон Саидов моҳи сентябри соли 1945 - моҳи январи соли 1949</li>
	<li>Алиқул Алиев моҳи январи соли 1949 - моҳи марти соли 1963</li>
	<li>Мирзоалӣ Вайсов моҳи апрели соли 1963 - моҳи сентябри соли 1972</li>
	<li>Ҷанобиддин Лафизов моҳи январи соли 1973 - соли 1991</li>
	<li>Исмоил Давлатов моҳи феврали соли 1993 - моҳи ноябри соли 1993</li>
	<li>Нормат Юнусов соли 1991 - соли 1994</li>
	<li>Анваршо Музафаров моҳи декабри соли 1994 - моҳи январи соли 2000</li>
	<li>Сафаралӣ Наҷмудинов Маҳсудинович моҳи январи соли 2000 - ноябри соли 2013</li>
	<li>Қурбонов Абдусалом Каримович моҳи ноябри соли 2013<strong>&nbsp;-&nbsp;</strong>то ба имрўз</li>
</ol>
', 4, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (12, 2, N'Доноры', NULL, N'Доноры', NULL, N'<p>Со времени обретения независимости Республика Таджикистан является активным участником международного сотрудничества. В рамках международной помощи Таджикистан сотрудничает как с странами-донорами помощи (двусторонние доноры), так и с ведущими международными организациями (многосторонние доноры).<br />
Необходимость устойчивого развития Республики Таджикистан требует более активного привлечения в страну средств международной помощи, а значит, более целенаправленной работы с донорами.<br />
Международная помощь в рамках двустороннего сотрудничества Республики Таджикистан предоставляется на основе межправительственных соглашений и в рамках специальных фондов, финансируемых правительствами стран-доноров международной помощи. Следует отметить, что значительные средства стран-доноров поступают странам-бенефициарам через международные финансовые институты.</p>

<p>Основными донорами Республики Таджикистан среди международных финансовых институтов являются Всемирный Банк (ВБ), Азиатский Банк Развития (АБР), Европейский Банк Реконструкции и Развития (ЕБРР), Исламский Банк Развития (ИБР), Кувейтский фонд и др. Основными странами &mdash; донорами являются Япония, Германия, Швейцария, КНР, Исламская Республика Иран.</p>
', 5, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (14, 2, N'Вакансии', NULL, N'Вакансии', NULL, N'<p>Для подачи заявки на вакансию необходимо заполнить анкету, заявление и предоставить необходимый пакет документов.</p>

<p>Образец анкету необходимо скачать по следующей сслылке</p>

<p>Образец заявления необходимо скачать по следующей ссылке</p>

<p>Пакет документов необходимо предоставить по адресу: ул. Академиков Раджабовых, 3. Отдел кадров. Телефон для справок 221-00-00</p>
', 6, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (15, 2, N'Контактная информация ', NULL, N'Контактная информация ', NULL, N'<p>Министерство Финансов</p>

<p>Республики Таджикистан</p>

<p>734025, г. Душанбе</p>

<p>ул. Академиков Раджабовых 3</p>
', 8, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (16, 3, N'Задать вопрос', N'/Question/RequestFromUser', N'Задать вопрос', NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (17, 3, N'Опрос пользователей сайта', NULL, N'Опрос пользователей сайта', NULL, NULL, 2, 0, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (18, 4, N'Подписка на периодическую информацию', N'/Subscription/News', N'Подписка на периодическую информацию', NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (19, 4, N'Архив новостей', N'/News', N'Архив новостей', NULL, NULL, 2, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (20, 4, N'Фотогалерея', N'/Gallery', N'Фотогалерея', NULL, NULL, 3, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (21, 5, N'Файловый архив', N'/Files', N'Файловый архив', NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (22, 7, N'Каталог изданий', N'/Prints', N'Каталог изданий', NULL, NULL, 1, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (23, 7, N'Анонсы очередных номеров', N'/news/index/4', NULL, NULL, NULL, 2, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (24, 7, N'Содержание предыдущих номеров', N'/Prints/ContentList', NULL, NULL, NULL, 3, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (25, 7, N'Заявка на подписку издания', N'/Subscription/Prints', NULL, NULL, NULL, 4, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (26, 7, N'Заявка для размещения рекламы', N'/Subscription/Ads', NULL, NULL, NULL, 5, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (28, 6, N'Макроэкономика', N'/Files?Category=21&name=', N'Макроэкономика', N'Макроэкономика', NULL, 1, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (29, 6, N'Исполнение бюджета', N'/Files?Category=20&name=', N'Исполнение бюджета', N'Исполнение бюджета', NULL, 2, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (30, 6, N'Государственный внешний долг', N'/Files?Category=25&name=', N'Государственный внешний долг', N'Государственный внешний долг', NULL, 3, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (31, 6, N'Государственный внутренний долг', N'/Files?Category=26&name=', N'Государственный внутренний долг', N'Государственный внутренний долг', N'<p>цуцукц</p>
', 5, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (32, 6, N'Экономические прогнозы', N'/Files?Category=27&name=', N'Экономические прогнозы', N'Экономические прогнозы', NULL, 6, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (33, 6, N'Внутренний аудит', N'/Files?Category=28&name=', N'Внутренний аудит', N'Внутренний аудит', NULL, 7, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (34, 6, N'Публикации экспертов', N'/Files?Category=29&name=', N'Публикации экспертов', N'Публикации экспертов', NULL, 4, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (35, 0, N'Дар бораи вазорат', NULL, N'Дар бораи вазорат', NULL, NULL, 1, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (36, 0, N'Хати доимамалкунанда', NULL, N'Хати доимамалкунанда', NULL, NULL, 2, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (37, 0, N'Шӯъбаи матбуотӣ', NULL, N'Шӯъбаи матбуотӣ', NULL, NULL, 3, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (38, 0, N'Маълумоти ҳуқуқӣ-танзимкунанда', NULL, N'Маълумоти ҳуқуқӣ-танзимкунанда', NULL, NULL, 4, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (39, 0, N'Таҳлилҳо', NULL, N'Таҳлилҳо', NULL, NULL, 5, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (40, 0, N'Интишороти чопӣ', NULL, N'Интишороти чопӣ', NULL, NULL, 7, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (41, 0, N'About Ministry', NULL, N'About Ministry', NULL, NULL, 1, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (43, 0, N'Hot-Line', NULL, N'Hot-Line', NULL, NULL, 2, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (44, 0, N'Media', NULL, N'Media', N'Media', NULL, 3, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (45, 0, N'Regulatory Information', NULL, N'Regulatory Information', NULL, NULL, 4, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (46, 0, N'Analytics', NULL, N'Analytics', NULL, NULL, 5, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (47, 0, N'Prints', NULL, N'Prints', NULL, NULL, 7, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (49, 0, N'Реформы УГФ', NULL, N'Реформы УГФ', NULL, NULL, 6, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (50, 35, N'Заминаи ҳуқуқии фаъолият', NULL, N'Заминаи ҳуқуқии фаъолият', N'Заминаи ҳуқуқии фаъолият', N'<p>Министерство финансов Республики Таджикистан является центральным органом исполнительной власти в составе Правительства Республики Таджикистан и обеспечивает:</p>

<p>&nbsp;&nbsp; -&nbsp; проведение единой государственной и нормативной правовой политики;</p>

<p>&nbsp;&nbsp; -&nbsp; регулирование финансовой, бюджетной, налоговой, страховой и валютной деятельности государства;</p>

<p>&nbsp;&nbsp; -&nbsp; координацию органов исполнительной власти по исполнению и соблюдению налогового законодательства;</p>

<p>&nbsp;&nbsp; -&nbsp; контроль исчисления, полноту и своевременность уплаты в государственный бюджет налогов, сборов и других обязательных&nbsp;платежей налогоплательщиками.</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (51, 0, N' Ислоҳоти ИМД', NULL, N' Ислоҳоти ИМД', NULL, NULL, 6, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (52, 0, N'PFM Reforms', NULL, N'PFM Reforms', NULL, NULL, 6, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (53, 52, N'Economic development programs', NULL, N'Economic development programs', N'Economic development programs', NULL, 1, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (55, 51, N'Барномаҳои рушди иқтисодӣ', NULL, N'Барномаҳои рушди иқтисодӣ', N'Барномаҳои рушди иқтисодӣ', NULL, 1, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (56, 35, N'Сохтори ташкилӣ', NULL, N'Сохтори ташкилӣ', N'Сохтори ташкилӣ', N'<p>Сохтори ташкилӣ</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (57, 35, N'Ташкилотҳои зертобеъ', NULL, N'Ташкилотҳои зертобеъ', N'Ташкилотҳои зертобеъ', N'<ul>
	<li>Казначейство</li>
	<li>Государственный пробирный надзор (Госпробирнадзор) при Министерстве финансов Республики Таджикистан</li>
	<li>Государственное хранилище ценностей (Гохран) при Министерстве финансов Республики Таджикистан</li>
	<li>Государственная служба страхового надзора (Госстрахнадзор) при Министерстве финансов Республики Таджикистан</li>
	<li>Агентство по развитию рынка ценных бумаг и специализированного регистратора при Министерстве финансов Республики Таджикистан</li>
	<li>Институт финансов и экономики Таджикистана</li>
	<li>Научно-исследовательский институт &quot;Финансы&quot;</li>
	<li>Редакция журнала &quot;Молия ва хисобдори&quot; Министерства финансов Республики Таджикистан</li>
	<li>Центр повышения квалификации работников системы финансов</li>
	<li>Государственное казенное республиканское предприятие &quot;Тиллои Точик&quot;</li>
	<li>Государственная страховая компания &quot;Таджиксармоягузор&quot;</li>
	<li>Отдел капитального строительства Министерства финансов Республики Таджикистан</li>
</ul>

<h2>&nbsp;</h2>

<h2>Душанбе</h2>

<ul>
	<li>Главное управление финансов города Душанбе</li>
	<li>Управление финансов района Шохмансур города Душанбе</li>
	<li>Управление финансов района Исмоили Сомони города Душанбе</li>
	<li>Управление финансов района Фирдавси города Душанбе</li>
	<li>Управление финансов района Сино города Душанбе</li>
</ul>

<h2>&nbsp;</h2>

<h2>Республиканского подчинения</h2>

<ul>
	<li>Финансовое управление города Вахдат</li>
	<li>Финансовое управление города Рогун</li>
	<li>Финансовое управление города Турсунзаде</li>
	<li>Финансовое управление Варзобского района</li>
	<li>Финансовое управление Раштского района</li>
	<li>Финансовое управление Гиссарского района</li>
	<li>Финансовое управление Джиргитальского района</li>
	<li>Финансовое управление Нурободского района</li>
	<li>Финансовое управление района Рудаки</li>
	<li>Финансовое управление Тавильдаринского района</li>
	<li>Финансовое управление Файзабадского района</li>
	<li>Финансовое управление Шахринавского района</li>
	<li>Финансовое управление Таджикабадского района</li>
</ul>

<h2>&nbsp;</h2>

<h2>Горно-Бадахшанская область</h2>

<ul>
	<li>Главное управление финансов Горно - Бадахшанской автономной области</li>
	<li>Управление финансов города Хорог</li>
	<li>Управление финансов Ванчского района</li>
	<li>Управление финансов Дарвазского района</li>
	<li>Управление финансов Ишкашимского района</li>
	<li>Управление финансов Мургабского района</li>
	<li>Управление финансов Рошткалинского района</li>
	<li>Управление финансов Рушанского района</li>
	<li>Управление финансов Шугнанского района</li>
</ul>

<h2>&nbsp;</h2>

<h2>Хатлонская область</h2>

<ul>
	<li>Главное управление финансов Хатлонской области</li>
	<li>Главное управление финансов по Кулябской региональной зоне</li>
	<li>Управление финансов города Курган -тюбе</li>
	<li>Управление финансов города Куляб</li>
	<li>Управление финансов города Нурек</li>
	<li>Управление финансов города Сарбанд</li>
	<li>Управление финансов Бальджуванского района</li>
	<li>Управление финансов Бохтарского района</li>
	<li>Управление финансов Вахшского района</li>
	<li>Управление финансов Восейского района</li>
	<li>Управление финансов Дангаринского района</li>
	<li>Управление финансов Джиликульского района</li>
	<li>Управление финансов района Кубодиён</li>
	<li>Управление финансов района Джалолиддина Руми</li>
	<li>Управление финансов района Темурмалик</li>
	<li>Управление финансов Кумсангирского района</li>
	<li>Управление финансов Муминабадского района</li>
	<li>Управление финансов Пянджского района</li>
	<li>Управление финансов Фархорского района</li>
	<li>Управление финансов района Мир Сайид Алии Хамадони</li>
	<li>Управление финансов Ховалингского района</li>
	<li>Управление финансов района Хуросон</li>
	<li>Управление финансов района Носири Хусрав</li>
	<li>Управление финансов района Абдурахмона Джами</li>
	<li>Управление финансов Шаартузского района</li>
	<li>Управление финансов Шуроободского района</li>
	<li>Управление финансов Яванского района</li>
</ul>

<p>&nbsp;</p>

<h2>Согдийская область</h2>

<ul>
	<li>Главное управление финансов Согдийской области</li>
	<li>Управление финансов города Исфара</li>
	<li>Управление финансов города Истаравшан</li>
	<li>Управление финансов города Канибадам</li>
	<li>Управление финансов города Кайраккум</li>
	<li>Управление финансов города Пенджикент</li>
	<li>Управление финансов города Истиклол</li>
	<li>Управление финансов города Худжанд</li>
	<li>Управление финансов города Чкаловск</li>
	<li>Управление финансов Айнинского района</li>
	<li>Управление финансов Аштского района</li>
	<li>Управление финансов Бободжон Гафуровского района</li>
	<li>Управление финансов Ганчинского района</li>
	<li>Управление финансов Зафарабадского района</li>
	<li>Управление финансов Кухистони Мастчохского района</li>
	<li>Управление финансов Матчинского района</li>
	<li>Управление финансов Джаббор Расуловского района</li>
	<li>Управление финансов района Спитамен</li>
	<li>Управление финансов Шахристанского района</li>
</ul>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (58, 35, N'Таърихи Вазорат', NULL, N'Таърихи Вазорат', N'Таърихи Вазорат', N'<h2>Министры финансов Республики Таджикистан</h2>

<ol>
	<li>Азимҷон Акчурин моҳи декабри соли 1924 - моҳи марти соли 1926</li>
	<li>Шириншо Шотемур моҳи июни соли 1926 - моҳи октябри соли 1926</li>
	<li>Абдуҷаббор Айдарбек соли 1927 - соли 1928</li>
	<li>Темирбек Жургенов соли 1929 - соли 1930</li>
	<li>Иброҳим Исмоилов моҳи феврали соли 1931 - моҳи июни соли 1932</li>
	<li>Сергей Шалимов Димитриевич моҳи ноябри соли 1934<strong> - </strong>моҳи июни соли 1937</li>
	<li>Иосиф Лазарев Берлович моҳи июни соли 1938 - моҳи сентябри соли 1939</li>
	<li>Василий Волобуев Романович моҳи сентябри соли 1939<strong> - </strong>моҳи августи соли 1945</li>
	<li>Мирхон Саидов моҳи сентябри соли 1945 - моҳи январи соли 1949</li>
	<li>Алиқул Алиев моҳи январи соли 1949 - моҳи марти соли 1963</li>
	<li>Мирзоалӣ Вайсов моҳи апрели соли 1963 - моҳи сентябри соли 1972</li>
	<li>Ҷанобиддин Лафизов моҳи январи соли 1973 - соли 1991</li>
	<li>Исмоил Давлатов моҳи феврали соли 1993 - моҳи ноябри соли 1993</li>
	<li>Нормат Юнусов соли 1991 - соли 1994</li>
	<li>Анваршо Музафаров моҳи декабри соли 1994 - моҳи январи соли 2000</li>
	<li>Сафаралӣ Наҷмудинов Маҳсудинович моҳи январи соли 2000 - ноябри соли 2013</li>
	<li>Қурбонов Абдусалом Каримович моҳи ноябри соли 2013<strong> - </strong>то ба имрўз</li>
</ol>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (59, 35, N'Донорҳо (шарикони рушд)', NULL, N'Донорҳо (шарикони рушд)', N'Донорҳо (шарикони рушд)', N'<p>Со времени обретения независимости Республика Таджикистан является активным участником международного сотрудничества. В рамках международной помощи Таджикистан сотрудничает как с странами-донорами помощи (двусторонние доноры), так и с ведущими международными организациями (многосторонние доноры).<br />
Необходимость устойчивого развития Республики Таджикистан требует более активного привлечения в страну средств международной помощи, а значит, более целенаправленной работы с донорами.<br />
Международная помощь в рамках двустороннего сотрудничества Республики Таджикистан предоставляется на основе межправительственных соглашений и в рамках специальных фондов, финансируемых правительствами стран-доноров международной помощи. Следует отметить, что значительные средства стран-доноров поступают странам-бенефициарам через международные финансовые институты.</p>

<p>Основными донорами Республики Таджикистан среди международных финансовых институтов являются Всемирный Банк (ВБ), Азиатский Банк Развития (АБР), Европейский Банк Реконструкции и Развития (ЕБРР), Исламский Банк Развития (ИБР), Кувейтский фонд и др. Основными странами &mdash; донорами являются Япония, Германия, Швейцария, КНР, Исламская Республика Иран.</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (60, 35, N'Кор', NULL, N'Кор', NULL, N'<p>Для подачи заявки на вакансию необходимо заполнить анкету, заявление и предоставить необходимый пакет документов.</p>

<p>Образец анкету необходимо скачать по следующей сслылке</p>

<p>Образец заявления необходимо скачать по следующей ссылке</p>

<p>Пакет документов необходимо предоставить по адресу: ул. Академиков Раджабовых, 3. Отдел кадров. Телефон для справок 221-00-00</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (61, 35, N'Маълумот барои тамос', NULL, N'Маълумот барои тамос', N'Маълумот барои тамос', N'<p>Министерство Финансов</p>

<p>Республики Таджикистан</p>

<p>734025, г. Душанбе</p>

<p>ул. Академиков Раджабовых 3</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (62, 35, N'Лоиҳаҳо', N'/Project', N'Лоиҳаҳо', N'Лоиҳаҳо', N'<p>Лоиҳаҳо</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (63, 36, N'Пурсиши савол', N'/Question/RequestFromUser', N'Пурсиши савол', N'Пурсиши савол', N'<p>Пурсиши савол</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (64, 36, N'Райпурсии истифодабарандагони сомона', NULL, N'Райпурсии истифодабарандагони сомона', N'Райпурсии истифодабарандагони сомона', N'<p>Райпурсии истифодабарандагони сомона</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (65, 37, N'Обуна ба матбуот', N'/Subscription/News', N'Обуна ба матбуот', N'Обуна ба матбуот', N'<p>Обуна ба матбуот</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (66, 37, N'Бойгонии ахборот', NULL, N'Бойгонии ахборот', N'Бойгонии ахборот', N'<p>Бойгонии ахборот</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (67, 37, N'Галереяи суратҳо ', NULL, N'Галереяи суратҳо ', N'Галереяи суратҳо ', N'<p>Галереяи суратҳо</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (68, 38, N'Бойгонии файлҳо', N'/Files', N'Бойгонии файлҳо', N'Бойгонии файлҳо', N'<p>Бойгонии файлҳо</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (69, 39, N'Макроиқтисодиёт ', NULL, N'Макроиқтисодиёт ', N'Макроиқтисодиёт 
', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (70, 41, N'Legal Bases of Activity', NULL, N'Legal Bases of Activity', N'Legal Bases of Activity', N'<p>Министерство финансов Республики Таджикистан является центральным органом исполнительной власти в составе Правительства Республики Таджикистан и обеспечивает:</p>

<ul>
	<li>&nbsp;&nbsp; проведение единой государственной и нормативной правовой политики;</li>
	<li>&nbsp;&nbsp; регулирование финансовой, бюджетной, налоговой, страховой и валютной деятельности государства;</li>
	<li>&nbsp;&nbsp; координацию органов исполнительной власти по исполнению и соблюдению налогового законодательства;</li>
	<li>&nbsp;&nbsp; контроль исчисления, полноту и своевременность уплаты в государственный бюджет налогов, сборов и других обязательных&nbsp;платежей налогоплательщиками.</li>
</ul>
', NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (71, 2, N'Проекты', N'/Project', N'Проекты', N'Проекты', N'<p>Проекты</p>
', 7, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (72, 40, N'Каталоги интишорот', NULL, N'Каталоги интишорот', N'Каталоги интишорот', N'<p>Каталоги интишорот</p>
', NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (73, 40, N'Эълонҳои нусхаҳои навбатӣ', NULL, N'Эълонҳои нусхаҳои навбатӣ', N'Эълонҳои нусхаҳои навбатӣ', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (74, 45, N'Files archive', N'/Files', N'Files archive', NULL, NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (75, 40, N'Мундариҷаи нусхаҳои гузашта', NULL, N'Мундариҷаи нусхаҳои гузашта', N'Мундариҷаи нусхаҳои гузашта', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (76, 40, N'Ариза барои обуна', NULL, N'Ариза барои обуна', N'Ариза барои обуна', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (77, 40, N'Ариза барои ҷойгирии реклама', NULL, N'Ариза барои ҷойгирии реклама', N'Ариза барои ҷойгирии реклама', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (78, 49, N'Программы развития экономики', N'/Files?Category=24&name=', N'Программы развития экономики', N'Программы развития экономики', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (79, 49, N'Отчеты о реформах', N'/Files?Category=35&name=', N'Отчеты о провевенных реформах', N'Отчеты о провевенных реформах', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (80, 49, N'Контракты в рамках проекта УГФ', N'/Files?Category=36&name=', N'Контракты в рамках проекта УГФ', N'Контракты в рамках проекта УГФ', NULL, NULL, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (81, 47, N'Publications Catalogue', NULL, N'Publications Catalogue', N'Publications Catalogue', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (82, 47, N'Notice of New Issues', NULL, N'Notice of New Issues', N'Notice of New Issues', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (83, 47, N'Contents of Previous Issues', NULL, N'Contents of Previous Issues', N'Contents of Previous Issues', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (84, 47, N'Apply for Subscription', NULL, N'Apply for Subscription', N'Apply for Subscription', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (85, 47, N'Apply for Advertising', NULL, N'Apply for Advertising', N'Apply for Advertising', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (86, 6, N'Дата центр', N'/DataCenter', N'Дата центр', NULL, NULL, 0, 1, NULL, 1)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (87, 39, N'Маркази иттилоот', NULL, N'Маркази иттилоот', N'Маркази иттилоот', NULL, 68, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (88, 39, N'Татбиқи буҷет', NULL, N'Татбиқи буҷет', N'Татбиқи буҷет', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (89, 39, N'Қарзи берунаи давлатӣ', NULL, N'Қарзи берунаи давлатӣ', N'Қарзи берунаи давлатӣ', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (90, 39, N'Қарзи дохилии давлатӣ ', NULL, N'Қарзи дохилии давлатӣ ', N'Қарзи дохилии давлатӣ ', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (91, 39, N'Интишороти мутахассисон', NULL, N'Интишороти мутахассисон', N'Интишороти мутахассисон', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (92, 39, N'Пешгӯии иқтисодӣ', NULL, N'Пешгӯии иқтисодӣ', N'Пешгӯии иқтисодӣ', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (93, 39, N'Пешгӯии иқтисодӣ', NULL, N'Пешгӯии иқтисодӣ', N'Пешгӯии иқтисодӣ', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (94, 39, N'Аудити дохилӣ ', N'Аудити дохилӣ ', N'Аудити дохилӣ ', N'Аудити дохилӣ ', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (95, 51, N'Ҳисоботҳо оиди ислоҳотҳо', NULL, N'Ҳисоботҳо оиди ислоҳотҳо', N'Ҳисоботҳо оиди ислоҳотҳо', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (96, 51, N'Шартномаҳо дар доираи лоиҳаи ИМД', NULL, N'Шартномаҳо дар доираи лоиҳаи ИМД', N'Шартномаҳо дар доираи лоиҳаи ИМД', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (97, 51, N'Стратегияҳои рушд', NULL, N'Стратегияҳои рушд', N'Стратегияҳои рушд', NULL, NULL, 1, NULL, 3)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (98, 52, N'Reports on reforms', NULL, N'Reports on reforms', N'Reports on reforms', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (99, 52, N'Contracts in the framework of the PFM', NULL, N'Contracts in the framework of the PFM', N'Contracts in the framework of the PFM', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (100, 52, N'Development strategies', NULL, N'Development strategies', N'Development strategies', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (101, 46, N'Data Center', NULL, N'Data Center', N'Data Center', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (102, 46, N'Macroeconomics', NULL, N'Macroeconomics', N'Macroeconomics', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (103, 46, N'Budget execution', NULL, N'Budget execution', N'Budget execution', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (104, 46, N'External public debt', NULL, N'External public debt', N'External public debt', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (105, 46, N'Internal public debt', NULL, N'Internal public debt', N'Internal public debt', NULL, NULL, 1, NULL, 2)
GO
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (106, 46, N'Experts'' publications ', NULL, N'Experts'' publications ', N'Experts'' publications ', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (107, 46, N'Economic forecasts', NULL, N'Economic forecasts', N'Economic forecasts', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (108, 46, N'Internal audit', NULL, N'Internal audit', N'Internal audit', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (109, 41, N'Organizational Structure', NULL, N'Organizational Structure', N'Organizational Structure', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (110, 41, N'Subordinate Organizations', NULL, N'Subordinate Organizations', N'Subordinate Organizations', N'<ul>
	<li>Казначейство</li>
	<li>Государственный пробирный надзор (Госпробирнадзор) при Министерстве финансов Республики Таджикистан</li>
	<li>Государственное хранилище ценностей (Гохран) при Министерстве финансов Республики Таджикистан</li>
	<li>Государственная служба страхового надзора (Госстрахнадзор) при Министерстве финансов Республики Таджикистан</li>
	<li>Агентство по развитию рынка ценных бумаг и специализированного регистратора при Министерстве финансов Республики Таджикистан</li>
	<li>Институт финансов и экономики Таджикистана</li>
	<li>Научно-исследовательский институт &quot;Финансы&quot;</li>
	<li>Редакция журнала &quot;Молия ва хисобдори&quot; Министерства финансов Республики Таджикистан</li>
	<li>Центр повышения квалификации работников системы финансов</li>
	<li>Государственное казенное республиканское предприятие &quot;Тиллои Точик&quot;</li>
	<li>Государственная страховая компания &quot;Таджиксармоягузор&quot;</li>
	<li>Отдел капитального строительства Министерства финансов Республики Таджикистан</li>
</ul>

<h2>&nbsp;</h2>

<h2>Душанбе</h2>

<ul>
	<li>Главное управление финансов города Душанбе</li>
	<li>Управление финансов района Шохмансур города Душанбе</li>
	<li>Управление финансов района Исмоили Сомони города Душанбе</li>
	<li>Управление финансов района Фирдавси города Душанбе</li>
	<li>Управление финансов района Сино города Душанбе</li>
</ul>

<h2>&nbsp;</h2>

<h2>Республиканского подчинения</h2>

<ul>
	<li>Финансовое управление города Вахдат</li>
	<li>Финансовое управление города Рогун</li>
	<li>Финансовое управление города Турсунзаде</li>
	<li>Финансовое управление Варзобского района</li>
	<li>Финансовое управление Раштского района</li>
	<li>Финансовое управление Гиссарского района</li>
	<li>Финансовое управление Джиргитальского района</li>
	<li>Финансовое управление Нурободского района</li>
	<li>Финансовое управление района Рудаки</li>
	<li>Финансовое управление Тавильдаринского района</li>
	<li>Финансовое управление Файзабадского района</li>
	<li>Финансовое управление Шахринавского района</li>
	<li>Финансовое управление Таджикабадского района</li>
</ul>

<h2>&nbsp;</h2>

<h2>Горно-Бадахшанская область</h2>

<ul>
	<li>Главное управление финансов Горно - Бадахшанской автономной области</li>
	<li>Управление финансов города Хорог</li>
	<li>Управление финансов Ванчского района</li>
	<li>Управление финансов Дарвазского района</li>
	<li>Управление финансов Ишкашимского района</li>
	<li>Управление финансов Мургабского района</li>
	<li>Управление финансов Рошткалинского района</li>
	<li>Управление финансов Рушанского района</li>
	<li>Управление финансов Шугнанского района</li>
</ul>

<h2>&nbsp;</h2>

<h2>Хатлонская область</h2>

<ul>
	<li>Главное управление финансов Хатлонской области</li>
	<li>Главное управление финансов по Кулябской региональной зоне</li>
	<li>Управление финансов города Курган -тюбе</li>
	<li>Управление финансов города Куляб</li>
	<li>Управление финансов города Нурек</li>
	<li>Управление финансов города Сарбанд</li>
	<li>Управление финансов Бальджуванского района</li>
	<li>Управление финансов Бохтарского района</li>
	<li>Управление финансов Вахшского района</li>
	<li>Управление финансов Восейского района</li>
	<li>Управление финансов Дангаринского района</li>
	<li>Управление финансов Джиликульского района</li>
	<li>Управление финансов района Кубодиён</li>
	<li>Управление финансов района Джалолиддина Руми</li>
	<li>Управление финансов района Темурмалик</li>
	<li>Управление финансов Кумсангирского района</li>
	<li>Управление финансов Муминабадского района</li>
	<li>Управление финансов Пянджского района</li>
	<li>Управление финансов Фархорского района</li>
	<li>Управление финансов района Мир Сайид Алии Хамадони</li>
	<li>Управление финансов Ховалингского района</li>
	<li>Управление финансов района Хуросон</li>
	<li>Управление финансов района Носири Хусрав</li>
	<li>Управление финансов района Абдурахмона Джами</li>
	<li>Управление финансов Шаартузского района</li>
	<li>Управление финансов Шуроободского района</li>
	<li>Управление финансов Яванского района</li>
</ul>

<p>&nbsp;</p>

<h2>Согдийская область</h2>

<ul>
	<li>Главное управление финансов Согдийской области</li>
	<li>Управление финансов города Исфара</li>
	<li>Управление финансов города Истаравшан</li>
	<li>Управление финансов города Канибадам</li>
	<li>Управление финансов города Кайраккум</li>
	<li>Управление финансов города Пенджикент</li>
	<li>Управление финансов города Истиклол</li>
	<li>Управление финансов города Худжанд</li>
	<li>Управление финансов города Чкаловск</li>
	<li>Управление финансов Айнинского района</li>
	<li>Управление финансов Аштского района</li>
	<li>Управление финансов Бободжон Гафуровского района</li>
	<li>Управление финансов Ганчинского района</li>
	<li>Управление финансов Зафарабадского района</li>
	<li>Управление финансов Кухистони Мастчохского района</li>
	<li>Управление финансов Матчинского района</li>
	<li>Управление финансов Джаббор Расуловского района</li>
	<li>Управление финансов района Спитамен</li>
	<li>Управление финансов Шахристанского района</li>
</ul>
', NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (111, 41, N'History of the Ministry', NULL, N'History of the Ministry', N'History of the Ministry', N'<h2>Министры финансов Республики Таджикистан</h2>

<ol>
	<li>Азимҷон Акчурин моҳи декабри соли 1924 - моҳи марти соли 1926</li>
	<li>Шириншо Шотемур моҳи июни соли 1926 - моҳи октябри соли 1926</li>
	<li>Абдуҷаббор Айдарбек соли 1927 - соли 1928</li>
	<li>Темирбек Жургенов соли 1929 - соли 1930</li>
	<li>Иброҳим Исмоилов моҳи феврали соли 1931 - моҳи июни соли 1932</li>
	<li>Сергей Шалимов Димитриевич моҳи ноябри соли 1934<strong>&nbsp;-&nbsp;</strong>моҳи июни соли 1937</li>
	<li>Иосиф Лазарев Берлович моҳи июни соли 1938 - моҳи сентябри соли 1939</li>
	<li>Василий Волобуев Романович моҳи сентябри соли 1939<strong>&nbsp;-&nbsp;</strong>моҳи августи соли 1945</li>
	<li>Мирхон Саидов моҳи сентябри соли 1945 - моҳи январи соли 1949</li>
	<li>Алиқул Алиев моҳи январи соли 1949 - моҳи марти соли 1963</li>
	<li>Мирзоалӣ Вайсов моҳи апрели соли 1963 - моҳи сентябри соли 1972</li>
	<li>Ҷанобиддин Лафизов моҳи январи соли 1973 - соли 1991</li>
	<li>Исмоил Давлатов моҳи феврали соли 1993 - моҳи ноябри соли 1993</li>
	<li>Нормат Юнусов соли 1991 - соли 1994</li>
	<li>Анваршо Музафаров моҳи декабри соли 1994 - моҳи январи соли 2000</li>
	<li>Сафаралӣ Наҷмудинов Маҳсудинович моҳи январи соли 2000 - ноябри соли 2013</li>
	<li>Қурбонов Абдусалом Каримович моҳи ноябри соли 2013<strong>&nbsp;-&nbsp;</strong>то ба имрўз</li>
</ol>
', NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (112, 41, N'Donors (Development Partners)', NULL, N'Donors (Development Partners)', N'Donors (Development Partners)', N'<p>Со времени обретения независимости Республика Таджикистан является активным участником международного сотрудничества. В рамках международной помощи Таджикистан сотрудничает как с странами-донорами помощи (двусторонние доноры), так и с ведущими международными организациями (многосторонние доноры).<br />
Необходимость устойчивого развития Республики Таджикистан требует более активного привлечения в страну средств международной помощи, а значит, более целенаправленной работы с донорами.<br />
Международная помощь в рамках двустороннего сотрудничества Республики Таджикистан предоставляется на основе межправительственных соглашений и в рамках специальных фондов, финансируемых правительствами стран-доноров международной помощи. Следует отметить, что значительные средства стран-доноров поступают странам-бенефициарам через международные финансовые институты.</p>

<p>Основными донорами Республики Таджикистан среди международных финансовых институтов являются Всемирный Банк (ВБ), Азиатский Банк Развития (АБР), Европейский Банк Реконструкции и Развития (ЕБРР), Исламский Банк Развития (ИБР), Кувейтский фонд и др. Основными странами &mdash; донорами являются Япония, Германия, Швейцария, КНР, Исламская Республика Иран.</p>
', NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (113, 41, N'Jobs', NULL, N'Jobs', N'Jobs', N'<p>Для подачи заявки на вакансию необходимо заполнить анкету, заявление и предоставить необходимый пакет документов.</p>

<p>Образец анкету необходимо скачать по следующей сслылке</p>

<p>Образец заявления необходимо скачать по следующей ссылке</p>

<p>Пакет документов необходимо предоставить по адресу: ул. Академиков Раджабовых, 3. Отдел кадров. Телефон для справок 221-00-00</p>
', NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (114, 41, N'Projects', N'/Project', N'Projects', N'Projects', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (115, 41, N'Contacts', NULL, N'Contacts', N'Contacts', N'<p>Министерство Финансов</p>

<p>Республики Таджикистан</p>

<p>734025, г. Душанбе</p>

<p>ул. Академиков Раджабовых 3</p>
', NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (116, 43, N'Ask a Question', NULL, N'Ask a Question', N'Ask a Question', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (117, 43, N'Site Users'' Survey ', NULL, N'Site Users'' Survey ', N'Site Users'' Survey ', NULL, NULL, 1, NULL, 2)
INSERT [dbo].[tb_content] ([id], [main_id], [name], [fixed_url], [page_title], [description], [page_content], [order_id], [is_active], [show_on_menu], [lang_id]) VALUES (118, 49, N'Стратегии развития', NULL, N'Стратегии развития', N'Стратегии развития', NULL, NULL, 1, NULL, 1)
SET IDENTITY_INSERT [dbo].[tb_content] OFF
SET IDENTITY_INSERT [dbo].[tb_courses] ON 

INSERT [dbo].[tb_courses] ([id], [name], [description], [value], [status_id], [is_active]) VALUES (1, N'USD', N'Курс долара США', N'5.4', 1, 1)
INSERT [dbo].[tb_courses] ([id], [name], [description], [value], [status_id], [is_active]) VALUES (2, N'Eur', N'Курс Евро', N'6.8', 1, 1)
INSERT [dbo].[tb_courses] ([id], [name], [description], [value], [status_id], [is_active]) VALUES (3, N'Rub', N'Курс российского рубля', N'0.89', 2, 1)
INSERT [dbo].[tb_courses] ([id], [name], [description], [value], [status_id], [is_active]) VALUES (4, N'Индекс инфляции', NULL, N'0.13', 2, 1)
INSERT [dbo].[tb_courses] ([id], [name], [description], [value], [status_id], [is_active]) VALUES (5, N'Ставка рефинансирования', NULL, N'12.4', 3, 1)
SET IDENTITY_INSERT [dbo].[tb_courses] OFF
SET IDENTITY_INSERT [dbo].[tb_courses_status] ON 

INSERT [dbo].[tb_courses_status] ([id], [name]) VALUES (1, N'Повышение')
INSERT [dbo].[tb_courses_status] ([id], [name]) VALUES (2, N'Понижение')
INSERT [dbo].[tb_courses_status] ([id], [name]) VALUES (3, N'Изменений нет')
SET IDENTITY_INSERT [dbo].[tb_courses_status] OFF
SET IDENTITY_INSERT [dbo].[tb_dc] ON 

INSERT [dbo].[tb_dc] ([id], [create_date], [title], [description], [image], [type_id], [is_active], [tb_organization_Id]) VALUES (3, CAST(N'2015-01-20 13:11:08.000' AS DateTime), N'Динамикаи музди миенаи мехнат дар солхои 2007-2012', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', N'graph.png', 1, 1, 1)
INSERT [dbo].[tb_dc] ([id], [create_date], [title], [description], [image], [type_id], [is_active], [tb_organization_Id]) VALUES (4, CAST(N'2015-05-26 00:22:32.727' AS DateTime), N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'image003.jpg', 2, 1, 1)
INSERT [dbo].[tb_dc] ([id], [create_date], [title], [description], [image], [type_id], [is_active], [tb_organization_Id]) VALUES (5, CAST(N'2015-05-26 00:22:58.400' AS DateTime), N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'image003.jpg', 3, 1, 1)
INSERT [dbo].[tb_dc] ([id], [create_date], [title], [description], [image], [type_id], [is_active], [tb_organization_Id]) VALUES (6, CAST(N'2015-05-26 00:29:42.227' AS DateTime), N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'image003.jpg', 5, 1, 1)
INSERT [dbo].[tb_dc] ([id], [create_date], [title], [description], [image], [type_id], [is_active], [tb_organization_Id]) VALUES (7, CAST(N'2015-05-26 00:30:10.137' AS DateTime), N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'Сохтори соҳаҳои саноат бо мнл. сомони ', N'image003.jpg', 5, 1, 1)
INSERT [dbo].[tb_dc] ([id], [create_date], [title], [description], [image], [type_id], [is_active], [tb_organization_Id]) VALUES (8, CAST(N'2015-11-15 13:30:33.340' AS DateTime), N'afafaf', N'asfasfaf', N'11240780_882061938509352_8952423513127269931_n.jpg', 1, 1, 14)
SET IDENTITY_INSERT [dbo].[tb_dc] OFF
SET IDENTITY_INSERT [dbo].[tb_dc_type] ON 

INSERT [dbo].[tb_dc_type] ([id], [name], [lang], [is_active]) VALUES (1, N'Исполнение бюджета', 1, 1)
INSERT [dbo].[tb_dc_type] ([id], [name], [lang], [is_active]) VALUES (2, N'Budget execution', 2, 1)
INSERT [dbo].[tb_dc_type] ([id], [name], [lang], [is_active]) VALUES (3, N'External public debt', 2, 1)
INSERT [dbo].[tb_dc_type] ([id], [name], [lang], [is_active]) VALUES (4, N'Economic forecasts', 2, 1)
INSERT [dbo].[tb_dc_type] ([id], [name], [lang], [is_active]) VALUES (5, N'Татбиқи буҷет', 3, 1)
INSERT [dbo].[tb_dc_type] ([id], [name], [lang], [is_active]) VALUES (6, N'Қарзи берунаи давлатӣ', 3, 1)
INSERT [dbo].[tb_dc_type] ([id], [name], [lang], [is_active]) VALUES (7, N'Пешгӯии иқтисодӣ', 3, 1)
SET IDENTITY_INSERT [dbo].[tb_dc_type] OFF
SET IDENTITY_INSERT [dbo].[tb_donors] ON 

INSERT [dbo].[tb_donors] ([id], [logo], [name], [description], [contacts], [is_active]) VALUES (1, N'logo (1).png', N'ЕБРР', N'Тут описание', N'тут контакты', 1)
INSERT [dbo].[tb_donors] ([id], [logo], [name], [description], [contacts], [is_active]) VALUES (5, N'fiata.png', N'ЕБРРmm', N'Тут описание', N'тут контакты', 1)
SET IDENTITY_INSERT [dbo].[tb_donors] OFF
SET IDENTITY_INSERT [dbo].[tb_economic] ON 

INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (1, N'Уровень инфляции', N'152', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (3, N'МРОТ ', N'100', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (4, N'Уровень ВВП ', N'120', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (5, N'Инвестиционный рейтинг (МВФ)', N'200', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (6, N'Рейтинг по ведению бизнеса (ВБ)', N'24', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (7, N'золото', N'20', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (8, N'серебро ', N'23', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (9, N'платина ', N'23', 1)
INSERT [dbo].[tb_economic] ([Id], [name], [value], [tb_lang_id]) VALUES (10, N'алюминий', N'31', 1)
SET IDENTITY_INSERT [dbo].[tb_economic] OFF
SET IDENTITY_INSERT [dbo].[tb_file_on_page] ON 

INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (11, 35, 8)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (12, 36, 8)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (13, 37, 8)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (14, 35, 50)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (15, 36, 50)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (16, 37, 50)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (17, 35, 70)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (18, 38, 70)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (19, 37, 70)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (20, 59, 59)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (21, 59, 12)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (22, 59, 112)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (23, 60, 113)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (24, 60, 14)
INSERT [dbo].[tb_file_on_page] ([id], [file_id], [content_page_id]) VALUES (25, 60, 60)
SET IDENTITY_INSERT [dbo].[tb_file_on_page] OFF
SET IDENTITY_INSERT [dbo].[tb_files] ON 

INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (35, CAST(N'2015-05-23 21:45:08.000' AS DateTime), 1, N'Положение о Министерстве финансов Республики Таджикистан', N'в редакции Постановления Правительства РТ от 1.10.2007г. №508, от 19.09.2008г.№454, от 29.09.2008г.№458, от 18.06.2009г.№345, от 03.12.2010г.№627, от 03.04.2012г.№154, от 11.05.2012г.№227', N'Положение МФРТ_rus.docx', 1, CAST(N'2006-02-01 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (36, CAST(N'2015-05-24 18:15:36.000' AS DateTime), 9, N'Закон Республики Таджикистан "О финансовом управлении и внутреннем контроле в государственном секторе"', N'Настоящий Закон устанавливает организационные и правовые основы системы финансового управления и внутреннего контроля в государственном секторе и организациях, финансируемых  за счет Государственного бюджета Республики Таджикистан ', N'zakon_fin_kontrol_rus.pdf', 1, CAST(N'2010-08-07 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (37, CAST(N'2015-05-24 18:33:52.080' AS DateTime), 9, N'Закон Республики Таджикистан "О внутреннем аудите в государственном секторе"', N'Настоящий закон регулирует комплекс отношений, связанных с установлением принципов, основ формирования, планирования, проведения и отчета внутреннего аудита в государственном секторе', N'zakon_int_audit_rus.pdf', 1, CAST(N'2010-07-21 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (38, CAST(N'2015-05-24 20:51:39.443' AS DateTime), 9, N'Закон Республики Таджикистан о государственных финансах', N'Настоящий Закон определяет правовые основы, организационные принципы  управления государственными финансами, систематизации бюджета и его классификации,  составления, формирования, распределения и использования централизованных денежных средств, регулирует финансовые межбюджетные отношения. Закон устанавливает место органов государственной и местной власти,  других участников бюджетного процесса в подготовке, рассмотрении проектов бюджетов, утверждении, контроле за их исполнением  и  ответственность за нарушение законодательства Республики Таджикистан о государственных финансах.', N'zakgosfin.docx', 1, CAST(N'2007-07-30 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (59, CAST(N'2015-05-26 09:55:13.290' AS DateTime), 65, N'Партнеры по развитию', N'Справочник партнеров по развитию', N'UNDP_TJK_DPP_2012_Rus.pdf', 1, CAST(N'2015-05-26 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (60, CAST(N'2015-05-26 10:08:37.963' AS DateTime), 47, N'Объявление о вакансии', N'Объявляет конкурс по набору персонала по следующим позициям: Технический специалист (по ведению финансовой отчетности); Специалист по коммуникациям и связи с общественностью ', N'obyav_29012015.docx', 1, CAST(N'2015-05-22 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (656, CAST(N'2015-05-24 22:36:19.117' AS DateTime), 1, N'НАЦИОНАЛЬНЫЕ СТАНДАРТЫ КОРПОРАТИВНОГО УПРАВЛЕНИЯ РЕСПУБЛИКИ ТАДЖИКИСТАН (ПРОЕКТ)', N'Стандарты разработаны в соответствии с положениями действующего законодательства Республики Таджикистан, а также с учетом сложившейся национальной и международной практики в сфере корпоративного управления.', N'1284524946_nacionalnye-standarty-korporativnogo-upravlenija.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (657, CAST(N'2015-05-24 22:36:19.187' AS DateTime), 1, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Во исполнение Протокольных решений Координационного Совета по бухгалтерскому учету стран-членов СНГ и приведения системы бухгалтерского учета в соответствие с международными стандартами бухгалтерской (финансовой) отчетности приказываю:', N'polojenie desyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (658, CAST(N'2015-05-24 22:36:19.190' AS DateTime), 1, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'В соответствии со ст.6 Закона Республики Таджикистан "О бухгалтерском учете" и с целью приведения системы бухгалтерского учета в соответствие с международными стандартами бухгалтерской (финансовой) отчетности приказываю:', N'polojenie devyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (659, CAST(N'2015-05-24 22:36:19.190' AS DateTime), 1, N'ПРИКАЗ "ОБ УТВЕРЖДЕНИИ ПОЛОЖЕНИЯ ПО ВЕДЕНИЮБУХГАЛТЕРСКОГО УЧЁТА И БУХГАЛТЕРСКОЙ ОТЧЁТНОСТИ В РЕСПУБЛИКЕ ТАДЖИКИСТАН"', N'Во исполнение статьи 6 Закона Республики Таджикистан "Закона о бухгалтерском учёте" и с целью приведения системы бухгалтерского учёта и бухгалтерской отчётности в соответствии с международными стандартами бухгалтерской (финансовой) отчётности приказываю:', N'polojenie dvinasti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (660, CAST(N'2015-05-24 22:36:19.193' AS DateTime), 1, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'В соответствии со ст.6 Закона Республики Таджикистан "О бухгалтерском учете" и в целях приведения системы бухгалтерского учета в соответствии с международными стандартами бухгалтерской (финансовой) отчетности приказываю:', N'polojenie odinosti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (661, CAST(N'2015-05-24 22:36:19.193' AS DateTime), 1, N'ПОЛОЖЕНИЕ ОБ ОСОБЕННОСТЯХ ЛИЦЕНЗИРОВАНИЯ ОТДЕЛЬНЫХ ВИДОВ ДЕЯТЕЛЬНОСТИ (В НОВОЙ РЕДАКЦИИ)', N'Настоящее Положение об особенностях лицензирования отдельных видов деятельности (в дальнейшем - Положение) разработано в соответствии с Законом Республики Таджикистан «О лицензировании отдельных видов деятельности».', N'polojenie pervi.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (662, CAST(N'2015-05-24 22:36:19.210' AS DateTime), 1, N'«ОБ УТВЕРЖДЕНИИ «РУКОВОДСТВА ПО СТРУКТУРЕ БУХГАЛТЕРСКОГО УЧЕТА ДЛЯ НАЦИОНАЛЬНОГО БАНКА ТАДЖИКИСТАНА» И «РУКОВОДСТВА ПО СТРУКТУРЕ БУХГАЛТЕРСКОГО УЧЕТА ДЛЯ КОММЕРЧЕСКИХ БАНКОВ»»', N'Утвердить «Руководство по структуре бухгалтерского учета для Национального банка Таджикистана» и «Руководство по структуре бухгалтерского учета для коммерческих банков» (прилагается).', N'postonavleni pervi.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (663, CAST(N'2015-05-24 22:36:19.223' AS DateTime), 1, N'ПРИКАЗ "В ЦЕЛЯХ ВНЕДРЕНИЯ ЕДИНОЙ СИСТЕМЫ ФИНАНСИРОВАНИЯ, УЧЕТА И ОТЧЕТНОСТИ В СИСТЕМЕ КАЗНАЧЕЙСТВА РЕСПУБЛИКИ"', N'Утвердить инструкцию по внедрению учета и отчетности по исполнению государственного бюджета в казначействе.', N'prikaz1.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (664, CAST(N'2015-05-24 22:36:19.227' AS DateTime), 1, N'ПРИКАЗ "ОБ УТВЕРЖДЕНИИ ИНСТРУКЦИИ ПО БУХГАЛТЕРСКОМУ УЧЕТУ В БЮДЖЕТНЫХ УЧРЕЖДЕНИЯХ"', N'Утвердить прилагаемую Инструкцию по бухгалтерскому учету в бюджетных учреждениях.', N'prikaz2.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (665, CAST(N'2015-05-24 22:36:19.227' AS DateTime), 1, N'ПРИКАЗ "ОБ УТВЕРЖДЕНИИ ПОЛОЖЕНИЯ ПО ВЕДЕНИЮБУХГАЛТЕРСКОГО УЧЁТА И БУХГАЛТЕРСКОЙ ОТЧЁТНОСТИ В РЕСПУБЛИКЕ ТАДЖИКИСТАН"', N'Утвердить прилагаемое Положение по ведению бухгалтерского учёта и бухгалтерской отчётности в Республике Таджикистан.', N'prikaz3.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (666, CAST(N'2015-05-24 22:36:19.227' AS DateTime), 1, N'ПРИКАЗ', N'Утвердить прилагаемое Положение по бухгалтерскому учету "Бухгалтерская отчетность предприятий" ПБУ 5/2001.', N'prikaz4.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (667, CAST(N'2015-05-24 22:36:19.227' AS DateTime), 1, N'ПРИКАЗ', N'Утвердить прилагаемое Положение по бухгалтерскому учету "Договор подряда" ПБУ 8/2002.', N'prikaz5.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (668, CAST(N'2015-05-24 22:36:19.273' AS DateTime), 1, N'УКАЗАНИЯ О ПОРЯДКЕ ПЕРЕОЦЕНКИ ВАЛЮТНЫХ СЧЕТОВ И СТАТЕЙ БУХГАЛТЕРСКОГО БАЛАНСА УПОЛНОМОЧЕННЫХ БАНКОВ В ИНОСТРАННОЙ ВАЛЮТЕ', N'В связи с вводом национальной валюты при расчетах доходов и расходов государственного бюджета, для всех видов платежно-расчетных отношений государства с юридическими и физическими лицами, а также для целей налогообложения, бухгалтерского учета, применяется курс таджикского рубла, официально устанавливаемый Национальным банком Республики Таджикистан', N'u o ppvs i sbbub v ivp.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (669, CAST(N'2015-05-24 22:36:19.273' AS DateTime), 1, N'УКАЗАНИЯ ОБ ОБЪЕМЕ ФОРМ БУХГАЛТЕРСКОЙ ОТЧЕТНОСТИ СТРАХОВЫХ ОРГАНИЗАЦИЙ', N'Бухгалтерская отчетность страховой организации как единая система данных об имущественном и финансовом положении организации и о результатах ее хозяйственной деятельности составляется на основе данных бухгалтерского учета.', N'u obofboso.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (670, CAST(N'2015-05-24 22:36:19.277' AS DateTime), 1, N'Указания по составлению бюджета и СПГР на 2012-2014 гг. в рамках стратегической фазы бюджетного процесса', N'В Постановлении № 144-p от 30 декабря 2010 г. «О подготовке Среднесрочной программы государственных расходов и проекта государственного бюджета РТ на 2011-2013 годы» Правительство РТ', N'UkazanieByudjetISPGR2012-2014.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (671, CAST(N'2015-05-24 22:36:19.297' AS DateTime), 1, N'Утвержденно приказом Министертсва финансов Республики Таджикистан от 2.10.2006 г. № 84 для периодической и годовой бухгалтерской отчетности', N'БАЛАНС ИСПОЛНЕНИЯ СМЕТЫ ДОХОДОВ И РАСХОДОВ ВНЕБЮДЖЕТНЫМ ИСТОЧНИКАМ ', N'o ob ism i r po vi.xls', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (672, CAST(N'2015-05-24 22:36:19.043' AS DateTime), 13, N'ПОЛОЖЕНИЕ  о Межведомственной Комиссии по внешнему долгу ', N'Межведомственная Комиссия по внешнему долгу ( в дальнейшем      - Комиссия)  создана  в целях повышения эффективности контроля за привлечением в республику иностранных  кредитов,  формирующих  внешний государственный  долг ', N'plmcom1005200-215.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (673, CAST(N'2015-05-24 22:36:19.047' AS DateTime), 13, N'ПОЛОЖЕНИЕ О Методологическом совете по бухгалтерскому учету и аудиту   при Правительственной Комиссии по внедрению Международных  стандартов финансовой отчетности Республики Таджикистан. ', N'.    Методологический совет Министерства финансов Республики Таджикистан по вопросам бухгалтерского учета и аудита (далее - Совет) является методологическим консультативно-совещательным органом при Правительственной Комиссии  по внедрению Международных стандартов  финансовой отчетности Республики Таджикистан.', N'poloj_met_sovet.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (674, CAST(N'2015-05-24 22:36:19.197' AS DateTime), 13, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Настоящее положение определяет порядок учета доходов, условия признания, оценку величины доходов получаемых в результате деятельности предприятий, являющихся юридическими лицами по законодательству Республики Таджикистан (за исключением кредитных учреждений и страховых органов).', N'polojenie pyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (675, CAST(N'2015-05-24 22:36:19.197' AS DateTime), 13, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "СОБЫТИЯ ПОСЛЕ ОТЧЕТНОЙ ДАТЫ" (ПБУ 9/02)', N'polojenie sedmoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (676, CAST(N'2015-05-24 22:36:19.197' AS DateTime), 13, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N' ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "РАСХОДЫ ПРЕДПРИЯТИЙ" ПБУ 7/2001', N'polojenie shestoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (677, CAST(N'2015-05-24 22:36:19.197' AS DateTime), 13, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "ДОГОВОР ПОДРЯДА" ПБУ 8/02', N'polojenie treti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (678, CAST(N'2015-05-24 22:36:19.200' AS DateTime), 13, N'ПОСТАНОВЛЕНИЕ "ОБ УТВЕРЖДЕНИИ ПОЛОЖЕНИЯ ПО КАЛЬКУЛИРОВАНИЮ СЕБЕСТОИМОСТИ ПРОДУКЦИИ (РАБОТ, УСЛУГ) НА ПРЕДПРИЯТИЯХ И В ОРГАНИЗАЦИЯХ РЕСПУБЛИКИ ТАДЖИКИСТАН"', N'Утвердить прилагаемое положение по калькулированию себестоимости продукции (работ, услуг) на предприятиях и в организациях Республики Таджикистан и ввести его в действие с 1 июля 1999 года.', N'polojenie trinadsoti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (679, CAST(N'2015-05-24 22:36:19.200' AS DateTime), 13, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "УЧЕТ ИМУЩЕСТВА И ОБЯЗАТЕЛЬСТВ ПРЕДПРИЯТИЯ, СТОИМОСТЬ КОТОРЫХ ВЫРАЖЕНА В ИНОСТРАННОЙ ВАЛЮТЕ" (ПБУ2/99)', N'polojenie vasmoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (680, CAST(N'2015-05-24 22:36:19.200' AS DateTime), 13, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "БУХГАЛТЕРСКАЯ ОТЧЕТНОСТЬ ПРЕДПРИЯТИЙ" ПБУ 5/2001', N'polojenie vtoroe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (681, CAST(N'2015-05-24 22:36:19.207' AS DateTime), 13, N'«О ПОЛОЖЕНИИ СВОБОДНОЙ ЭКОНОМИЧЕСКОЙ ЗОНЫ «ПАНЧ»»', N'Одобрить прилагаемое Положение Свободной экономической зоны «Панч» и направить на утверждение Маджлиси намояндагон Маджлиси Оли Республики Таджикистан.', N'postonavleni ahestoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (682, CAST(N'2015-05-24 22:36:19.207' AS DateTime), 13, N'ПОСТАНОВЛЕНИЕ "ОБ УТВЕРЖДЕНИИ ПОЛОЖЕНИЯ ПО КАЛЬКУЛИРОВАНИЮ СЕБЕСТОИМОСТИ ПРОДУКЦИИ (РАБОТ, УСЛУГ) НА ПРЕДПРИЯТИЯХ И В ОРГАНИЗАЦИЯХ РЕСПУБЛИКИ ТАДЖИКИСТАН"', N'Утвердить прилагаемое положение по калькулированию себестоимости продукции (работ, услуг) на предприятиях и в организациях Республики Таджикистан и ввести его в действие с 1 июля 1999 года.', N'postonavleni desyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (683, CAST(N'2015-05-24 22:36:19.207' AS DateTime), 13, N'ПОСТАНОВЛЕНИЕ "ОБ УТВЕРЖДЕНИИ ИНСТРУКЦИИ ПО ОЦЕНКЕ СТОИМОСТИ ОБЪЕКТОВ ПРИВАТИЗАЦИИ"', N'Настоящая инструкция разработана в соответствии с Законом Республики Таджикистан "О собственности", Закон Республики Таджикистан "О приватизации государственной собственности" и другими законодательными актами.(ППРТ №58 от 20.02.98г)', N'postonavleni devyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (684, CAST(N'2015-05-24 22:36:19.230' AS DateTime), 13, N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "ДОХОДЫ ПРЕДПРИЯТИЙ" (ПБУ 6/2001)', N'Настоящее положение определяет порядок учета доходов, условия признания, оценку величины доходов получаемых в результате деятельности предприятий, являющихся юридическими лицами по законодательству Республики Таджикистан (за исключением кредитных учреждений и страховых органов).', N'prikaz7.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (685, CAST(N'2015-05-24 22:36:19.230' AS DateTime), 13, N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "УЧЕТ ИМУЩЕСТВА И ОБЯЗАТЕЛЬСТВ ПРЕДПРИЯТИЯ', N'Настоящее Положение устанавливает для предприятий, являющихся юридическими лицами по законодательству Республики Таджикистан (за исключением банков и бюджетных учреждений), правила отражения в бухгалтерском учете и отчетности операций с имуществами и обязательствами, стоимость которых выражена в иностранной валюте.', N'prikaz8.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (686, CAST(N'2015-05-24 22:36:19.233' AS DateTime), 13, N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "УЧЕТ МАТЕРИАЛЬНО- ПРОИЗВОДСТВЕННЫХ ЗАПАСОВ" ПБУ 3/2002', N'Настоящее Положение устанавливает правила формирования в бухгалтерском учете информации о материально-производственных запасах предприятий. Под предприятием в дальнейшем понимается юридическое лицо по законодательству Республики Таджикистан (за исключением кредитных и бюджетных учреждений).', N'prikaz9.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (687, CAST(N'2015-05-24 22:36:19.233' AS DateTime), 13, N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "УЧЕТНАЯ ПОЛИТИКА ПРЕДПРИЯТИЙ"* УПП 1/99', N'Настоящее Положение устанавливает основы формирования (выбора и обоснования) и раскрытия (придания гласности) учетной политики предприятий, являющихся юридическими лицами по законодательству Республики Таджикистан (кроме кредитных и бюджетных учреждений).(приказ МФ РТ №157 от 26.12.00г.)', N'prikaz10.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (688, CAST(N'2015-05-24 22:36:19.237' AS DateTime), 13, N'СТАНДАРТ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ "ПЛАНИРОВАНИЕ АУДИТА" (АД 1/2001)', N'Настоящий стандарт подготовлен для регламентации аудиторской деятельности и в основном соответствует требованиям международных стандартов аудита, рекомендованных Международной Федерацией Бухгалтеров (LFAC) и Закона Республики Таджикистан от 21 мая 1998г. № 601 "Об аудиторской деятельности" (с учетом изменений и дополнений).', N'prikaz15.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (689, CAST(N'2015-05-24 22:36:19.240' AS DateTime), 13, N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "РАСХОДЫ ПРЕДПРИЯТИЙ" ПБУ 7/2001', N'Настоящее Положение устанавливает правила формирования в бухгалтерском учете информации о расходах предприятий, являющихся юридическими лицами по законодательству Республики Таджикистан.', N'prikaz16.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (690, CAST(N'2015-05-24 22:36:19.240' AS DateTime), 13, N'ПОЛОЖЕНИЕ ПО БУХГАЛТЕРСКОМУ УЧЕТУ "УЧЕТ ОСНОВНЫХ СРЕДСТВ" ПБУ 4/2002', N'Настоящее Положение устанавливает правила формирования в бухгалтерском учете информации об основных средствах предприятий. Под предприятием в дальнейшем понимается юридическое лицо по законодательству Республики Таджикистан (за исключением банковских и бюджетных учреждений).', N'prikaz17.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (691, CAST(N'2015-05-24 22:36:19.243' AS DateTime), 13, N'ПОЛОЖЕНИЕ по организации и проведению экзамена на получение сертификата „Внутренний аудитор в государственном секторе”', N'Настоящее Положение разработано на основании статьи 8 Закона Республики Таджикистан «О внутреннем аудите в государственном секторе» и определяет порядок, способ организации и проведения экзаменов на получение сертификата «Внутренний аудитор в государственном секторе».', N'Procedura ekz.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (692, CAST(N'2015-05-24 22:36:19.040' AS DateTime), 11, N'Правительство Республики Таджикистан ПОСТАНОВЛЕНИЕ ', N'Признать     необходимым     в     2003-2004     годах     привести национальные стандарты бухгалтерской    (финансовой) отчетности    в соответствие с Международными стандартами финансовой отчетности, разработанными   и   утвержденными   Комитетом   по   международным стандартам финансовой отчетности и одобренными Международной федерацией бухгалтеров. ', N'p428.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (693, CAST(N'2015-05-24 22:36:19.043' AS DateTime), 11, N'Правительство Республики Таджикистан ПОСТАНОВЛЕНИЕ ', N'Утвердить состав и Положение Правительственной комиссии по внедрению     Международных     стандартов     финансовой     отчетности (прилагается). ', N'p465.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (694, CAST(N'2015-05-24 22:36:19.053' AS DateTime), 11, N'П р а в и т е л ь с т в о Р е с п у б л и к и Т а д ж и к и с т а н Р А С П О Р Я Ж Е Н И Е ', N'В соответствии со статьей 34 Закона Республики Таджикистан «О государственных финансах Республики Таджикистан» в целях своевременной и качественной подготовки Среднесрочной программы государственных расходов  на 2011-2013 годы, проекта Государственного бюджета Республики Таджикистан на 2011 год, использования государственных финансовых ресурсов и внедрения среднесрочного финансового планирования', N'proektraspor2010_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (695, CAST(N'2015-05-24 22:36:19.180' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ «О ПРОЕКТЕ ЗАКОНА РЕСПУБЛИКИ ТАДЖИКИСТАН «О БОРЬБЕ С КОРРУПЦИЕЙ»»', N'Настоящий Закон определяет организационно - правовые основы предупреждения, выявления и устранения последствий правонарушений, связанных с коррупцией, привлечение к ответственности лиц за их совершение, виды правонарушений связанных с коррупцией и меры ответственности за их совершение.', N'p o pzrt o b c k ot 31 2004 .pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (696, CAST(N'2015-05-24 22:36:19.183' AS DateTime), 11, N'О дополнительных мерах по внедрению Международных стандартов финансовой отчетности в Республике Таджикистан', N'В Соответсвии со статьёй 12 Конститиционного закона Республики Таджикистан "О Правительстве Республики Таджикистан" и в целях дальнейшего усиления работы по переводу системы бухгалтерского учета хозяйствующих субъектов республики на Международные стандарты финансовой отчетности Правительство Республики Таджикистан постановляет: ', N'p465.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (697, CAST(N'2015-05-24 22:36:19.190' AS DateTime), 11, N'ПОЛОЖЕНИЕ ПРАВИТЕЛЬСТВЕННОЙ КОМИССИИ ПО ВНЕДРЕНИЮМЕЖДУНАРОДНЫХ СТАНДАРТОВ ФИНАНСОВОЙ ОТЧЕТНОСТИ', N'Положение регулирует работу Правительственной комиссии (далее Комиссия) по внедрению в хозяйствующих субъектах республики Международных стандартов финансовой отчетности (далее МСФО) с целью дальнейшего совершенствования системы бухгалтерского учета и приведения ее в соответствии с требованиями МСФО.', N'polojenie jetirnasti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (698, CAST(N'2015-05-24 22:36:19.203' AS DateTime), 11, N'ГОСУДАРСТВЕННАЯ КОМИССИИ ПО КООРДИНАЦИИ И РЕШЕНИЮ ВОПРОСОВ СВЯЗАННЫХ С ФУНКЦИОНИРОВАНИЕМ НОВОЙ ДЕНЕЖНОЙ СИСТЕМЫ', N'ПОСТАНОВЛЕНИЕ «О ПОРЯДКЕ ПЕРЕСЧЕТА СТАТЬИ БУХГАЛТЕРСКОГО БАЛАНСА ОТРАСЛЕЙ НАРОДНОГО ХОЗЯЙСТВА РЕСПУБЛИКИ ТАДЖИКИСТАН»', N'poppsbbonxrt.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (699, CAST(N'2015-05-24 22:36:19.203' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ «О ПРОЕКТЕ ЗАКОНА РЕСПУБЛИКИ ТАДЖИКИСТАН «О БОРЬБЕ С КОРРУПЦИЕЙ»»', N'Настоящий Закон определяет организационно - правовые основы предупреждения, выявления и устранения последствий правонарушений, связанных с коррупцией, привлечение к ответственности лиц за их совершение, виды правонарушений связанных с коррупцией и меры ответственности за их совершение.', N'popzrtobck.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (700, CAST(N'2015-05-24 22:36:19.203' AS DateTime), 11, N'О принятии Закона Республики Таджикистан «О Государственном бюджете Республики Таджикистан на 2014 год»', N'Принять Закон Республики Таджикистан «О Государственном бюджете Республики Таджикистан на 2014 год».', N'Postanovlenie MN MO RT.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (701, CAST(N'2015-05-24 22:36:19.210' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ "О МЕЖДУНАРОДНЫХ СТАНДАРТАХ ФИНАНСОВОЙ ОТЧЕТНОСТИ"', N'Министерству финансов Республики Таджикистан обеспечить в установленные сроки поэтапную разработку и внедрение новых национальных стандартов бухгалтерской (финансовой) отчетности, плана счетов, комментариев к ним, довести до соответствующих органов и обеспечить контроль за соблюдением требований Международных стандартов финансовой отчетности.', N'postonavleni odinosti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (702, CAST(N'2015-05-24 22:36:19.213' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ «О ДОПОЛНИТЕЛЬНЫХ МЕРАХ ПО ВНЕДРЕНИЮ МЕЖДУНАРОДНЫХ СТАНДАРТОВ ФИНАНСОВОЙ ОТЧЕТНОСТИ В РЕСПУБЛИКЕ ТАДЖИКИСТАН»', N'Утвердить состав и Положение Правительственной комиссии по внедрению Международных стандартов финансовой отчетности (прилагается).', N'postonavleni pyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (703, CAST(N'2015-05-24 22:36:19.213' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ «ОБ УТВЕРЖДЕНИИ ПРАВИЛ ПРОВЕДЕНИЯ АТТЕСТАЦИИ НА ПРАВО ОСУЩЕСТВЛЕНИЯ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ»', N'Утвердить Правила проведения аттестации на право осуществления аудиторской деятельности (прилагается).', N'postonavleni treti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (704, CAST(N'2015-05-24 22:36:19.213' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ "О ПОРЯДКЕ РЕГУЛИРОВАНИЯ В БУХГАЛТЕРСКОМ УЧЕТЕ КРЕДИТОРСКОЙ, ДЕПОНЕНТСКОЙ И ДЕБИТОРСКОЙ ЗАДОЛЖЕННОСТИ, ПО КОТОРОЙ ИСТЕК ОБЩИЙ СРОК ИСКОВОЙ ДАВНОСТИ"', N'1. Установить, что все хозяйствующие субъекты, независимо от форм собственности и подчиненности (кроме бюджетных учреждений), кредиторскую и депонентскую задолженность, числящуюся в их бухгалтерском учете и по которым истек срок исковой давности, относят на финансовые результаты.', N'postonavleni trinadsoti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (705, CAST(N'2015-05-24 22:36:19.217' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ «О СОЗДАНИИ ЦЕНТРА ПО УПРАВЛЕНИЮ ПРОЕКТОМ КРЕДИТА В ОБЛАСТИ ОБРАЗОВАНИЯ»', N'Создать Центр по управлению проектом кредита в области образования и утвердить прилагаемое Положение о Центре по управлению проектом кредита в области образования.', N'postonavleni vosmoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (706, CAST(N'2015-05-24 22:36:19.217' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ «ОБ УТВЕРЖДЕНИИ ПОЛОЖЕНИЯ ОБ ОСОБЕННОСТЯХ ЛИЦЕНЗИРОВАНИЯ ОТДЕЛЬНЫХ ВИДОВ ДЕЯТЕЛЬНОСТИ»', N'Утвердить Положение об особенностях лицензирования отдельных видов деятельности (прилагается).', N'postonavleni vtoroy.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (707, CAST(N'2015-05-24 22:36:19.217' AS DateTime), 11, N'ПОСТАНОВЛЕНИЕ «О СОЗДАНИИ ГРУППЫ ПО РЕАЛИЗАЦИИ ПРОЕКТА РЕКОНСТРУКЦИИ И ДОСТРОЙКИ СРЕДНИХ ШКОЛ»', N'Создать Группу по реализации Проекта реконструкции о достройки средних школ и утвердить прилагаемое Положение о Группе по реализации Проекта реконструкции и достройки средних школ.', N'postonavlenisedmoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (708, CAST(N'2015-05-24 22:36:19.223' AS DateTime), 11, N'Правительство Республики Таджикистан ПОСТАНОВЛЕНИЕ', N'О дополнительных мерах по регулированию бухгалтерского учета и финансовой отчетности В соответствии со статьями 15 и 22 Конституционного Закона Республики Таджикистан «О Правительстве Республики Таджикистан», статьей 125 «Гражданского кодекса Республики Таджикистан»', N'Pravitelstvo RT postonovlenie 3.04.2012.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (709, CAST(N'2015-05-24 22:36:19.247' AS DateTime), 11, N'Распоряжение Республики Таджикистан', N'В соответствии со статьей 27 Закона Республики Таджикистан «О государственных финансах Республики Таджикистан» в целях своевременной и качественной подготовки Государственного бюджета на 2015 - 2017 годы, эффективного использования государственных финансовых ресурсов и внедрения среднесрочного финансового планирования:', N'proekt_2013russ.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (710, CAST(N'2015-05-24 22:36:19.253' AS DateTime), 11, N'Правительство Республики Таджикистан ПОСТАНОВЛЕНИЕ', N'О Порядке проведения антикоррупционной экспертизы нормативных правовых актов, нормативных правовых актов общеобязательного характера министерств, государственных комитетов, других государственных органов, местных органов государственной власти', N'qarori HJT rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (711, CAST(N'2015-05-24 22:36:19.253' AS DateTime), 11, N'РАСПОРЯЖЕНИЕ «ОБ ОСОБЕННОСТЯХ ПРИМЕНЕНИЯ СТРАХОВЫМИ ОРГАНИЗАЦИЯМИ ПЛАНА СЧЕТОВ БУХГАЛТЕРСКОГО УЧЕТА ФИНАНСОВО-ХОЗЯЙСТВЕННОЙ ДЕЯТЕЛЬНОСТИ ХОЗЯЙСТВУЮЩИХ СУБЪЕКТОВ И МЕТОДИЧЕСКИЕ УКАЗАНИЯ ПО ЕГО ПРИМЕНЕНИЮ»', N'В соответствии со статьей 6 Закона Республики Таджикистан «О бухгалтерском учете» и в целях приведения бухгалтерского учета и бухгалтерской отчетности в страховых организациях в соответствии требованиям международных стандартов финансовой отчетности приказываю', N'rasporyjenie pervi.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (712, CAST(N'2015-05-24 22:36:19.253' AS DateTime), 11, N'РАСПОРЯЖЕНИЕ ОБ УТВЕРЖДЕНИИ МЕТОДИЧЕСКИЕ УКАЗАНИЯ ПО БУХГАЛТЕРСКОМУ УЧЕТУ ФИНАНСОВОЙ АРЕНДЫ (ЛИЗИНГА)', N'В соответствии с Законом Республики Таджикистан от 22 апреля 2003г. «О финансовой аренде (лизинге)», Законом Республики Таджикистан от 19 мая 1999г. №750 «О бухгалтерском учете», пункта 2 Постановления Правительства Республики Таджикистан от 4 ноября 2002г. №428 «', N'rasporyjenie treti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (713, CAST(N'2015-05-24 22:36:19.257' AS DateTime), 11, N'РАСПОРЯЖЕНИЕ «О ФОРМАХ И ОБЪЕМЕ БУХГАЛТЕРСКОЙ ОТЧЕТНОСТИ СТРАХОВЫХ ОРГАНИЗАЦИЙ»', N'В соответствии со с. 6 Закона Республики Таджикистан «О бухгалтерском учете», п.2 Постановления Правительства Республики Таджикистан от 4 11.2002г. № 428 «О международных стандартах финансовой отчетности» и Положением по бухгалтерскому учету «Бухгалтерская отчетность предприятий» ПБУ 5/2001г., утвержденным приказом Министерства финансов Республики Таджикистан от 16.07.01г. №104', N'rasporyjenie vtoroe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (714, CAST(N'2015-05-24 22:36:19.287' AS DateTime), 11, N'Правительство Республики Таджикистан ПОСТАНОВЛЕНИЕ', N'О Порядке проведения антикоррупционной экспертизы нормативных правовых актов, нормативных правовых актов общеобязательного характера министерств, государственных комитетов', N'карори ХКЧТ аз 3 июни соли 2014 №355 руси.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (715, CAST(N'2015-05-24 22:36:19.020' AS DateTime), 9, N'ГРАЖДАНСКИЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Гражданское  законодательство  определяет правовое  положение участников  гражданского  оборота,  основания возникновения и порядок осуществления права собственности и других вещных прав,  прав  на  результаты  интеллектуальной деятельности, регулирует договорные и иные обязательства,  а также другие имущественные и связанные с ними личные неимущественные отношения,  основанные на равенстве,  автономии воли и имущественной самостоятельности их участников. ', N'gkrt1.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (716, CAST(N'2015-05-24 22:36:19.020' AS DateTime), 9, N'ГРАЖДАНСКИЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН', N'По договору купли-продажи одна  сторона (продавец)  обязуется передать  товар в собственность (право хозяйственного ведения и оперативного управления) другой стороне (покупателю), а покупатель обязуется  принять  этот товар и уплатить за него определенную денежную сумму (цену).', N'gkrt2.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (717, CAST(N'2015-05-24 22:36:19.023' AS DateTime), 9, N'ГРАЖДАНСКИЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Интеллектуальной собственностью являются имущественные и (или) личные  неимущественные права в отношении результатов интеллектуальной деятельности,  средств индивидуализации участников гражданского оборота,  индивидуализации продукции, выполняемых работ или услуг (средства индивидуализации), а также иных приравненных к ним объектов.', N'gkrt3.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (718, CAST(N'2015-05-24 22:36:19.023' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН  О ГОСУДАРСТВЕННЫХ ФИНАНСАХ  ', N'Настоящий Закон определяет правовые основы организационных принципов управления государственными финансами, систематизации бюджета и его классификации, составления, формирования, распределения и использования централизованных денежных средств, регулирует финансовые межбюджетные отношения и устанавливает место органов власти и государственного управления и местных органов государственной власти, а также других участников бюджетного процесса в подготовке, рассмотрении проектов бюджетов, составлении и утверждении отчетности и контроле над их исполнением.', N'gosudarstvennie_finansi.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (719, CAST(N'2015-05-24 22:36:19.027' AS DateTime), 9, N'КОДЕКС  ОБ АДМИНИСТРАТИВНЫХ ПРОЦЕДУРАХ РЕСПУБЛИКИ ТАДЖИКИСТАН ', N'Настоящим Кодексом определяется порядок подготовки, принятия и исполнения      административно-правовых актов,      рассмотрения административных  заявлений  и жалоб, осуществления административного производства в суде, взаимодействия административных органов.', N'kaprt.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (720, CAST(N'2015-05-24 22:36:19.027' AS DateTime), 9, N'КОДЕКС ЭТИКИ ГОСУДАРСТВЕННОГО СЛУЖАЩЕГО ', N'Кодекс этики государственного служащего (далее Кодекс) это  совокупность   правил  поведения  государственного служащего,  выражающих нравственный характер их профессиональной и внеслужебной деятельности, вытекающих  из  общепризнанных ценностей человеческой нравственности и моральных требований общества к государственной службе.', N'kegs.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (721, CAST(N'2015-05-24 22:36:19.037' AS DateTime), 9, N'НАЛОГОВЫЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Налоговое законодательство Республики Таджикистан основывается на Конституции Республики Таджикистан,  состоит из настоящего Кодекса, принятых на его основании и в соответствии с ним нормативных  правовых актов и международных договоров, признанных Республикой Таджикистан.', N'nkrt.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (722, CAST(N'2015-05-24 22:36:19.060' AS DateTime), 9, N'ТАМОЖЕННЫЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН ', N'Таможенное  регулирование заключается в установлении порядка и правил, при соблюдении которых лица реализуют право на перемещение товаров  и транспортных средств через таможенную границу Республики Таджикистан (далее - таможенная граница).', N'tk.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (723, CAST(N'2015-05-24 22:36:19.060' AS DateTime), 9, N'ТРУДОВОЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Трудовой кодекс Республики Таджикистан в соответствии с  Конститу цией Республики Таджикистан определяет основы государственной политики в сфере трудовых  отношений,  устанавливает государственные  гарантии трудовых  прав  граждан и направлен на обеспечение соблюдения законных интересов работников, работодателей и государства', N'tkrt.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (724, CAST(N'2015-05-24 22:36:19.073' AS DateTime), 9, N'УГОЛОВНЫЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Уголовный закон Республики Таджикистан состоит  из  настоящего Кодекса.  Новые  законы,  предусматривающие уголовную ответственность, подлежат включению в Уголовный Кодекс', N'ukrt.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (725, CAST(N'2015-05-24 22:36:19.077' AS DateTime), 9, N'  ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН  ОБ АКЦИОНЕРНЫХ ОБЩЕСТВАХ ', N'Настоящий Закон определяет правовое положение,  порядок создания, реорганизации  и ликвидации акционерных обществ, права,  обязанности, защиту прав  и  интересов  акционеров  и  третьих лиц,  полномочия  и ответственность органов и должностных лиц акционерных обществ', N'zakao.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (726, CAST(N'2015-05-24 22:36:19.077' AS DateTime), 9, N'  ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН  Об аудиторской деятельности ', N'Настоящий Закон регулирует общие, правовые, организационные основы  и процесс осуществления аудиторской деятельности возникающие между государственными органами,  физическими и юридическими лицами, аудиторами и аудиторскими организациями', N'zakaudit.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (727, CAST(N'2015-05-24 22:36:19.077' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН  О БУХГАЛТЕРСКОМ УЧЕТЕ ', N'      Настоящий Закон устанавливает правовые основы организации и ведения бухгалтерского учета в Республике Таджикистан ', N'zakbu.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (728, CAST(N'2015-05-24 22:36:19.077' AS DateTime), 9, N'ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН  О Государственном бюджете Республики Таджикистан на 2006 год', N'Утвердить Государственный бюджет Республики Таджикистан на 2006 год по доходам в  сумме 1510000 тыс. сомони с учетом возврата налога на добавленную стоимость в сумме 10000 тыс. сомони и по расходам в сумме 1542000 тыс. сомони, с превышением расходов над доходами в сумме 42000 тыс. сомони', N'zakbud2006.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (729, CAST(N'2015-05-24 22:36:19.080' AS DateTime), 9, N'ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН  О Государственном бюджете Республики Таджикистан на 2008 год ', N'Утвердить   общий   объём Государственного  бюджета Республики Таджикистан за счет всех источников финансирования на  2008 год в сумме 4476015 тыс. сомони, в том числе', N'zakbud2008.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (730, CAST(N'2015-05-24 22:36:19.080' AS DateTime), 9, N'З А К О Н А РЕСПУБЛИКИ ТАДЖИКИСТАН О Государственном бюджете Республики Таджикистан на 2009 год ', N'Утвердить общий объём Государственного бюджета Республики Таджи-кистан за счет всех источников финансирования на 2009 год  в сумме 6008120 тыс. сомони, в том числе: ', N'zakbudget2009.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (731, CAST(N'2015-05-24 22:36:19.080' AS DateTime), 9, N'ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН   "О драгоценных металлах и драгоценных камнях" ', N'Настоящий Закон регулирует отношения, возникающие в области геологического изучения и разведки месторождений драгоценных  металлов  и драгоценных камней,  их добычи, производства, переработки, использования и обращения (гражданского оборота), в том числе', N'zakdrk.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (732, CAST(N'2015-05-24 22:36:19.083' AS DateTime), 9, N'ЗАКОН   О государственном финансовом контроле  в Республике Таджикистан ', N'Настоящий Закон  определяет  принципы, правовые  и экономические основы  организации  и  осуществления государственного   финансового контроля   в  Республике  Таджикистан.  ', N'zakfincont.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (733, CAST(N'2015-05-24 22:36:19.083' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН   О ЦЕННЫХ БУМАГАХ И ФОНДОВЫХ БИРЖАХ ', N'Настоящий Закон определяет единые принципы выпуска  и  обращения ценных бумаг,  а также регулирование деятельности и отношения участников рынка ценных бумаг - эмитентов ценных бумаг, инвесторов и профессиональных участников рынка ценных бумаг.', N'zakfond.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (734, CAST(N'2015-05-24 22:36:19.083' AS DateTime), 9, N'ЗАКОН  О государственных финансах Республики Таджикистан ', N'Настоящий Закон определяет правовые основы, организационные принципы  управления государственными финансами, систематизации бюджета и его классификации,  составления, формирования, распределения и использования централизованных денежных средств, регулирует финансовые межбюджетные отношения. ', N'zakgosfin.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (735, CAST(N'2015-05-24 22:36:19.087' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН   О государственной пошлине ', N'государственная пошлина  - обязательный платеж,  взимаемый за совершение юридически значимых действий либо выдачу документов уполномоченными на то органами в Республике Таджикистан', N'zakgosp.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (736, CAST(N'2015-05-24 22:36:19.087' AS DateTime), 9, N'ЗАКОН   РЕСПУБЛИКИ ТАДЖИКИСТАН  О государственной службе ', N'государственный  аппарат  -  система государственных  органов, деятельность  которой  направлена  на осуществление задач,  функций и политики государства', N'zakgossl.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (737, CAST(N'2015-05-24 22:36:19.087' AS DateTime), 9, N'ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН   ОБ ИНВЕСТИЦИИ ', N'Настоящий Закон регулирует отношения, связанные с осуществлением инвестиционной    деятельности,    правовых, экономических    основ активизации,  стимулирования  и  государственной поддержки инвестиций, посредством предоставления справедливого,  равного правового режима  и гарантии защиты прав инвесторов на территории Республики Таджикистан.', N'zakinv.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (738, CAST(N'2015-05-24 22:36:19.087' AS DateTime), 9, N'Закон Республики Таджикистан  О казначействе ', N'Настоящий Закон устанавливает правовые и организационные основы отрасли казначейства и регулирует отношения, возникающие при деятельности казначейства   в Республике Таджикистан.', N'zakkazn.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (739, CAST(N'2015-05-24 22:36:19.090' AS DateTime), 9, N'ЗАКОН   О финансовой аренде (лизинге) ', N'Сферой применения настоящего Закона  является финансовая  аренда (лизинг) имущества, относящегося к неупотребляемым вещам, передаваемым во временное владение и в пользование физическим и юридическим лицам в предпринимательских целях.', N'zakliz.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (740, CAST(N'2015-05-24 22:36:19.090' AS DateTime), 9, N'  ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН   О НАЦИОНАЛЬНОМ БАНКЕ ТАДЖИКИСТАНА ', N'Национальный банк  Таджикистана является центральным эмиссионным, резервным банком Республики  Таджикистан, находится  в  собственности Республики  Таджикистан и несет ответственность перед Маджлиси намояндагон Маджлиси Оли Республики  Таджикистан(в редакции  Закона  РТ  от 02.12.2002г.N 63).', N'zaknbt.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (741, CAST(N'2015-05-24 22:36:19.090' AS DateTime), 9, N'ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН   О нормативных правовых актах ', N'Настоящий Закон  определяет  понятие  и виды нормативных правовых актов Республики Таджикистан, устанавливает общий порядок их подготовки,  опубликования, действия, толкованиях регулирование их соотношений и разрешения юридических коллизий.', N'zaknorma.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (742, CAST(N'2015-05-24 22:36:19.093' AS DateTime), 9, N'ЗАКОН  РЕСПУБЛИКИ ТАДЖИКИСТАН   ОБ ИНЫХ ОБЯЗАТЕЛЬНЫХ ПЛАТЕЖАХ В БЮДЖЕТ ', N'Настоящий Закон  устанавливает  виды иных обязательных платежей в бюджет,  не определенных Налоговым  кодексом Республики  Таджикистан, плательщиков, порядок их исчисления и уплаты.', N'zakobpl.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (743, CAST(N'2015-05-24 22:36:19.093' AS DateTime), 9, N'З А К О Н А РЕСПУБЛИКИ ТАДЖИКИСТАН  О Государственном бюджете Республики Таджикистан на 2010 год  ', N'Утвердить общий объём Государственного бюджета Республики Таджики-стан за счет всех источников финансирования на 2010 год  в сумме  6536799 тыс. сомони, в том числе: ', N'Zakon RT O gosbujete  2010 g.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (744, CAST(N'2015-05-24 22:36:19.097' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН О СТРАХОВАНИИ ', N'Настоящий Закон регулирует отношения по страхованию между страховыми организациями и гражданами,  предприятиями, учреждениями, организациями,  страховыми организациями между собой,  а также устанавливает основные принципы государственного надзора за страховой деятельностью.', N'zakstrah.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (745, CAST(N'2015-05-24 22:36:19.097' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН  О ЦЕННЫХ БУМАГАХ И ФОНДОВЫХ БИРЖАХ ', N'Отношения, связанные с выпуском и обращением ценных  бумаг,  дея- тельностью профессиональных участников рынка ценных бумаг, регулируют- ся настоящим Законом и другими нормативными правовыми актами Республики  Таджикистан(в редакции Закона РТ от 8.12.2003г. №68). ', N'zcbfb.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (746, CAST(N'2015-05-24 22:36:19.097' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН   О государственном и гарантированном государством  заимствовании и долге ', N'Настоящий Закон регулирует отношения, возникающие в процессе государственного заимствования уполномоченными органами Республики  Таджикистан  и  негосударственного  заимствования резидентами Республики Таджикистан,  обеспечиваемого государственными гарантиями,  а также  в процессе  управления  государственным  и гарантированным государством долгом.', N'zgd111299-886.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (747, CAST(N'2015-05-24 22:36:19.097' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН   О приватизации государственной   собственности в Республике Таджикистан ', N'Настоящий Закон  регулирует  отношения  между государством в лице уполномоченных им органов и юридическими, физическими лицами в процес- се приватизации государственной собственности. ', N'zpriv.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (748, CAST(N'2015-05-24 22:36:19.123' AS DateTime), 9, N'Кодекс Этики', N'Честность внутреннего аудита является фундаментом, на котором основывается доверие к мнению аудита', N'codecs_ethics_rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (749, CAST(N'2015-05-24 22:36:19.130' AS DateTime), 9, N'ГРАЖДАНСКИЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН ЧАСТЬ ПЕРВАЯ', N'Гражданское законодательство определяет правовое положение участников гражданского оборота, основания возникновения и порядок осуществление права собственности и других вещных прав, прав на результаты интеллектуальной деятельности, регулирует договорные и иные обязательства, а также другие имущественные и связанные с ними личные неимущественные отношения, основанные на равенстве, автономии воли и имущественной самостоятельности их участников.', N'graj kodek rt jpervi.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (750, CAST(N'2015-05-24 22:36:19.130' AS DateTime), 9, N'ГРАЖДАНСКИЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН ЧАСТЬ ВТОРАЯ', N'По договору купли-продажи одна сторона (продавец), обязуется передать товар в собственность (право хозяйственного ведения и оперативного управления) другой стороне (покупателю), а покупатель обязуется принять этот товар и уплатить за него определенную денежную сумму (цену).', N'graj kodek rt jvtoroe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (751, CAST(N'2015-05-24 22:36:19.150' AS DateTime), 9, N'КОДЕКС ПРОФЕССИОНАЛЬНОЙ ЭТИКИ АУДИТОРОВ', N'Кодекс обобщает этические нормы профессионального поведения независимых аудиторов, объединенных аудиторскими организациями (палатой, ассоциацией, фирм) Республики Таджикистан.', N'kpea.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (752, CAST(N'2015-05-24 22:36:19.153' AS DateTime), 9, N'КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН ОБ АДМИНИСТРАТИВНЫХ ПРАВОНАРУШЕНИЯХ', N'Законодательство Республики Таджикистан об административных правонарушениях основывается на Конституции Республики Таджикистан и состоит из настоящего Кодекса, других нормативных правовых актов Республики Таджикистан, а также международных правовых актов, признанных Таджикистаном.', N'krtobap.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (753, CAST(N'2015-05-24 22:36:19.157' AS DateTime), 9, N'НАЛОГОВЫЙ КОДЕКС РЕСПУБЛИКИ ТАДЖИКИСТАН', N'Настоящим кодексом устанавливаются принципы построения и фукционирования налоговой системы Республики Таджикистан, регулируются властные отношения по установлению, изменению, отмене и сбору налогов, определяется правовое положение налоговых органов', N'NalKodexTJ.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (754, CAST(N'2015-05-24 22:36:19.160' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН «ОБ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ»', N'Аудиторская деятельность, аудит это предпринимательская деятельность по независимой проверке бухгалтерского учета и бухгалтерской (финансовой) отчетности у индивидуальных предпринимателей и юридических лиц (далее аудируемые лица).', N'oad 3 2006 № 170.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (755, CAST(N'2015-05-24 22:36:19.167' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН «О ГОСУДАРСТВЕННОМ ФИНАНСОВОМ КОНТРОЛЕ В РЕСПУБЛИКЕ ТАДЖИКИСТАН»', N'Законодательство Республики Таджикистан о государственном финансовом контроле в Республике Таджикистан основывается на Конституции Республики Таджикистан и состоит из настоящего Закона, других законов Республики Таджикистан, международных правовых актов, признанных Республикой Таджикистан, указов Президента Республики Таджикистан и других нормативно-правовых актов Республики Таджикистан.', N'ogfk v r  2  2002 года № 66.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (756, CAST(N'2015-05-24 22:36:19.167' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН «О НЕСОСТОЯТЕЛЬНОСТИ (БАНКРОТСТВЕ)»', N'Настоящий Закон распространяется на юридические лица (за исключением государственных предприятий, предусмотренных в статье 127 Гражданского кодекса Республики Таджикистан), включая иностранные юридические лица, зарегистрированные в установленном законном порядке, а также на индивидуальных предпринимателей.', N'onb.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (757, CAST(N'2015-05-24 22:36:19.170' AS DateTime), 9, N'ЗАКОН РЕСПУБЛИКИ ТАДЖИКИСТАН «О НОРМАТИВНЫХ ПРАВОВЫХ АКТАХ»', N'Настоящий Закон регулирует отношения в сфере правотворческой деятельности и определяет ее основные принципы, понятия и виды нормативных правовых актов, их соотношение между собой, общий порядок их разработки, принятия, опубликования, действия, толкования и систематизации, а также способы разрешения юридических коллизий.', N'onpa.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (758, CAST(N'2015-05-24 22:36:19.240' AS DateTime), 9, N'КОДЕКС ПРОФЕССИОНАЛЬНОЙ ЭТИКИ АУДИТОРОВ', N'Кодекс обобщает этические нормы профессионального поведения независимых аудиторов, объединенных аудиторскими организациями (палатой, ассоциацией, фирм) Республики Таджикистан.', N'prikaz18.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (759, CAST(N'2015-05-24 22:36:19.280' AS DateTime), 9, N'О финансовом управлении и внутреннем контроле в государственном секторе', N'Настоящий Закон устанавливает правовые и организационные основы систем финансового управления и внутреннего контроля', N'zakon_fin_kontrol_rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (760, CAST(N'2015-05-24 22:36:19.280' AS DateTime), 9, N'О внутреннем аудите в государственном секторе', N'Настоящий закон регулирует комплекс отношений, связанных с утановлением принципов, овнов формирования, планирования, проведения и отчета внутреннего аудита в государственном секторе.', N'zakon_int_audit_rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (761, CAST(N'2015-05-24 22:36:19.280' AS DateTime), 9, N'О БУХГАЛТЕРСКОМ УЧЕТЕ И ФИНАНСОВОЙ ОТЧЕТНОСТИ', N'Настоящий Закон устанавливает организационно – правовые основы, принципы и правила ведения бухгалтерского учета и составления финансовой отчетности в Республике Таджикистан и регулирует отно-шения в этой сфере.', N'zrt o bu i fo 252011№ 702.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (762, CAST(N'2015-05-24 22:36:19.283' AS DateTime), 9, N'"О ГОСУДАРСТВЕННЫХ ФИНАНСАХ РЕСПУБЛИКИ ТАДЖИКИСТАН"', N'Настоящий Закон определяет правовые основы, организационные принципы управления государственными финансами, систематизации бюджета и его классификация, составления, формирования, распределения', N'zrt o gfrt 2 2002  № 77.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (763, CAST(N'2015-05-24 22:36:19.283' AS DateTime), 9, N'О лицензировании отдельных видов деятельности', N'лицензия – специальное разрешение на осуществление конкретного вида деятельности при обязательном соблюдении лицензионных требований и условий, выданное лицензирующим органом юридическому лицу или индивидуальному предпринимателю;', N'zrt o lovd 17 2004  № 37.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (764, CAST(N'2015-05-24 22:36:19.010' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – март 2010 г. ', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения. ', N'BudgetPerformanceReport1kvrus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (765, CAST(N'2015-05-24 22:36:19.057' AS DateTime), 20, N'Отчёт  по исполнению Государственного бюджета за 1-е полугодие 2010 года ', N'Государственный бюджет является важным и ключевым инструментом реализации приоритетных целей развития государства, а также налогово-бюджетной политики Правительства Республики Таджикистан через Министерство финансов и прочие ответственные государственные учреждения. ', N'StateBudgetPerformanceReportfor2010JanJuneRUSSIAN.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (766, CAST(N'2015-05-24 22:36:19.093' AS DateTime), 20, N'О ГОСУДАРСТВЕННОМ БЮДЖЕТЕ РЕСПУБЛИКИ ТАДЖИКИСТАН НА 2012 ГОД  ', N'Утвердить общий объём Государственного бюджета Республики Таджикистан на 2012 год за счет всех источников финансирования в сумме  10160600 тыс. сомони, в том числе: ', N'Zakon_o_gb_2012.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (767, CAST(N'2015-05-24 22:36:19.103' AS DateTime), 20, N'Отчёт  по исполнению Государственного бюджета за 1-е полугодие 2010 года ', N'Реальный темп роста ВВП за 6 месяцев 2010 года достиг 7.4%, что значительно превышает этот же показатель за соответствующий период прошлого года и свидетельствует о тенденции к восстановлению экономики страны в пост- кризисный период.   ', N'StateBudgetPerformanceReportfor2010JanJuneRUSSIAN.docx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (768, CAST(N'2015-05-24 22:36:19.117' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – декабрь 2009 г.', N'Процеcc подготовки Отчёта по исполнению бюджета за 2009 г. вляется вторым подобным отчётом в рамках представления бюджетной отчётности для обсуждения среди международных донорских организаций и общественности и продвижения принципов прозрачности налогово-бюджетной политики Республики Таджикистан.', N'Budget Performance Report (2009)_rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (769, CAST(N'2015-05-24 22:36:19.120' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – март 2010 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'BudgetPerformanceReport1kvrus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (770, CAST(N'2015-05-24 22:36:19.120' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – июнь 2009 г.', N'В первом полугодии фактический показатель государственных доходов составил 95.4% от уточнённого плана (в соответствии с поправками к Закону о государственном бюджете на 2009 г.), что составляет 43% от общего показателя ожидаемых поступлений за весь год.', N'BudgetPerformanceReportH1rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (771, CAST(N'2015-05-24 22:36:19.120' AS DateTime), 20, N'Отчёт по исполнению Государственного бюджета 2010 года', N'Государственный бюджет является важным и ключевым  инструментом реализации приоритетных целей развития государства, а также налогово-бюджетной политики Правительства Республики Таджикистан через Министерство финансов и прочие ответственные государственные учреждения.', N'Bujet__2010.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (772, CAST(N'2015-05-24 22:36:19.127' AS DateTime), 20, N'ОТЧЁТ ПО ИСПОЛНЕНИЮ БЮДЖЕТА', N'Государственный бюджет Республики Таджикистан в 2006 г. показал относительное улучшение показателей расходной и доходной части бюджета в номинальном выражении по сравнению с предыдущим годом.', N'FINALREPORT110308.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (773, CAST(N'2015-05-24 22:36:19.163' AS DateTime), 20, N'Отчёт по исполнению Государственного бюджета 2012 года', N'Государственный бюджет является важным и ключевым инструментом реализации приоритетных целей развития государства, а также налогово-бюджетной политики Правительства Республики Таджикистан через Министерство финансов и прочие ответственные государственные учреждения.', N'ochet ob isp BD na2012g.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (774, CAST(N'2015-05-24 22:36:19.163' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – март 2013 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'Ochet po ispolneniyu budjeta mart 2013.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (775, CAST(N'2015-05-24 22:36:19.167' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – сентябрь 2013 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'Ochet po ispolneniyu budjeta Yanvar-Sentyabr 2013.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (776, CAST(N'2015-05-24 22:36:19.167' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – сентябрь 2012 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'ochet po ispolneniyu yanvar-sentyabr 2012.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (777, CAST(N'2015-05-24 22:36:19.177' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – июнь 2013 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'Otchet bd yanvar-iune_2013.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (778, CAST(N'2015-05-24 22:36:19.177' AS DateTime), 20, N'Министерство финансов Республики Таджикистан', N'Министерство финансов Республики Таджикистан подготовило и представляет ежегодный аналитический «Отчет о состоянии государственного долга Таджикистана на 2013 год».', N'otchet o gos dolg 2013.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (779, CAST(N'2015-05-24 22:36:19.177' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – март 2012 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'Otchet za___1 kv 2012.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (780, CAST(N'2015-05-24 22:36:19.177' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – март 2011 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'otchet_jan_mar_2011.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (781, CAST(N'2015-05-24 22:36:19.180' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – сентябрь 2010 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'Otchet9mes2010.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (782, CAST(N'2015-05-24 22:36:19.257' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – сентябрь 2011 г.', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'Report_Budjet_ispolnenie_yanvar-sentyabr_2011.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (783, CAST(N'2015-05-24 22:36:19.263' AS DateTime), 20, N'Отчёт по исполнению Государственного бюджета за 1-е полугодие 2010 года', N'Государственный бюджет является важным и ключевым инструментом реализации приоритетных целей развития государства, а также налогово-бюджетной политики Правительства Республики Таджикистан через Министерство финансов и прочие ответственные государственные учреждения.', N'StateBudgetPerformanceReportfor2010JanJuneRUSSIAN.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (784, CAST(N'2015-05-24 22:36:19.277' AS DateTime), 20, N'О ГОСУДАРСТВЕННОМ БЮДЖЕТЕ РЕСПУБЛИКИ ТАДЖИКИСТАН НА 2014 ГОД', N'Утвердить общий объём Государственного бюджета Республики Таджикистан на 2014 год за счет всех источников финансирования в сумме 13901026 тыс. сомони, в том числе', N'zakon o gos BD na 2014_russ.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (785, CAST(N'2015-05-24 22:36:19.277' AS DateTime), 20, N'О государственном буджете Республики Таджикистан на 2010 год.', N'Утвердить общий объём Государственного бюджета Республики Таджикистан на 2010 год за счет всех источников финансирования в сумме 6536799 тыс. сомони, в том числе', N'Zakon RT O gosbujete 2010 g.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (786, CAST(N'2015-05-24 22:36:19.277' AS DateTime), 20, N'О государственном буджете Республики Таджикистан на 2011 год.', N'Утвердить общий объём Государственного бюджета Республики Таджикистан на 2011 год за счет всех источников финансирования в сумме 8292070 тыс. сомони, в том числе', N'zakon_bujet_2011.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (787, CAST(N'2015-05-24 22:36:19.287' AS DateTime), 20, N'Отчёт по исполнению бюджета январь – март 2011 г', N'Государственный бюджет является ключевым инструментом, с помощью которого Правительство Республики Таджикистан реализует налогово-бюджетную политику через Министерство финансов и прочие ответственные государственные учреждения.', N'Отчет по исполнению бюджета январь - март 2011 г.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (788, CAST(N'2015-05-24 22:36:19.287' AS DateTime), 20, N'Отчёт по исполнению бюджета за январь – декабрь 2009 г.', N'2009 год начался с невозможностью разработки чётких макроэкономических прогнозов из-за динамично меняющейся экономической ситуации, связанной с мировым финансовым кризисом ', N'1275541729_presentationabibullaev240510rus.pptx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (789, CAST(N'2015-05-24 22:36:19.287' AS DateTime), 20, N'Государственный бюджет Республики Таджикистан на 2014 год  ', N'Доходы семьи обычно имеют определенные источники (заработная плата работающих членов семьи, стипендия учащихся, пенсии престарелых ит.д.) и поэтому легко прогнозируются. Расходы связаны с удовлетворением потребностей и желаний членов семьи (покупка продуктов питания, платежи за квартиру или дом, помощь родителям, покупка автомобиля, оплата лечения и т.д. и т.п.).  ', N'Budjet dlya obsh.2014.pptx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (790, CAST(N'2015-05-24 22:36:19.023' AS DateTime), 25, N'ИНФОРМАЦИЯ о внешнем долге Республики Таджикистан  по состоянию на 1 января 2009 года ', N'Внешний долг Республики Таджикистан по состоянию на              1 января 2009 года составил – 1371,4 млн. долл. США, что            составляет 26,7% к ВВП. ', N'info01012009.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (791, CAST(N'2015-05-24 22:36:19.057' AS DateTime), 25, N'Министерство финансов Республики Таджикистан', N'Министерство финансов Республики Таджикистан представляет четвертый ежегодный «Отчет о внешнем долге Таджикистана» по итогам  2007 года. Данная публикация содержит информацию о государственном долге Таджикистана, разделы о  частном негарантированном долге Таджикистана, а так же  сравнения по другим странам. В настоящем выпуске, содержится информация о платежах по обслуживанию долга в прогнозном периоде.', N'TajikStatusreportRus2007.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (792, CAST(N'2015-05-24 22:36:19.107' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 1.01.2007 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-01-2007.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (793, CAST(N'2015-05-24 22:36:19.107' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 01.01.2008 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-01-2008.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (794, CAST(N'2015-05-24 22:36:19.107' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 01.04.2006 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-04-2006.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (795, CAST(N'2015-05-24 22:36:19.107' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 01.04.2007 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-04-2007.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (796, CAST(N'2015-05-24 22:36:19.110' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 01.07.2006 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-07-2006.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (797, CAST(N'2015-05-24 22:36:19.110' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 01.07.2007 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-07-2007.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (798, CAST(N'2015-05-24 22:36:19.110' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 01.10.2006 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-10-2006.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (799, CAST(N'2015-05-24 22:36:19.113' AS DateTime), 25, N'Структура государственного внешнего долга по состоянию 01.10.2007 г', N'Прямой государственный долг обслуживаемый Правительством Республики Таджикистан', N'01-10-2007.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (800, CAST(N'2015-05-24 22:36:19.163' AS DateTime), 25, N'Министерство финансов Республики Таджикистан', N'Министерство финансов Республики Таджикистан подготовило и представляет ежегодный аналитический «Отчет о состоянии государственного долга Таджикистана на 2012 год».', N'Ochet o sostoyanii gos dolga 2012g.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (801, CAST(N'2015-05-24 22:36:19.180' AS DateTime), 25, N'Министерство финансов Республики Таджикистан', N'Министерство финансов Республики Таджикистан представляет ежегодный «Отчет о состоянии государственного долга Таджикистана на 2011 год».', N'otjet-2011.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (802, CAST(N'2015-05-24 22:36:19.267' AS DateTime), 25, N'Отчет о состоянии государственного долга на 2009 год', N'2009 год был сложным для всех стран мира, учитывая негативное влияние мирового фи- нансово-экономического кризиса. Как и для большинства других стран, влияние кризиса на Таджи- кистан привело к снижению поступлений доходов, связанных с международной торговлей', N'Tajik Status report _Rus_ 2009draft5.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (803, CAST(N'2015-05-24 22:36:19.270' AS DateTime), 25, N'Полугодовой отчет государственного долга за 2009 год', N'Министерство финансов Республики Таджикистан представляет первый ежегодный «Полуго- довой отчет о государственном долге Таджикистана» по итогам II квартала 2009 года. Данная публи- кация содержит информацию в виде диаграмм и таблиц о внешнем долге Таджикистана, разделы о частном негарантированном долге Таджикистана, а так же информацию о платежах по обслужива- нию долга в прогнозном периоде.', N'Tajik2Rus_ 2009QII.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (804, CAST(N'2015-05-24 22:36:19.270' AS DateTime), 25, N'Отчет за первое полугодие 2010 года', N'Экономика Таджикистана пострадала в результате мирового финансово-экономического кризиса, в основном в результате резкого сокращения денежных переводов, что привело к снижению реаль-ных доходов населения.', N'TajikQuarterlyBulletinRus2010QII.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (805, CAST(N'2015-05-24 22:36:19.270' AS DateTime), 25, N'Отчет о состоянии государственного долга на 2008 год', N'Несмотря на влияние мирового финансового кризиса на внутреннюю экономику Таджикистана ставшей ощутимой уже к концу 2008 года, соотношение внешнего долга к ВВП достигло отметки 26,7%', N'TajikStatusreport122008Rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (806, CAST(N'2015-05-24 22:36:19.273' AS DateTime), 25, N'Отчет о состоянии государственного долга на 2007 год', N'Достигнув к концу 2007 года отметки 30,2% в соотношении внешнего долга к ВВП, Таджикистан стал страной с меньшей задолженностью в ряду развивающихся странах, а также вошел в список тех не многих стран ', N'TajikStatusreportRus2007.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (807, CAST(N'2015-05-24 22:36:19.123' AS DateTime), 29, N'Комментарий к общим положениям Китая', N'Поэтому Китай является крупнейшей в мире развивающейся страной и все еще находится на начальной стадии социализма.', N'China.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (808, CAST(N'2015-05-24 22:36:19.150' AS DateTime), 29, N'КОММЕНТАРИЙ К ЗАКОНУ РЕСПУБЛИКИ ТАДЖИКИСТАН «О ФИНАНСОВОМ УПРАВЛЕНИИ И ВНУТРЕННЕМ КОНТРОЛЕ В ГОСУДАРСТВЕННОМ СЕКТОРЕ»', N'Гаюров Ш. К. Комментарий к Закону Республики Таджикистан «О финансовом управлении и внутреннем контроле в государственном секторе». Душанбе: «Типо- графия ТНУ», 2012. − 104с.', N'komentarii k zakonu FVUK.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (809, CAST(N'2015-05-24 22:36:19.010' AS DateTime), 58, N'СОГЛАШЕНИЕ между Республикой Таджикистан и Азербайджанской Республикой ', N'Республика Таджикистан и Азербайджанская Республика руководствуясь стремлением развивать и укреплять экономическое, научное, техническое и культурное сотрудничество между обоими Государствами решили заключить настоящее Соглашение «Об избежании двойного налогообложения и предотвращении уклонения от уплаты налогов на доходы и капитал» договорились о нижеследующем:', N'az_tjk_conv.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (810, CAST(N'2015-05-24 22:36:19.017' AS DateTime), 58, N'КОНВЕНЦИЯ между Республикой Таджикистан и Чешской Республикой ', N'Настоящая Конвенция применяется к налогам на доходы и капитал, взимаемые от имени одного из Договаривающихся Государств или его политических подразделений или местных органов власти, независимо от способа их взимания', N'che_tjk_conv.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (811, CAST(N'2015-05-24 22:36:19.020' AS DateTime), 58, N'КОНВЕНЦИЯ  МЕЖДУ РЕСПУБЛИКОЙ ТАДЖИКИСТАН И РУМЫНИЕЙ   ОБ ИЗБЕЖАНИИ ДВОЙНОГО НАЛОГООБЛАЖЕНИЯ И ПРЕДОТВРАЩЕНИЯ УКЛОНЕНИЯ ОТ УПЛАТЫ  НАЛОГОВ НА ДОХОДЫ И КАПИТАЛ ', N'Настоящая Конвенция применяется к налогам на доходы и капитал, взимаемым в соответствии с законодательством одного из Договаривающихся Государств его административно – территориальными подразделениями или местными органами власти, независимо от способа их взимания.', N'dta_rom_tjk.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (812, CAST(N'2015-05-24 22:36:19.073' AS DateTime), 58, N'КОНВЕНЦИЯ МЕЖДУ ТУРКМЕНИСТАНОМ И РЕСПУБЛИКОЙ ТАДЖИКИСТАН ', N'Настоящая Конвенция применяется к налогам на доходы и на капитал, взимаемым от имени Договаривающегося Государства или его политико -административных подразделений, или местных органов власти, независимо от способа их взимания.', N'tu_tjk_conv.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (813, CAST(N'2015-05-24 22:36:19.040' AS DateTime), 12, N'РАЗВИВАЮЩИЕСЯ СТРАНЫ В МИРОВОЙ ЭКОНОМИКЕ', N'Развивающиеся страны - это примерно 140 стран Азии, Африки, Латинской Америки и Океании. Их возникновение как самостоятельных субъектов мировой экономики связано с распадом мировой колониальной системы в 1950-1960-е годы. Они занимают почти 70 % территории Земли, их население составляет более 80 % всего населения земного шара, ВВП - около 20 % общемирового объема.', N'old_tema_9_RUS.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (814, CAST(N'2015-05-24 22:36:19.040' AS DateTime), 12, N'СТРАНЫ С ПЕРЕХОДНОЙ ЭКОНОМИКОЙ В СИСТЕМЕ МИРОВОГО ХОЗЯЙСТВА', N'Страны с переходной экономикой - это 28 государств Центральной и Восточной Европы (ЦВЕ), Закавказья и Средней Азии, совершающие с конца 1980-х - начала 1990-х годов переход от командно-административной к смешанной экономике. Возникли в связи с распадом мировой социалистической системы (МСС) и Совета Экономической Взаимопомощи (СЭВ). Население стран ЦВЕ составляет примерно 118,7 млн. человек, совокупный ВВП стран региона - примерно 636 млрд. долл. (1,85 % общемирового).', N'old_topic_10_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (815, CAST(N'2015-05-24 22:36:19.057' AS DateTime), 12, N'РАЗВИТЫЕ СТРАНЫ, ИХ МЕСТО И РОЛЬ В СИСТЕМЕ МЕЖДУНАРОДНОГО РАЗДЕЛЕНИЯ ТРУДА', N'Промышленно развитые страны занимают господствующее положение в МХ. Это - 29 государств, входящих в Организацию экономического сотрудничества и развития (ОЭСР), которая была создана в 1961 г', N'tema8meo.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (816, CAST(N'2015-05-24 22:36:19.063' AS DateTime), 12, N'ПРЕДМЕТ, ХАРАКТЕР И ТЕНДЕНЦИИ РАЗВИТИЯ МЭО', N'Все субъекты мировой экономики взаимодействуют между собой через систему МЭО, которые на практике образуют механизм функционирования мирового хозяйства. ', N'topic1_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (817, CAST(N'2015-05-24 22:36:19.063' AS DateTime), 12, N'МЕЖДУНАРОДНОЕ РАЗДЕЛЕНИЕ ТРУДА (МРТ)', N'Для того, чтобы понять сущность, роль и значение разделения труда как такового, необходимо вспомнить слова Адама Смита, сказанные еще в 1776 году: «Основное правило каждого здравомыслящего главы семьи - никогда не пытаться сделать дома то, что дешевле купить, нежели произвести самому. ', N'topic2_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (818, CAST(N'2015-05-24 22:36:19.063' AS DateTime), 12, N'МЕЖДУНАРОДНАЯ ТОРГОВЛЯ', N'Мировая торговля - это одностороннее перемещение за границу товарно-материальных ценностей в обмен на денежные потоки. Это сложная экономическая категория, которая может рассматриваться в трех аспектах: организационно-техническом, рыночном и социально-экономическом.', N'topic3_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (819, CAST(N'2015-05-24 22:36:19.067' AS DateTime), 12, N'МЕЖДУНАРОДНАЯ ТОРГОВЛЯ УСЛУГАМИ', N'Понятие «услуги» включает несколько десятков видов деятельности, продукция которых может быть определена как услуга. Услуга – трудовая целесообразная деятельность, результаты которой выражаются в полезном эффекте удовлетворяющем какие-либо потребности отдельного человека или общества в целом.', N'topic4_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (820, CAST(N'2015-05-24 22:36:19.067' AS DateTime), 12, N'ВНЕШНЕТОРГОВАЯ ПОЛИТИКА', N'Внешнеторговая политика представляет собой систему мероприятий, нацеленных на защиту внутреннего рынка или на стимулирование роста объема внешней торговли, изменение ее структуры и направлений товарных запасов.', N'topic5_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (821, CAST(N'2015-05-24 22:36:19.067' AS DateTime), 12, N'МЕЖДУНАРОДНОЕ ДВИЖЕНИЕ КАПИТАЛА', N'На современном этапе развития мирового хозяйства одним из основных факторов развития МЭО считается вывоз капитала, его международные перемещения.', N'topic6_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (822, CAST(N'2015-05-24 22:36:19.067' AS DateTime), 12, N'МЕЖДУНАРОДНАЯ МИГРАЦИЯ РАБОЧЕЙ СИЛЫ', N'Во второй половине XX в. одним из характерных явлений жизни мирового сообщества становится массовая миграция населения. Наряду с мировыми рынками товаров, услуг и капиталов возникает и взаимодействует с ними международный рынок рабочей силы. Рабочая сила, перемещаясь из одной страны в другую, предлагает себя в качестве товара. ', N'topic7_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (823, CAST(N'2015-05-24 22:36:19.070' AS DateTime), 12, N'МЕЖДУНАРОДНЫЙ ОБМЕН ТЕХНОЛОГИЯМИ', N'Новый этап НТР, начавшийся в 50-е годы XX в., не только произвел переворот в структуре международного разделения труда, но и привел к появлению новой формы МЭО - международному научно-техническому обмен (МНТО). ', N'topic8_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (824, CAST(N'2015-05-24 22:36:19.070' AS DateTime), 12, N'СВОБОДНЫЕ ЭКОНОМИЧЕСКИЕ ЗОНЫ', N'Под свободной экономической зоной понимается территориально ограниченное пространство в виде полных или частичных анклавов (обычно расположенных вблизи границ и хорошо обеспеченных инфраструктурой).', N'topic9_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (825, CAST(N'2015-05-24 22:36:19.070' AS DateTime), 12, N'МЕЖДУНАРОДНЫЕ КОРПОРАЦИИ, КАК СУБЪЕКТЫ МЕЖДУНАРОДНЫХ ЭКОНОМИЧЕСКИХ ОТНОШЕНИЙ', N'Транснационализация производства и капитала на основе развития производительных сил, перерастающих национально-государственные границы, является важнейшим элементом развития мировой экономики. Основная движущая сила транснационализации - транснациональные корпорации (ТНК).', N'topic10_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (826, CAST(N'2015-05-24 22:36:19.073' AS DateTime), 12, N'МЕЖДУНАРОДНЫЕ ВАЛЮТНЫЕ ОТНОШЕНИЯ', N'Валютными отношениями называется совокупность денежных отношений, определяющих платежно-расчетные операции между национальными хозяйствами. Валютные отношения находятся в зависимости от состояния МЭО', N'topic11_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (827, CAST(N'2015-05-24 22:36:19.123' AS DateTime), 12, N'Налоговая система Китая', N'Налогообложение является основным источником поступлений в бюджет страны, служит основой нормального функционирования государственной машины, это самая основная и самая важная функция налогообложения.', N'Customs.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (828, CAST(N'2015-05-24 22:36:19.127' AS DateTime), 12, N'Планирование и управление зон развития в Китае', N'Процесс строительства зоны развития в Китае', N'DevelopmentZone.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (829, CAST(N'2015-05-24 22:36:19.130' AS DateTime), 12, N'Управление внешними долгами в Китае', N'ВедущийспециалистМеждународногоотделаналогообложения;Главноеуправлениеналоговойполитикиигосударственныхсборов–МаксудоваОлия', N'ForeignDebt.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (830, CAST(N'2015-05-24 22:36:19.147' AS DateTime), 12, N'Международные профессиональные стандарты внутреннего аудита', N'Внутренний аудит проводится в обстоятельствах, различающихся в характере традиций и области культуры и права', N'int_audit_standards_rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (831, CAST(N'2015-05-24 22:36:19.160' AS DateTime), 12, N'Налоговые льготы предусмотренные Налоговым Кодексом Республики Таджикистан', N'Для иностранных государств и правительств, международных организаций, дипломатических и консульских представительств', N'NlpNKRT.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (832, CAST(N'2015-05-24 22:36:19.183' AS DateTime), 12, N'О Международных стандартах финансовой отчётности', N'С целью дальнейшего совершенствования системы бухгалтерского учета и отчетности в Республике Таджикистан, создания необходимых условий для дальнейшего развития международных связей Правительство Республики Таджикистан постановляет:', N'p428.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (833, CAST(N'2015-05-24 22:36:19.183' AS DateTime), 12, N'Государственные расходы и финансовая подотчетность', N'ГРФП – это совместная программа, в которой участвуют несколько учреждений и спонсорами которой являются', N'PEFArus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (834, CAST(N'2015-05-24 22:36:19.233' AS DateTime), 12, N'СТАНДАРТ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ "АУДИТОРСКАЯ ВЫБОРКА" (АД 5/2003)', N'Настоящий Стандарт подготовлен для регламентации аудиторской деятельности и в основном соответствует требованиям международных стандартов аудита, рекомендованных Международной Федерацией Бухгалтеров (IFAC) и Закона Республики Таджикистан от 21 мая 1998г., № 601 "Об аудиторской деятельности" (с учетом изменений и дополнений).', N'prikaz11.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (835, CAST(N'2015-05-24 22:36:19.237' AS DateTime), 12, N'СТАНДАРТ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ "АУДИТОРСКИЕ ДОКАЗАТЕЛЬСТВА" (АД 6/2003)', N'Настоящий стандарт разработан в соответствии с требованиями Международных стандартов аудита, рекомендованных Международной Федерацией бухгалтеров (IFAC) и Закона Республики Таджикистан от 21 мая 1998г. №601 "Об аудиторской деятельности" (с учетом изменений и дополнений).', N'prikaz12.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (836, CAST(N'2015-05-24 22:36:19.237' AS DateTime), 12, N'СТАНДАРТ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ "ДОКУМЕНТИРОВАНИЕ АУДИТА" (АД 2/2002)', N'Настоящий стандарт подготовлен для регламентации аудиторской деятельности и соответствует требованиям международных стандартов аудита, рекомендованных Международной Федерацией бухгалтеров (LFAC) и Закона Республики Таджикистан от 21 мая 1998г. №601 "Об аудиторской деятельности" (с учетом изменений и дополнений).', N'prikaz13.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (837, CAST(N'2015-05-24 22:36:19.237' AS DateTime), 12, N'СТАНДАРТ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ "ПИСЬМО-ОБЯЗАТЕЛЬСТВО АУДИТОРСКОЙ ОРГАНИЗАЦИИ О СОГЛАСИИ НА ПРОВЕДЕНИЕ АУДИТА" (АД 3/2002)', N'Настоящий Стандарт подготовлен для регламентации аудиторской деятельности и в основном соответствует требованиям международных стандартов аудита, рекомендованных Международной Федерацией Бухгалтеров (LFAC) и Закона Республики Таджикистан от 21 мая 1998г. №601 "Об аудиторской деятельности" (с учетом изменений и дополнений).', N'prikaz14.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (838, CAST(N'2015-05-24 22:36:19.257' AS DateTime), 12, N'Рекомендации по мероприятиям необходимым для перехода на МСФО', N'В списке организаций, которые обязаны перейти на МСФО кроме ОАО необходимо включить', N'recom.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (839, CAST(N'2015-05-24 22:36:19.263' AS DateTime), 12, N'СТАНДАРТ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ "ПОРЯДОК СОСТАВЛЕНИЯ АУДИТОРСКОГО ЗАКЛЮЧЕНИЯ О БУХГАЛТЕРСКОЙ ОТЧЕТНОСТИ" (АД 4/2002)', N'Настоящий стандарт разработан в соответствии с требованиями Международных стандартов аудита, рекомендованных Международной Федерацией бухгалтеров (IFAC) и закона Республики Таджикистан от 21 мая 1998г. №601 "Об аудиторской деятельности" (с учетом изменений и дополнений).', N'standart shestoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (840, CAST(N'2015-05-24 22:36:19.267' AS DateTime), 12, N'Структура Министерства Финансов Республики Таджикистан', N'', N'strmf.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (841, CAST(N'2015-05-24 22:36:19.267' AS DateTime), 12, N'Структура Министерства Финансов Республики Таджикистан', N'', N'strukmfrt.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (842, CAST(N'2015-05-24 22:36:19.297' AS DateTime), 12, N'«Бюджет рабочего времени и других ресурсов»', N'', N'prilojenie-5..xls', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (843, CAST(N'2015-05-24 22:36:19.297' AS DateTime), 12, N'Нормы возмещения расходов по найму жилого  помещения в зарубежных государствах', N'', N'Sunojnie i komandirovojnie rashodi.xls', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (844, CAST(N'2015-05-24 22:36:19.300' AS DateTime), 12, N'Рабочий план', N'', N'Rabochiy plan_2012-2014.xlsx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (845, CAST(N'2015-05-24 22:36:19.050' AS DateTime), 22, N'Сектор образования', N'1. Информация о динамике финансирования сектора в период с 2005 по 2007гг. Сформулировать планы на финансирование на 2008-2011гг. ', N'prilobr.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (846, CAST(N'2015-05-24 22:36:19.050' AS DateTime), 22, N'Министерство сельского хозяйства РТ', N'1. Информация о направлениях финансирования сектора в период с 2005 по 2007гг. Сформулировать планы на финансирование на 2008-2011гг.', N'prilsel.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (847, CAST(N'2015-05-24 22:36:19.050' AS DateTime), 22, N'Сектор социального страхования и социальной защиты населения', N'1. Информация о направлениях финансирования сектора в период с 2005 по 2007гг. Сформулировать планы на финансирование на 2008-2011гг.', N'prilsoc.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (848, CAST(N'2015-05-24 22:36:19.053' AS DateTime), 22, N'Сектор здравоохранения', N'1. Информация о направлениях финансирования сектора в период с 2005 по 2007гг. Сформулировать планы на финансирование на 2008-2011гг.', N'prilzd.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (849, CAST(N'2015-05-24 22:36:19.017' AS DateTime), 24, N'Календарный план по подготовке Среднесрочной программы государственных расходов на 2011-2013гг. и формированию государственного бюджета на 2011 год.', N'Подготовить и довести до соответствующих министерств «Инструкцию по подготовке СПГР на 2011-2013гг и по формированию проекта Государственного бюджета на 2011 год »', N'calendar2010_Rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (850, CAST(N'2015-05-24 22:36:19.017' AS DateTime), 24, N'Стратегия управления государственным долгом Республики Таджикистан на 2009 – 2011 годы ', N'Среднесрочная стратегия управления государственным долгом Таджикистана (СУГДТ) направлена на  улучшение качества управления государственным долгом путем уменьшения степени рисков, возникающих под влиянием внутренних и внешних факторов. ', N'debtstrategyru.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (851, CAST(N'2015-05-24 22:36:19.030' AS DateTime), 24, N'ОСНОВНЫЕ ТЕНДЕНЦИИ РАЗВИТИЯ ЭКОНОМИКИ РЕСПУБЛИКИ ТАДЖИКИСТАН  за 2007 год ', N'В 2007 году сохранялась тенденция динамичного развития экономики страны. В основном были выполнены параметры прогноза социально-экономического развития Республики Таджикистан на 2007 год, за исключением прогнозного показателя уровня инфляции.', N'macrosit.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (852, CAST(N'2015-05-24 22:36:19.030' AS DateTime), 24, N'ОСНОВНЫЕ ТЕНДЕНЦИИ РАЗВИТИЯ ЭКОНОМИКИ РЕСПУБЛИКИ ТАДЖИКИСТАН  По итогам III квартала 2008 года ', N'Темпы развития ВВП по итогам 9 месяцев текущего года превысили уровень аналогичного периода прошлого года на 0,1% в реальном выражении и сложились на уровне 7,2%. При этом, столь значительное повышение в объёме ВВП сложилось за счёт существенного увеличения в сфере строительства (1,8 раза), услуг (19,9 %) и роста валовой продукции сельского хозяйства (7,7%) по сравнению с прошлым 2007 годом. ', N'macrosit2008_3.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (853, CAST(N'2015-05-24 22:36:19.030' AS DateTime), 24, N'ОСНОВНЫЕ ТЕНДЕНЦИИ РАЗВИТИЯ ЭКОНОМИКИ РЕСПУБЛИКИ ТАДЖИКИСТАН  По итогам 11 месяцев 2008 года ', N'Складывающаяся на сегодняшний день ситуация в реальном секторе говорит о некоторых положительных тенденциях, наметившихся в экономическом развитии экономики республики. Несмотря на продолжающийся спад промышленного производства в республике, темпы развития ВВП на сегодняшний день превышают ожидаемый 7%-ый годовой целевой показатель,  составив при этом по итогам 11 месяцев текущего года 7,4% в противовес показателю прошлого года на уровне 7,2%. ', N'macrosit2008_11.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (854, CAST(N'2015-05-24 22:36:19.033' AS DateTime), 24, N'ОСНОВНЫЕ ТЕНДЕНЦИИ РАЗВИТИЯ ЭКОНОМИКИ РЕСПУБЛИКИ ТАДЖИКИСТАН  По итогам 2008 года ', N'Несмотря на трудности зимнего периода, постигшую засуху, нашествие саранчи в прошедшем сельскохозяйственном сезоне, а также влияние мирового финансового кризиса развитие макроэкономической ситуации по итогам 2008 года носило позитивный характер, при этом темпы экономического роста были выше по сравнению с ожидаемыми прогнозными показателями, а также по сравнению с прогнозами МВФ. ', N'macrosit2008_all.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (855, CAST(N'2015-05-24 22:36:19.053' AS DateTime), 24, N'Рекомендации по мероприятиям необходимым для перехода на МСФО предприятий частного сектора Республики Таджикистан:', N'1. В список организаций, которые обязаны перейти на МСФО кроме ОАО необходимо включить', N'recom.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (856, CAST(N'2015-05-24 22:36:19.060' AS DateTime), 24, N'Таджикистан: Оценка государственных расходов и финансовой подотчетности', N'Данная оценка основана на проделанной работе в октябре 2006 года; и ожидается завершить ее в апреле 2007 после завершающей миссии. Итоговая оценка охватывает следующие три уровня: 1. интегрированная оценка эффективности УГФ, основанная на 28+3 показателях ГРФП, 2. оценка воздействия недостатков УГФ, и 3. перспективы для реализации и планирования реформ. ', N'TJ_ PEFAJune2007(Rus).doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (857, CAST(N'2015-05-24 22:36:19.113' AS DateTime), 24, N'Среднесрочная Программа Государственных Расходов (СПГР)', N'Продолжающийся в Республике Таджикистан с 1997 г. стабильный экономический рост, связанная с ним макроэкономическая табилизация и постепенное снижение уровня бедности обусловили в последнее время необходимость разработки Правительством системы долгосрочных и среднесрочных программ развития, как основы своей деятельности и как инструмента координации экономических и социальных реформ (национальная система развития).', N'0810rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (858, CAST(N'2015-05-24 22:36:19.113' AS DateTime), 24, N'Программа мер фискальной политики в ответ на финансовый кризис', N'Показатели роста в Таджикистане в 2008 году были достаточно высокими: несмотря на суровую зиму 2007-2008 годов, экономический рост был сохранен на уровне 8 процентов в год, что было обусловлено развитием сельского хозяйства, строительства и услуг.', N'1239853010_antikrizisnaja-programma.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (859, CAST(N'2015-05-24 22:36:19.157' AS DateTime), 24, N'Среднесрочная Программа Государственных Расходов', N'Продолжающийся в Республике Таджикистан с 1997 г. стабильный экономический рост, связанная с ним макроэкономическая стабилизация и постепенное снижение уровня бедности обусловили в последнее время необходимость разработки Правительством системы долгосрочных', N'mtefrus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (860, CAST(N'2015-05-24 22:36:19.210' AS DateTime), 24, N'«О ДОПОЛНИТЕЛЬНЫХ МЕРАХ ПО ВНЕДРЕНИЮ МЕЖДУНАРОДНЫХ СТАНДАРТОВ ФИНАНСОВОЙ ОТЧЕТНОСТИ В РЕСПУБЛИКЕ ТАДЖИКИСТАН»', N'Утвердить состав и Положение Правительственной комиссии по внедрению Международных стандартов финансовой отчетности (прилагается).', N'postonavleni jetvirti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (861, CAST(N'2015-05-24 22:36:19.243' AS DateTime), 24, N'Приложение к протоколу №3/449', N'Создать рабочую группу для подготовки окончательного варианта проекта рабочего плана по реализации ИПДО на 2012-2014', N'prilojenie k protokolu_3.PDF', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (862, CAST(N'2015-05-24 22:36:19.243' AS DateTime), 24, N'СПИСОК УЧАСТНИКОВ Заседания рабочей группы по внедрению СПГР', N'Рабочая группа по методологии бюджетирования и по внедрению СПГР', N'Prilozheniya 2.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (863, CAST(N'2015-05-24 22:36:19.260' AS DateTime), 24, N'Список членов совета Инициативы прозрачности добывающих отраслей в РТ от министерств и ведомств', N'', N'Spisok soveta IPDO.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (864, CAST(N'2015-05-24 22:36:19.263' AS DateTime), 24, N'Стратегия развития государственного внутреннего финансового контроля в Республике Таджикистан', N'Эффективность, прозрачность и подотчетность использования выдыляемых национальных ресурсов и иностранной экономической помощи имеет большое значение для сокращения бедности и улучшения общественного благосостояния в Таджикистане.', N'strategy_rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (865, CAST(N'2015-05-24 22:36:19.267' AS DateTime), 24, N'Стратегия управления государственным долгом Республики Таджикистан на 2012 – 2014 годы', N'Разработка третьей Стратегии управления государственным долгом на 2012-2014 года обусловлена изменениями финансово-экономической ситуации в стране, окончанием срока действия предыдущей стратегии управления долга и как следствие необходимостью корректировки пределов основных долговых коэффициентов определяющих устойчивость долга.', N'sugd2012-2014.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (866, CAST(N'2015-05-24 22:36:19.290' AS DateTime), 24, N'Программа Поддержки Человеческого Развития ППЧР-1(2011-2013)', N'Порядок отчетности государственных предприятий установлен.  Управление мониторинга финансово-экономической деятельности крупных государственных предприятий Министерства финансов представляет отчеты по крупным государственным предприятиям в Правительство РТ. Данные отчеты включают анализ их финансовой и нефинансовой деятельности', N'EC  HDSP 2011-2013_Rus.pptx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (867, CAST(N'2015-05-24 22:36:19.293' AS DateTime), 24, N'Программа поддержки человеческого развития Европейского Союза ППЧР-1 (2011-2013)', N'Порядок отчетности государственных предприятий установлен.  Управление мониторинга финансово-экономической деятельности крупных государственных предприятий Министерства финансов представляет отчеты по крупным государственным предприятиям в Правительство РТ. Данные отчеты включают анализ их финансовой и нефинансовой деятельности', N'Spec.Cond_EC  HDSP 2011-2013_Rus-April-2012.pptx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (868, CAST(N'2015-05-24 22:36:19.007' AS DateTime), 31, N'Доклад Министра финансов Республики Таджикистан  Наджмиддинова С.М. ', N'Мы рады приветствовать Вас в Министерстве финансов и выражаем признательность за принятое приглашение и участие в данной встрече. Сегодня мы надеемся обсудить результаты исполнения государственного бюджета Республики Таджикистан за первый квартал 2009 года.', N'1243861154_doklad-ministra-na-konferencii.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (869, CAST(N'2015-05-24 22:36:19.007' AS DateTime), 31, N'Рабочая поездка делегации Министерства финансов Республики Таджикистан в Федеральное казначейство России в рамках Соглашения о техническом сотрудничестве между Федеральным казначейством (Казначейство России) и Министерством финансов Республики Таджикистан.', N'В рамках Соглашения о техническом сотрудничестве между Федеральным казначейством  (Казначейство России) и Министерством финансов Республики Таджикистан начальник Главного управления Государственного бюджета Абибуллаев Н., Первый заместитель директора Главного управления  центрального казначейства Хакимов И., начальник управления методологии бухгалтерского учета и аудита Хамрокулова Г., ', N'1252384304_otchet-ob-oznakomitelnojj-poezdke-v-federalnoe.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (870, CAST(N'2015-05-24 22:36:19.037' AS DateTime), 31, N'Предварительный (или окончательный) доклад о внутреннем аудите', N'1. Предметом предварительного (или окончательного) доклада является аудит /проверка процесса …………………………..(наименование аудита /проверки согл. Годовому плану о внутреннем аудите, например «Оприходование школьного имущества,  составление балансов, отчетности расходов и в том числе строительных работ и ремонта школы №5)', N'newaudit_doklad.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (871, CAST(N'2015-05-24 22:36:19.000' AS DateTime), 35, N'ОСНОВНЫЕ ТЕНДЕНЦИИ РАЗВИТИЯ ЭКОНОМИКИ РЕСПУБЛИКИ', N'Номинальный объём ВВП по итогам 2009 года составил 20622,8 млн. сомони, что ниже  ожидаемого показателя объёма ВВП (20 800 млн. сомони) на    1 % (177,2 млн. сомони). При этом достигнул реальней рост ВВП 3,4% что на 4,5% менше аналогичного периода прошлого года в номинальном выражении (3013,5 млн. сомони.).   ', N'12-2009.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (872, CAST(N'2015-05-24 22:36:19.047' AS DateTime), 35, N'ПРЕДВАРИТЕЛЬНЫЙ ОБЗОР ПРОГРЕССА РЕФОРМИРЫ ФИСКАЛЬНОЙ ДЕЦЕНТРАЛИЗАЦИИ В ТАДЖИКИСТАНЕ', N'Министерство Финансов (Минфин) Таджикистана поручило Институту развития зарубежных стран (ODI), в рамках более широкой программы “Бюджетная поддержка стран с развивающейся экономикой”, провести оценку прогресса реформы фискальной децентрализации по прошествии трех лет с момента запуска «Стратегии Управления Государственных Финансов» (УГФ).  ', N'POPRFD v T.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (873, CAST(N'2015-05-24 22:36:19.290' AS DateTime), 35, N'Общие условия ЕС Заключения Миссии по внешнему обзору (ноябрь 2011)', N'Удовлетворительный прогресс реализации Стратегии социальной защиты населения и пенсионного обеспечения, а также Стратегии здравоохранения достигнут. Однако, существует серьезное беспокойство в отношении к устойчивости Пенсионного фонда и отсутствия прозрачности осуществляемых им финансовых операций. ', N'EU General conditions - RUS.pptx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (874, CAST(N'2015-05-24 22:36:19.290' AS DateTime), 35, N'Реформа системы управления государственными финансами в Республике Таджикистан', N'Усиление стабильности, достоверности, полноты и прозрачности бюджета', N'Prezintasiy- dly 07-04-2011.pptx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (875, CAST(N'2015-05-24 22:36:19.293' AS DateTime), 35, N'Прогресс реформирования системы управления государственными финансами в Республике Таджикистан', N'Республика Таджикистан в настоящее время реализует ряд важных инициатив, направленных на более успешное приведение государственных расходов в соответствие с приоритетами социально-экономической политики и повышение эффективности государственных расходов. ', N'Progress reformi UGF.pptx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (876, CAST(N'2015-05-24 22:36:19.000' AS DateTime), 36, N'СПЕЦИАЛЬНОЕ УВЕДОМЛЕНИЕ О ПРИСУЖДЕНИИ КОНТРАКТА РЕСПУБЛИКА ТАДЖИКИСТАН ', N'Министерство финансов Республики Таджикистан сообщает, что в рамках Проекта Модернизации Управления Государственными финансами (Проект) (H463 – TJ) ранее объявляло 2 тендера («Азия-плюс №36 (555) от 01 сентября 2010 года) на закупку и установку оборудования и программного обеспечения для Тренинг –центра Министерства финансов РТ (Контракт № PFMMP/SH-4/2009 Контракт PFMMP/SH-10/2010).', N'2010-10.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (877, CAST(N'2015-05-24 22:36:19.003' AS DateTime), 36, N'СПЕЦИАЛЬНОЕ УВЕДОМЛЕНИЕ О ПРИСУЖДЕНИИ КОНТРАКТОВ РЕСПУБЛИКА ТАДЖИКИСТАН', N'Министерство финансов Республики Таджикистан сообщает, что в рамках Проекта Модернизации Управления Государственными финансами (Проект) (H463 – TJ) в течении 2010 года были проведены ниже указанные тендера', N'2011-01.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (878, CAST(N'2015-05-24 22:36:19.003' AS DateTime), 36, N'СПЕЦИАЛЬНОЕ УВЕДОМЛЕНИЕ О ПРИСУЖДЕНИИ КОНТРАКТА РЕСПУБЛИКА ТАДЖИКИСТАН ', N'Министерство финансов Республики Таджикистан сообщает, что в рамках Проекта Модернизации Управления Государственными финансами (Проект) (H463 – TJ) ранее объявляло тендер на закупку и установку офисного оборудования и программного обеспечения для Учебного Центра Министерства финансов РТ (Контракт № PFMMP/SH-14/2011).', N'2011-08.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (879, CAST(N'2015-05-24 22:36:19.003' AS DateTime), 36, N'СПЕЦИАЛЬНОЕ УВЕДОМЛЕНИЕ О ПРИСУЖДЕНИИ КОНТРАКТА РЕСПУБЛИКА ТАДЖИКИСТАН ', N'Министерство финансов Республики Таджикистан сообщает, что в рамках Проекта Модернизации Управления Государственными финансами (Проект) (H463 – TJ) ранее объявляло тендер\ на закупку и установку офисного оборудования для ИТ - Центра Министерства финансов РТ (Контракт № PFMMP/SH-15/2013).', N'2011-09.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (880, CAST(N'2015-05-24 22:36:19.007' AS DateTime), 36, N'СПЕЦИАЛЬНОЕ УВЕДОМЛЕНИЕ О ПРИСУЖДЕНИИ КОНТРАКТОВ', N'Министерство финансов Республики Таджикистан сообщает, что в рамках Проекта Модернизации Управления Государственными финансами (Проект) (H463 – TJ) в течении 2011 года были проведены ниже указанные тендера', N'2012-02.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (881, CAST(N'2015-05-24 22:36:19.007' AS DateTime), 36, N'СПЕЦИАЛЬНОЕ УВЕДОМЛЕНИЕ О ПРИСУЖДЕНИИ КОНТРАКТА РЕСПУБЛИКА ТАДЖИКИСТАН ', N'Министерство финансов Республики Таджикистан сообщает, что в рамках Проекта Модернизации Управления Государственными финансами (Проект) (H463 – TJ) ранее объявляло тендер\ («Азия-плюс №42 от 06 июля 2013 года) на закупку и установку оборудования для учебного Центра ЦПМФО Министерства финансов РТ (Контракт № PFMMP/SH-16/2013).', N'2013-09.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (882, CAST(N'2015-05-24 22:36:19.017' AS DateTime), 23, N'Квалификационной Комиссии по аттестированию и лицензированию', N'  В соответствии ст. 14 Закона Республики Таджикистан «О лицензировании отдельных видов деятельности», ст. 19 Закона Республики Таджикистан от 3 марта 2006 года № 170 «Об аудиторской деятельности» и пункта 3 Главы 19 Постановления Правительства Республики Таджикистан от 3 апреля 2007 ', N'1253774268_reshenie_.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (883, CAST(N'2015-05-24 22:36:19.043' AS DateTime), 23, N'Наименование учреждения  Отдел внутреннего аудита  ', N'Отправляем Вам для ознакомления и обсуждения выявленные недостатки при проведении аудита  и прилагаемые рекомендации для принятия плана соотвествующих мероприятии.', N'pismo.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (884, CAST(N'2015-05-24 22:36:19.047' AS DateTime), 23, N'О принятии Закона Республики Таджикистан  «О Государственном бюджете Республики Таджикистан  на 2009 год» ', N'3. Комитетам Маджлиси намояндагон Маджлиси Оли Республики Таджикистан, в пределах своих полномочий, наладить контроль за исполнением бюджета, анализировать целевое и эффективное использование бюджетных средств их получателями и при необходимости, представить результаты анализа на рассмотрение Маджлиси намояндагон Маджлиси Оли Республики Таджикистан.', N'postMHMO2009.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (885, CAST(N'2015-05-24 22:36:19.057' AS DateTime), 23, N'Отчет о фискальных рисках,  связанных с государственными пред¬приятиями ', N'Целью данного отчета является определение конкретных фискальных рисков, связан-ных с государственными предприятиями (ГП) и их потенциальное влияние на будущее финансовое состояние государства. Данные риски возникают из операций, как госу¬дарства, так и самих ГП', N'SFR_Final_RUS.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (886, CAST(N'2015-05-24 22:36:19.100' AS DateTime), 23, N'Заявка о присвоении кандидатского статуса ИПДО', N'Комитет по распространению инициативы и кандидатскому статусу Правления ИПДО проведет работу вместе с Международным Секретариатом ИПДО по рассмотрению заявки и оценки того, были ли удовлетворены пять требований по присоединению к инициативе. ', N'2012-04-18- EITI Candidature Application Form-Russian.docx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (887, CAST(N'2015-05-24 22:36:19.100' AS DateTime), 23, N'Отчет  о фискальных рисках связанных  с государственными предприятиями ', N'В  современных условиях  деятельности и практики  мировой экономики квазо-фискальное операции реализуются в рамках государственного бюджета  по требованию  Правительство Республики Таджикистан. В свою очередь обеспечение обязательства и его финансирования за счет государственного бюджета не осуществляется., так как определенные реальные  расходы и обязательство могут оказать отрицательное влияние на уровень управления финансами в общеэкономическое   состояния  страны .', N'fisk.docx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (888, CAST(N'2015-05-24 22:36:19.103' AS DateTime), 23, N'……………………. (наименование организации, например МФ, РФУ г. Файзабада)', N'Система/ Процесс/ Мероприятие – Процесс  ………………………. (наименование проверяемого процесса или деятельности, например Оприходование школьного имущества,  составление баланса и отчетности расходов строительных работ и ремонта школы №5. ', N'newaudit_programa.docx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (889, CAST(N'2015-05-24 22:36:19.103' AS DateTime), 23, N'………………………… (наименование отдела аудита, например Управление Внутреннего Аудита и Контроля)', N' ПЛАН ДЕЙСТВИЙ ПО ДОКЛАДУ ОБ АУДИТЕ No: …………. (номер и год проверки, например 244/ 09)', N'plandejstvij.docx', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (890, CAST(N'2015-05-24 22:36:19.133' AS DateTime), 23, N'Информация об источниках и освоении средств ОАО "Рогунская ГЭС"', N'Стоимость строительства Рогунской ГЭС оценивается в 2,2 млрд. долларов США.', N'info_istochniki.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (891, CAST(N'2015-05-24 22:36:19.133' AS DateTime), 23, N'', N'', N'info01012009.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (892, CAST(N'2015-05-24 22:36:19.133' AS DateTime), 23, N'', N'', N'InformObRogunGES.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (893, CAST(N'2015-05-24 22:36:19.137' AS DateTime), 23, N'', N'', N'InformIstokJsvRogun.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (894, CAST(N'2015-05-24 22:36:19.170' AS DateTime), 23, N'Операции ОАО "Рогунская ГЭС" за первый квартал 2012', N'Баланс на счетах по состоянию на начало отчетного периода ', N'operacii_1-12.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (895, CAST(N'2015-05-24 22:36:19.170' AS DateTime), 23, N'Операции ОАО "Рогунская ГЭС" за 2010', N'Баланс на счетах  ', N'operacii_2010.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (896, CAST(N'2015-05-24 22:36:19.173' AS DateTime), 23, N'Операции ОАО "Рогунская ГЭС" за первый квартал 2011', N'Баланс на счетах', N'operacii2011.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (897, CAST(N'2015-05-24 22:36:19.173' AS DateTime), 23, N'Операции ОАО "Рогунская ГЭС" за девять месяцев 2010', N'Баланс на счетах  ', N'OperaciyaOAORogunGES.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (898, CAST(N'2015-05-24 22:36:19.173' AS DateTime), 23, N'Операции ОАО "Рогунская ГЭС" за первое полугодие 2010', N'Баланс на счетах ', N'OperRogun2010.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (899, CAST(N'2015-05-24 22:36:19.187' AS DateTime), 23, N'Информация о подрядчиках ОАО "Рогунская ГЭС" за 2012', N'Подрядчики ', N'podryadchiki.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (900, CAST(N'2015-05-24 22:36:19.187' AS DateTime), 23, N'Информация о подрядчиках ОАО "Рогунская ГЭС" за 2011', N'Подрядчики ', N'podryadchiki2011.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (901, CAST(N'2015-05-24 22:36:19.247' AS DateTime), 23, N'П Р О Т О К О Л Заседания рабочей группы по внедрению СПГР', N'В Министерстве финансов Республики Таджикистан 12 марта 2013 года состоялось заседание Рабочей группы по внедрению СПГР.', N'Protocol 2.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (902, CAST(N'2015-05-24 22:36:19.247' AS DateTime), 23, N'П Р О Т О К О Л Совместное заседание рабочей группы по формированию Государственного бюджета на 2014-2016 г.', N'В Министерстве финансов Республики Таджикистан 17 мая 2013 года состоялась совместное заседание рабочей группы по формированию Государственного бюджета на 2014-2016 годы.', N'Protocol SPGR-2.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (903, CAST(N'2015-05-24 22:36:19.247' AS DateTime), 23, N'П Р О Т О К О Л Заседания рабочих групп по внедрению СПГР', N'В Министерстве финансов Республики Таджикистан 25 февраля 2013 года состоялось заседание Рабочих групп по внедрению СПРГ.', N'Protocol_1.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (904, CAST(N'2015-05-24 22:36:19.250' AS DateTime), 23, N'Протокол № 1/449', N'Инициативы прозрачности в добывающих отраслях Республики Таджикистан', N'Protokol_Soveta_1.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (905, CAST(N'2015-05-24 22:36:19.250' AS DateTime), 23, N'Протокол № 2/449', N'Инициативы прозрачности в добывающих отраслях Республики Таджикистан', N'Protokol_Soveta_2.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (906, CAST(N'2015-05-24 22:36:19.250' AS DateTime), 23, N'Протокол № 3/449', N'Инициативы прозрачности в добывающих отраслях Республики Таджикистан', N'Protokol_Soveta_3.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (907, CAST(N'2015-05-24 22:36:19.293' AS DateTime), 23, N'ОАО "Зинат"', N'ИНФОРМАЦИЯ О КОЛИЧЕСТВЕННОМ И КАЧЕСТВЕННОМ СОСТАВЕ ВЛАДЕЛЬЦЕВ ЦЕННЫХ БУМАГ ', N'1275633237_beneficiari2010.xls', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (908, CAST(N'2015-05-24 22:36:19.297' AS DateTime), 23, N'ОАО "Умед-1"', N'ИНФОРМАЦИЯ О КОЛИЧЕСТВЕННОМ И КАЧЕСТВЕННОМ СОСТАВЕ ВЛАДЕЛЬЦЕВ ЦЕННЫХ БУМАГ ', N'1284631560_beneficiary-1.xls', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (909, CAST(N'2015-05-24 22:36:19.193' AS DateTime), 9, N'МИНИСТЕРСТВО ФИНАНСОВ РЕСПУБЛИКИ ТАДЖИКИСТАН', N'С целью приведения в соответствии с международными стандартами бухгалтерского учета и отчетности приказываю:', N'polojenie jetvirti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (910, CAST(N'2015-05-24 22:36:19.230' AS DateTime), 9, N'ПРИКАЗ', N'Утвердить Положение по бухгалтерскому учету долгосрочных инвестиций.', N'prikaz6.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (911, CAST(N'2015-05-24 22:36:19.013' AS DateTime), 14, N'ИНСТРУКЦИЯ по составлению бюджета в рамках внедрения Среднесрочной программы государственных расходов в Министерстве Сельского Хозяйства РТ  ', N'1.1. Настоящая инструкция разработана в соответствии с Постановлением Правительства Республики от 7 сентября 2006 года, №409 «О внедрении Среднесрочной программы государственных расходов в Республике Таджикистан», предусматривает основные направления в части разработки бюджетных заявок ведущими отраслевыми министерствами с целью формирования среднесрочной программы государственных расходов. ', N'budinstsel.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (912, CAST(N'2015-05-24 22:36:19.013' AS DateTime), 14, N'ИНСТРУКЦИЯ по составлению бюджета в рамках внедрения  Среднесрочной программы государственных расходов  в Министерстве труда и социальной защиты населения РТ  ', N'1.1. Настоящая инструкция разработана в соответствии с Постановлением Правительства Республики от 7 сентября 2006 года, №409 «О внедрении Среднесрочной программы государственных расходов в Республике Таджикистан», предусматривает основные направления в части разработки бюджетных заявок ведущими отраслевыми министерствами с целью формирования среднесрочной программы государственных расходов. ', N'budinstsoc.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (913, CAST(N'2015-05-24 22:36:19.013' AS DateTime), 14, N'ИНСТРУКЦИЯ по составлению бюджета в рамках внедрения Среднесрочной программы государственных расходов в Министерстве здравоохранения РТ  ', N'1.1. Настоящая инструкция разработана в соответствии с Постановлением Правительства Республики от 7 сентября 2006 года, №409 «О внедрении Среднесрочной программы государственных расходов в Республике Таджикистан», предусматривает основные направления в части разработки бюджетных заявок ведущими отраслевыми министерствами с целью формирования среднесрочной программы государственных расходов. ', N'budinstzdr.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (914, CAST(N'2015-05-24 22:36:19.027' AS DateTime), 14, N'И Н С Т Р У К Ц И Я по формированию Среднесрочной программы государственных расходов на 2011-2013 гг. и проекта Государственного бюджета на 2011 год ', N'Порядок определения потолков расходов и подготовка проектa “Пояснительной записки к Закону РТ «О Государственном бюджете Республики Таджикистан на 2011 год”', N'instruction2010rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (915, CAST(N'2015-05-24 22:36:19.137' AS DateTime), 14, N'И Н С Т Р У К Ц И Я по формированию проекта Государственного бюджета на 2014 г. и прогноза бюджетных показателей на 2015 - 2016 годы', N'Настоящая инструкция разработана в соответствии с Законом Республики Таджикистан «О Государственных финансах Республики Таджикистан» и во исполнение Распоряжения Правительства Республики от 13 декабря 2012 г. № 144-р., охватывает второй этап бюджетного планирования, то есть подготовку проекта Закона РТ «О Государственном бюджете Республики Таджикистана на 2014 год и прогноза на 2015 и 2016 гг.» и включает следующие шаги', N'Instruccii 2014-2016.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (916, CAST(N'2015-05-24 22:36:19.137' AS DateTime), 14, N'Инструкция по формированию показателей Государственного бюджета Республики Таджикистан на 2013 - 2015 годы', N'Настоящая инструкция разработана в соответствии с Законом Республики Таджикистан «О Государственных финансах Республики Таджикистан» и во исполнение Распоряжения Правительства Республики от 30 декабря 2011 г. № 147-ф', N'Instruction 2013-2015.PDF', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (917, CAST(N'2015-05-24 22:36:19.140' AS DateTime), 14, N'Инструкция по формированию основных направлений финансовой политики и Государственного бюджета Республики Таджикистан на 2015-2017 годы', N'Настоящая инструкция разработана в соответствии с Законом Республики Таджикистан «О Государственных финансах Республики Таджикистан» и Распоряжением Правительства Республики от 3 января 2014 г. № 1-р охватывает первый этап бюджетного планирования', N'Instruk_2015-2017_rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (918, CAST(N'2015-05-24 22:36:19.283' AS DateTime), 14, N'Инструкция', N'Настоящая инструкция разработана в соответствии с Законом Республики Таджикистан «О Государственных финансах Республики Таджикистан» и Распоряжением Правительства Республики от 3 января 2014 г. № 1-р охватывает первый этап бюджетного планирования.', N'Инструкся 2015-2017_44rus.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (919, CAST(N'2015-05-24 22:36:19.147' AS DateTime), 14, N'ПРАВИЛА ПРОВЕДЕНИЯ АТТЕСТАЦИИ РУКОВОДЯЩИХ РАБОТНИКОВ КРЕДИТНЫХ ОРГАНИЗАЦИЙ И БАНКОВСКИХ АУДИТОРОВ', N'Аттестация руководящих работников кредитных организаций и аудиторов (далее – аттестация) проводится с целью проверки достаточности профессиональных знаний и способности указанных категорий работников обеспечить выполнение своих должностных обязанностей .', N'ipravila piyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (920, CAST(N'2015-05-24 22:36:19.217' AS DateTime), 14, N'ПРАВИЛА ПРОВЕДЕНИЯ АТТЕСТАЦИИ НА ПРАВО ОСУЩЕСТВЛЕНИЯ АУДИТОРСКОЙ ДЕЯТЕЛЬНОСТИ', N'Аттестация на право осуществления аудиторской деятельности в Республике Таджикистан (далее - аттестация) проводится с целью обеспечения профессионального выполнения аудиторами своих обязанностей.', N'pravila jetverti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (921, CAST(N'2015-05-24 22:36:19.220' AS DateTime), 14, N'ПРАВИЛА ПРОВЕДЕНИЯ ТАМОЖЕННОЙ ПРОВЕРКИ В ОБЩЕЙ И СПЕЦИАЛЬНОЙ ФОРМАХ', N'Настоящий правила (далее Правила) определяет порядок организации и проведения таможенной проверки.', N'pravila shestoe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (922, CAST(N'2015-05-24 22:36:19.220' AS DateTime), 14, N'ПРАВИЛА ПРОВЕДЕНИЯ АТТЕСТАЦИИ БАНКОВСКИХ АУДИТОРОВ', N'Настоящие Правила разработаны в соответствии с требованиями Закона Республики Таджикистан «Об аудиторской деятельности» и Постановлением Правительства Республики Таджикистан от 3 июня 2006 года за №230 «Об утверждении Правил проведения аттестации на право осуществления аудиторской деятельности».', N'pravila treti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (923, CAST(N'2015-05-24 22:36:19.223' AS DateTime), 14, N'ПРАВИЛА ПРИМЕНЕНИЯ МЕР БОРЬБЫ С УКЛОНЕНИЕМ ОТ УПЛАТЫ НАЛОГОВ И АЛЬТЕРНАТИВНЫХ МЕТОДОВ НАЛОГООБЛОЖЕНИЯ', N'Правила применения мер борьбы с уклонением от уплаты налогов и альтернативных методов налогообложения (далее - Правила) разработаны на основании положений статьи 44 Налогового кодекса Республики Таджикистан и предусматривают применение альтернативных методов налогообложения в случаях уклонения налогоплательщиков от уплаты налогов.', N'pravila vtoroe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (924, CAST(N'2015-05-24 22:36:19.027' AS DateTime), 14, N'И Н С Т Р У К Ц И Я  О порядке применения оплаты расходов служебных командировок государственных служащих, работников государственных организаций и учреждений в зарубежные страны , а также в пределах Республики Таджикистан  ', N'Настоящая инструкция разработано  на основании пунктом 9 постановления Правительства Республики Таджикистан от 31 октября 2008 года № 531 «Об оплате расходов служебных командировок государственных служащих, работников государственных  организаций и учреждений в зарубежные страны, а также в пределах Республики Таджикистан», определяет цель применения оплаты расходов служебных командировки. ', N'Instruksiy o kamandirovok.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (925, CAST(N'2015-05-24 22:36:19.033' AS DateTime), 14, N'Методические рекомендации по применению международного стандарта бухгалтерского учета (IAS) 2 «Запасы» ', N'Настоящие методические рекомендации разработаны Рабочей комиссией по переходу к МСФО Министерства финансов РТ в целях реализации Постановления Правительства Республики Таджикистан «О МСФО», а также для оказания практической помощи организациям при применении Международных стандартов финансовой отчетности (далее – МСФО).', N'met_rec_msfo.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (926, CAST(N'2015-05-24 22:36:19.117' AS DateTime), 14, N'Учет расчета по оплате труда в бюджетных учреждениях в условиях казначейского исполнения', N'изучение нормативно-законодательной базы учета заработной платы в бюджетных организациях', N'Barotov.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (927, CAST(N'2015-05-24 22:36:19.147' AS DateTime), 14, N'ИНСТРУКЦИЯ О ПОРЯДКЕ СПИСАНИЯ ПРИШЕДШИХ В НЕГОДНОСТЬ ОСНОВНЫХ СРЕДСТВ (ФОНДОВ)', N'Настоящая инструкция разработана в соответствии со ст. 6 Закона Республики Таджикистан «О бухгалтерском учете» в целях обеспечения единообразия порядка списания пришедших в негодность оборудования, хозяйственного инвентаря и другого имущества, принадлежащих государственным и общественным предприятиям, организациям, учреждениям и коммерческим структурам расположенных на территории Республики Таджикистан.', N'instruksiy vtoroe.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (928, CAST(N'2015-05-24 22:36:19.153' AS DateTime), 14, N'Методические рекомендации по применению международного стандарта бухгалтерского учета', N'Настоящие методические рекомендации разработаны Рабочей комиссией по переходу к МСФО Министерства Финансов РТ в целях реализации Постановления Правительства Республики Таджикистан ', N'met_rec_msfo.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (929, CAST(N'2015-05-24 22:36:19.153' AS DateTime), 14, N'Методологические указания по подготовке отраслевых Стратегических бюджетных планов', N'Реформа, направленная на интеграцию стратегического и бюджетного планирования в Среднесрочной программе государственных расходов (СПГР), получила в Республике Таджикистан (РТ) официальное начало в 2008 году, когда в Закон РТ «О государственных финансах» были внесены соответствующие поправки. Новая бюджетная процедура была окончательно закреплена в новом Законе «О государственных финансах» Но.723 утвержденного в июле 2011.', N'metod ukaz po podg otr..pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (930, CAST(N'2015-05-24 22:36:19.187' AS DateTime), 14, N'О Методологическом совете по бухгалтерскому учету и аудиту', N'Методологический совет по бухгалтерскому учету и аудиту является методологическим консультативно-совещательным органом', N'poloj_met_sovet.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (931, CAST(N'2015-05-24 22:36:19.207' AS DateTime), 14, N'"О ПЕРЕОЦЕНКЕ ОСНОВНЫХ СРЕДСТВ (ФОНДОВ), МАЛОЦЕННЫХ И БЫСТРОИЗНАШИВАЮЩИХСЯ ПРЕДМЕТОВ В РЕСПУБЛИКЕ ТАДЖИКИСТАН"', N'В целях приведения балансовой стоимости основных средств (фондов), малоценных и быстроизнашивающихся предметов в соответствие с условиями их воспроизводства и ныне действующими ценами, а также достоверного отражения их в балансе предприятий, Правительство Республики Таджикистан постановляет:', N'postonavleni dvinatsoti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (932, CAST(N'2015-05-24 22:36:19.220' AS DateTime), 14, N'ПРАВИЛА НАЧИСЛЕНИЯ И ВЗЫСКАНИЯ ПРОЦЕНТОВ ЗА КРЕДИТ БАНКАМИ, НЕБАНКОВСКИМИ ФИНАНСОВЫМИ ОРГАНИЗАЦИЯМИ И МИКРОФИНАНСОВЫМИ ОРГАНИЗАЦИЯМИ', N'Суммы процентов за кредит - это сумма, выплачиваемая Заемщиком за использование кредита в определенном периоде времени Кредитору.', N'pravila pervi.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (933, CAST(N'2015-05-24 22:36:19.033' AS DateTime), 14, N'МЕТОДИЧЕСКИЕ УКАЗАНИЯ  ПО ОЦЕНКИ ДЕЯТЕЛЬНОСТИ ВНУТРЕННЕГО АУДИТА ', N'1. Стандарт 1300. Программа гарантии и повышения качества внутреннего аудита Руководитель внутреннего аудита обязан разработать и поддерживать программу гарантии и повышения качества, которая должна охватывать все виды деятельности внутреннего аудита. ', N'Metod ukaz_rus.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (934, CAST(N'2015-05-24 22:36:19.037' AS DateTime), 14, N'Методические указания  по составлению годового аналитического отчета о внутреннем аудите в государственном секторе на 2010 год. ', N'Эти указания разработаны в соответствии со статьями 9 и 16 Закона Республики Таджикистан «О внутреннем аудите в государственном секторе», стандарта 206 Стандартов внутреннего аудита и направлены на оказание содействия руководителям отделов внутреннего аудита при подготовке годового аналитического отчета о деятельности по внутреннему аудиту за 2010 год. ', N'metod_ukazaniya-2.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (935, CAST(N'2015-05-24 22:36:19.127' AS DateTime), 14, N'Министерство финансов Республики Таджикистан', N'Министерство финансов Республики Таджикистан представляет седьмой ежегодный «Отчет о состоянии государственного долга Таджикистана за 2010 год».', N'ext_debt_status_rep2010.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (936, CAST(N'2015-05-24 22:36:19.037' AS DateTime), 14, N'Методические рекомендации по применению международного стандарта финансовой отчетности (IAS) 41 «Сельское хозяйство» ', N'Цель и сфера применения  1. Методические рекомендации разъясняют порядок учета, представления финансовой отчетности и раскрытия информации о сельскохозяйственной деятельности в соответствии с Международным стандартом финансовой отчетности (далее – МСФО (IAS) 41 «Сельское хозяйство»).  ', N'msfo41.doc', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (938, CAST(N'2015-05-24 22:36:19.140' AS DateTime), 14, N'ИНСТРУКЦИЯ ПО ОЦЕНКИ СТОИМОСТИ ОБЪЕКТОВ ПРИВАТИЗАЦИИ', N'Настоящая инструкция разработана в соответствии с Законом Республики Таджикистан "О собственности", Закон Республики Таджикистан "О приватизации государственной собственности" и другими законодательными актами.(ППРТ №58 от 20.02.98г)', N'instruksiy jetverti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (939, CAST(N'2015-05-24 22:36:19.140' AS DateTime), 14, N'ИНСТРУКЦИЯ ОБ ОБЪЕМЕ ФОРМ ОТЧЕТНОСТИ СТРАХОВЫХ ОРГАНИЗАЦИЙ, ПРЕДСТАВЛЯЕМОЙ В ПОРЯДКЕ НАДЗОРА, ПОРЯДКЕ ЕЕ СОСТАВЛЕНИЯ И ПРЕДСТАВЛЕНИЯ', N'Настоящая Инструкция устанавливает требования к объему форм отчетности страховых организаций, представляемой в порядке надзора Госстрахнадзору Министерства финансов Республики Таджикистан (далее - отчетность в порядке надзора), порядку ее составления и представления.', N'instruksiy pervi.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (940, CAST(N'2015-05-24 22:36:19.143' AS DateTime), 14, N'ИНСТРУКЦИЯ ПО УЧЕТУ И ОТЧЕТНОСТИ СПЕЦИАЛЬНЫХ СРЕДСТВ ГОСУДАРСТВЕННЫМИ БЮДЖЕТНЫМИ УЧРЕЖДЕНИЯМИ И ОРГАНИЗАЦИЯМИ', N'Настоящая инструкция разработана в соответствии со статьей 6 Закона Республики Таджикистан «О казначействе» и определяет порядок учета доходов и расходов средств, полеченных бюджетными организациями при оказании платных услуг, выполнении заказов и прочих доходов, за исключением других обязательных платежей, которые определяет Закон Республики Таджикистан «О других обязательных платежах в бюджет».', N'instruksiy pyti.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (941, CAST(N'2015-05-24 22:36:19.147' AS DateTime), 14, N'И Н С Т Р У К Ц И Я по формированию Среднесрочной программы государственных расходов на 2012-2014 годы', N'Настоящая инструкция разработана в соответствии с Законом Республики Таджикистан «О Государственных финансах Республики Таджикистан» и Распоряжением Правительства Республики от 30 декабря 2010 г. № 144р.', N'InstSPGR2012-2014.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (942, CAST(N'2015-05-24 22:36:19.150' AS DateTime), 14, N'Классификация доходов и расходов Государственного бюджета Республики Таджикистан', N'В настоящем документе представлена классификация доходов,функциональная бюджетная классификация, экономическая бюджетная классификация, Инструкция по применению функциональной и экономической классификации бюджета и аналитических подстатей экономической бюджетной классификации, используемые в казначейской системе при исполнении бюджета.', N'Klass-ya rusi.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (943, CAST(N'2015-05-24 22:36:19.157' AS DateTime), 14, N'Методические рекомендации по применению международного стандарта финансовой отчетности', N'Настоящие методические рекомендации подготовлены Рабочей группой по внедрению МСФО при Министерстве финансов Республики Таджикистан в рамках реализации ', N'msfo_octh.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (944, CAST(N'2015-05-24 22:36:19.157' AS DateTime), 14, N'Методические рекомендации по применению международного стандарта финансовой отчетности', N'Настоящие методические рекомендации разработаны Рабочей комиссией по переходу к МСФО Министерства финансов РТ в целях реализации Постановления Правительства Республики Таджикистан', N'msfo41.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (945, CAST(N'2015-05-24 22:36:19.160' AS DateTime), 14, N'Положение о порядке представления эмитетам отчетности о владельцах ценных бумаг', N'Настоящее положение разработано на основании статьями 41 Закона Республики Таджикистан ', N'o_beneficiarah.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (946, CAST(N'2015-05-24 22:36:19.257' AS DateTime), 14, N'Руководство по формированию базисного бюджета', N'Реформа, направленная на интеграцию стратегического и бюджетного планирования в Среднесрочной программе государственных расходов (СПГР), получила в Республике Таджикистан (РТ) официальное начало в 2008 году, когда в Закон РТ «О государственных финансах» были внесены соответствующие поправки. Новая бюджетная процедура была окончательно закреплена в новом Законе «О государственных финансах» Но.723 утвержденного в июле 2011.', N'ruk po form bazisnogo bud.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (947, CAST(N'2015-05-24 22:36:19.260' AS DateTime), 14, N'Руководство по рограммному бюджетированию', N'Реформа, направленная на интеграцию стратегического и бюджетного планирования в Среднесрочной программе государственных расходов (СПГР), получила в Республике Таджикистан (РТ) официальное начало в 2008 году, когда в Закон РТ «О государственных финансах» были внесены соответствующие поправки. Новая бюджетная процедура была окончательно закреплена в новом Законе «О государственных финансах» Но.723 утвержденного в июле 2011.', N'ruk. po podg. zayavok bud prioritetov.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (948, CAST(N'2015-05-24 22:36:19.260' AS DateTime), 14, N'Руководство по подготовке заявок бюджетных приоритетов', N'Реформа, направленная на интеграцию стратегического и бюджетного планирования в Среднесрочной программе государственных расходов (СПГР), получила в Республике Таджикистан (РТ) официальное начало в 2008 году, когда в Закон РТ «О государственных финансах» были внесены соответствующие поправки. Новая бюджетная процедура была окончательно закреплена в новом Законе «О государственных финансах» Но.723 утвержденного в июле 2011.', N'ruk. po podg. zayavok bud prioritetov.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (949, CAST(N'2015-05-24 22:36:19.117' AS DateTime), 9, N'ПРИКАЗ', N'Об утверждении Инструкции о порядке учета и хранения драгоценных металлов, и драгоценных камней, пордукции из них и ведения отчётности при их производстве, использование и обращение ', N'1243948640_instrukciya20090520.pdf', 1, CAST(N'2015-05-24 00:00:00.000' AS DateTime), 1, 1, 1)
GO
INSERT [dbo].[tb_files] ([id], [date_create], [category_id], [title], [description], [file_name], [lang_id], [public_date], [is_main], [is_active], [tb_organization_Id]) VALUES (950, CAST(N'2015-11-11 13:47:01.777' AS DateTime), 1, N' Test', N'Test', N'e25e2aca-6300-46b1-9ec8-e0f72d6a16c9_4.jpg', 1, CAST(N'2015-11-12 00:00:00.000' AS DateTime), 0, 1, 14)
SET IDENTITY_INSERT [dbo].[tb_files] OFF
SET IDENTITY_INSERT [dbo].[tb_files_category] ON 

INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (1, N'Приказы Министерства', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (9, N'Законы и кодексы Республики', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (11, N'Постановления и распоряжения Правительства', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (12, N'Справочные материалы', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (13, N'Положения Министерства', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (14, N'Методические материалы', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (20, N'Исполнение бюджета', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (21, N'Макроэкономика', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (22, N'Секторальное финансирование', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (23, N'Прочие документы', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (24, N'Программы развития экономики', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (25, N'Государственный внешний долг', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (26, N'Государственый внутренний долг', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (27, N'Экономические прогнозы', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (28, N'Внутренний аудит', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (29, N'Публикации экспертов', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (31, N'Доклады', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (33, N'Қонунҳо ва кодексҳо', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (34, N'Orders of the Ministry of Finance', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (35, N'Отчеты о реформах', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (36, N'Контракты в проектах УГФ', 0, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (37, N'Проекты нормативно-правовых актов Министерства', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (38, N'International treaties and agreements', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (39, N'Laws and codes', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (40, N'Government decrees and orders', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (41, N'Reference materials', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (42, N'Regulations of the Ministry', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (43, N'Methodological materials and instructions', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (44, N'Budget execution', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (45, N'Macroeconomics', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (46, N'Reports by sector', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (47, N'Other reports', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (48, N'Economic development programs', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (49, N'External public debt', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (50, N'Internal public debt', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (51, N'Economic forecasts', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (52, N'Internal audit', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (53, N'Experts'' publications ', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (54, N'Reports', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (55, N'Reports on reforms', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (56, N'Contracts in the framework of the PFM', 0, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (57, N'Проекты нормативно-правовых актов Министерства', 1, 2, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (58, N'Международные договоры и соглашения', 1, 1, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (63, N'Фармонҳои Вазорати молия', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (64, N'Қарорҳо ва супоришҳои Ҳукумат', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (65, N'Маводи маълумотӣ', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (66, N'Муқаррароти Вазорати молия', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (67, N'Мавод ва дастурҳои методӣ', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (68, N'Татбиқи буҷет', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (69, N'Макроиқтисодиёт ', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (70, N'Ҳисобот аз ҷониби бахшҳои иқтисодиёт', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (71, N'Ҳисоботи дигар', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (72, N'Барномаҳои рушди иқтисодӣ', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (73, N'Қарзи берунаи давлатӣ', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (74, N'Қарзи дохилии давлатӣ ', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (75, N'Пешгӯии иқтисодӣ', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (76, N'Аудити дохилӣ ', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (77, N'Интишороти мутахассисон', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (78, N'Маърӯза', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (79, N'Ҳисоботҳо оиди ислоҳотҳо', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (80, N'Шартномаҳо дар доираи лоиҳаи ИМД', 0, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (81, N'Проекты нормативно-правовых актов Министерства', 1, 3, 1)
INSERT [dbo].[tb_files_category] ([id], [name], [is_menu], [lang], [is_active]) VALUES (82, N'Шартномаҳо ва созишномаҳои байналмилалӣ ', 1, 3, 1)
SET IDENTITY_INSERT [dbo].[tb_files_category] OFF
SET IDENTITY_INSERT [dbo].[tb_gallery] ON 

INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (8, N'23 апреля 2015 года в Министерстве финансов Республики Таджикистан состоялась встреча Первого заместителя Министра финансов Республики  Таджикистан  Нуралиева  Дж.К. с миссией Антикризисного фонда Евразийского банка развития.', N'23 апреля 2015 года в Министерстве финансов Республики Таджикистан состоялась встреча Первого заместителя Министра финансов Республики  Таджикистан  Нуралиева  Дж.К. с миссией Антикризисного фонда Евразийского банка развития.', N'1.jpg', 1, 1)
INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (9, N'22 марта 2015 года в Женеве (Швейцария) прошла церемония  награждения премией «Корона за качество» (Quality Crown) Финансово-экономического института Таджикистана в категории "Золото" Century International Quality ERA.', N'22 марта 2015 года в Женеве (Швейцария) прошла церемония  награждения премией «Корона за качество» (Quality Crown) Финансово-экономического института Таджикистана в категории "Золото" Century International Quality ERA.', N'2.jpg', 5, 1)
INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (10, N'1 апреля 2015 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'1 апреля 2015 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'3.jpg', 1, 1)
INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (11, N'12 марта 2015 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения между Правительством Республики Таджикистан и Правительством Швейцарской Конфедерации по проекту «Водоснабжение в Республике Таджикистан, фаза - 2».', N'12 марта 2015 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения между Правительством Республики Таджикистан и Правительством Швейцарской Конфедерации по проекту «Водоснабжение в Республике Таджикистан, фаза - 2».', N'4.jpg', 1, 1)
INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (13, N'30 января 2015 года в Министерстве финансов Республики Таджикистан состоялась рабочая встреча с донорами по обсуждению Проекта третьего Плана действий Стратегии УГФ на 2015-2018 годы, организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан. Встреча прошла под председательством Руководителя Секретариата Совета УГФ, заместителя Министра финансов Республики Таджикистан  Сохибова  Ш.К. ', N'30 января 2015 года в Министерстве финансов Республики Таджикистан состоялась рабочая встреча с донорами по обсуждению Проекта третьего Плана действий Стратегии УГФ на 2015-2018 годы, организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан. Встреча прошла под председательством Руководителя Секретариата Совета УГФ, заместителя Министра финансов Республики Таджикистан  Сохибова  Ш.К. ', N'5.jpg', 1, 1)
INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (14, N'23 января 2015 года  Президент  Республики  Таджикистан   обратился с  очередным  Посланием к Парламенту страны.', N'23 января 2015 года  Президент  Республики  Таджикистан   обратился с  очередным  Посланием к Парламенту страны.', N'6.jpg', 5, 1)
INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (15, N'23 января 2015 года в Министерстве финансов Республики Таджикистан состоялась  пресс-конференция  с представителями  средств  массовой информации.', N'23 января 2015 года в Министерстве финансов Республики Таджикистан состоялась  пресс-конференция  с представителями  средств  массовой информации.', N'7.jpg', 5, 1)
INSERT [dbo].[tb_gallery] ([id], [title], [description], [image], [category_id], [is_active]) VALUES (16, N'12 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'12 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'8.jpg', 1, 1)
SET IDENTITY_INSERT [dbo].[tb_gallery] OFF
SET IDENTITY_INSERT [dbo].[tb_gallery_category] ON 

INSERT [dbo].[tb_gallery_category] ([id], [name], [order_id], [image], [is_active]) VALUES (1, N'Встречи руководства', 1, N'3.jpg', 1)
INSERT [dbo].[tb_gallery_category] ([id], [name], [order_id], [image], [is_active]) VALUES (2, N'Заседания и коллегии', NULL, NULL, 1)
INSERT [dbo].[tb_gallery_category] ([id], [name], [order_id], [image], [is_active]) VALUES (3, N'События в регионах', NULL, NULL, 1)
INSERT [dbo].[tb_gallery_category] ([id], [name], [order_id], [image], [is_active]) VALUES (4, N'Вручения наград, поздравления', NULL, NULL, 1)
INSERT [dbo].[tb_gallery_category] ([id], [name], [order_id], [image], [is_active]) VALUES (5, N'Прочее', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tb_gallery_category] OFF
SET IDENTITY_INSERT [dbo].[tb_lang] ON 

INSERT [dbo].[tb_lang] ([id], [name], [code], [is_active]) VALUES (1, N'русский', N'ru', 1)
INSERT [dbo].[tb_lang] ([id], [name], [code], [is_active]) VALUES (2, N'английский', N'en', 1)
INSERT [dbo].[tb_lang] ([id], [name], [code], [is_active]) VALUES (3, N'таджикский', N'tg', 1)
SET IDENTITY_INSERT [dbo].[tb_lang] OFF
SET IDENTITY_INSERT [dbo].[tb_news] ON 

INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (3, N'Торжественное собрание, посвященное «Дню профессионального праздника работников финансовой системы Республики Таджикистан»', N'5 декабря 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню профессионального праздника работников финансовой системы Республики Таджикистан». ', N'<p>5 декабря 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное &laquo;Дню профессионального праздника работников финансовой системы Республики Таджикистан&raquo;.</p>
', N'1418310678_torjestvevoniy.jpg', CAST(N'2015-01-19 21:33:25.000' AS DateTime), CAST(N'2015-01-01 00:00:00.000' AS DateTime), 1, 0, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (4, N'Торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан»', N'24 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан».', N'24 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан».', N'1416829350_parcham.jpg', CAST(N'2015-01-19 21:34:36.867' AS DateTime), CAST(N'2014-12-03 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (5, N'Встреча Министра финансов Республики Таджикистан с миссией Международного Валютного Фонда', N'1 апреля 2015 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'<p><strong>1 апреля 2015</strong>&nbsp;<strong>года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией&nbsp;Международного Валютного Фонда&nbsp;под руководством Главы миссии г-ном Джонатаном Данном.</p>

<p>&nbsp;Встреча прошла в конструктивной обстановке, в ходе которой&nbsp; стороны заслушали обзор фискальной ситуации и реформ в бюджетном секторе Таджикистана в 2015 году, а также общий обзор перспектив развития экономической ситуации и рисков в Таджикистане &ndash; рост экономики, обменный курс, экспорт, импорт.</p>

<p>&nbsp;Глава миссии г-н Джонатан Данн поделился своими мнениями по поводу намеченных миссией целей и задач, представив свои рекомендации и предложения.</p>

<p>&nbsp;Одновременно миссия&nbsp;проводит необходимые обсуждения по основным направлениям экономической политики&nbsp; с соответствующими управлениями Министерства&nbsp; финансов Республики Таджикистан.</p>

<p>&nbsp;Стороны уделили особое внимание вопросам финансово-налоговой и банковской политики,&nbsp; а также &nbsp;взаимоотношений&nbsp; Республики Таджикистан с другими международными финансовыми и банковскими организациями.<br />
&nbsp;На встрече&nbsp; приняли участие и высказали свои мнения &nbsp;Первый заместитель Министра финансов Республики Таджикистан г-н Нуралиев Дж.К., Постоянный представитель&nbsp; Международного Валютного Фонда в Таджикистане&nbsp; г-н Айдын Биболов и представители Всемирного Банка в Республике Таджикистан.&nbsp;</p>

<p>&nbsp; Министр финансов Республики Таджикистан г-н Курбонов А. К. выразив признательность Главе миссии г-ну Джонатану Данну, отметил, что за время сотрудничества с Международным Валютным Фондом, в особенности в части проведения реформ в финансовых секторах Республики Таджикистан достигнут значительный прогресс, и выразил уверенность в том, что сотрудничество с&nbsp; Международным Валютным Фондом&nbsp; и в дальнейшем&nbsp; будет развиваться и расширяться на конструктивной основе.</p>
', NULL, CAST(N'2015-04-13 16:45:23.167' AS DateTime), CAST(N'2015-04-02 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (6, N'Встреча Министра финансов Республики Таджикистан с миссией Международного Валютного Фонда', N'1 апреля 2015 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'<p>&nbsp;<strong>1 апреля 2015</strong>&nbsp;<strong>года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией&nbsp;Международного Валютного Фонда&nbsp;под руководством Главы миссии г-ном Джонатаном Данном.</p>

<p>&nbsp;Встреча прошла в конструктивной обстановке, в ходе которой&nbsp; стороны заслушали обзор фискальной ситуации и реформ в бюджетном секторе Таджикистана в 2015 году, а также общий обзор перспектив развития экономической ситуации и рисков в Таджикистане &ndash; рост экономики, обменный курс, экспорт, импорт.</p>

<p>&nbsp;Глава миссии г-н Джонатан Данн поделился своими мнениями по поводу намеченных миссией целей и задач, представив свои рекомендации и предложения.</p>

<p>&nbsp;Одновременно миссия&nbsp;проводит необходимые обсуждения по основным направлениям экономической политики&nbsp; с соответствующими управлениями Министерства&nbsp; финансов Республики Таджикистан.</p>

<p>&nbsp;Стороны уделили особое внимание вопросам финансово-налоговой и банковской политики,&nbsp; а также &nbsp;взаимоотношений&nbsp; Республики Таджикистан с другими международными финансовыми и банковскими организациями.<br />
&nbsp;На встрече&nbsp; приняли участие и высказали свои мнения &nbsp;Первый заместитель Министра финансов Республики Таджикистан г-н Нуралиев Дж.К., Постоянный представитель&nbsp; Международного Валютного Фонда в Таджикистане&nbsp; г-н Айдын Биболов и представители Всемирного Банка в Республике Таджикистан.&nbsp;</p>

<p>&nbsp; Министр финансов Республики Таджикистан г-н Курбонов А. К. выразив признательность Главе миссии г-ну Джонатану Данну, отметил, что за время сотрудничества с Международным Валютным Фондом, в особенности в части проведения реформ в финансовых секторах Республики Таджикистан достигнут значительный прогресс, и выразил уверенность в том, что сотрудничество с&nbsp; Международным Валютным Фондом&nbsp; и в дальнейшем&nbsp; будет развиваться и расширяться на конструктивной основе.</p>

<p><br />
&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong>&nbsp;</p>
', N'1428050448_mvf_podpisanie.jpg', CAST(N'2015-04-13 21:08:09.047' AS DateTime), CAST(N'2015-04-01 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (7, N'Торжественное мероприятие, посвященное празднику весны “Навруз”', N' Работники Министерства финансов Республики Таджикистан  торжественно отпраздновали Международный праздник “Навруз”', N'<p>Работники Министерства финансов Республики Таджикистан&nbsp; торжественно отпраздновали Международный праздник &ldquo;Навруз&rdquo;</p>

<p>Программа проведения мероприятий была очень насыщенной, а началась она с приятных поздравлений с весенним праздником &ldquo;Навруз&rdquo; &nbsp;со стороны Первого заместителя Министра финансов Республики Таджикистан Нуралиева. Дж. К, отметившего &nbsp;в своем выступлении, что это самый древний новогодний праздник на земле и что отрадно, &nbsp;этот прекрасный&nbsp; и всеми любимый праздник по инициативе Таджикистана и при поддержке ряда стран мира, Генеральной Ассамблеей Организации Объединённых Наций объявлен Международным Днём Навруза, который с 2010 года широко &nbsp;отмечается во всём мире.</p>

<p>&nbsp;В этот торжественный день &nbsp;Нуралиев. Дж.К&nbsp; пожелал всем наилучших благ, здоровья, счастья в личной и семейной жизни, успехов в повседневной трудовой деятельности.</p>

<p>&nbsp;В рамках этого мероприятия, в этот солнечный, поистине весенний день&nbsp; были представлены на обозрение гостей украшенные дастарханы из разнообразных даров природы богатой таджикской земли, различных национальных блюд, кулинарных изделий, выпечек, сладостей и конечно же главного атрибута Навруза- традиционного суманака, а также проросшей зелёной травы, как признака радости и веселья народа.&nbsp;</p>

<p>&nbsp;Затем гостям была представлена театрализованная концертная программа с участием Маликаи Навруз. Зрителям были представлены различные юмористические и музыкальные номера, исполненные коллективом художественной самодеятельности Финансово-экономического института Таджикистана.</p>

<p>&nbsp;Первый&nbsp; заместитель&nbsp; Министра&nbsp; финансов&nbsp; Республики&nbsp; Таджикистан&nbsp; Нуралиев. Дж. К,&nbsp; поблагодарил&nbsp; организаторов&nbsp; мероприятия,&nbsp; посвящённого&nbsp; празднику&nbsp; &ldquo;Навруз&rdquo;&nbsp; и&nbsp; дал высокую оценку студентам &nbsp;Института за подготовленную праздничную концертную программу, пожелав им дальнейших творческих успехов и отличной учёбы.&nbsp;</p>

<p>&nbsp;По окончании намеченных мероприятии всем присутствующим были предложены национальные блюда и угощения с весеннего праздничного стола.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1427427905_navruz_1.jpg', CAST(N'2015-04-13 21:20:54.477' AS DateTime), CAST(N'2015-03-23 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (8, N'Армуғони наврӯзӣ ба мактаб – интернати ҷумҳуриявии кӯдакони ятими шаҳри Кулоб', N'Мактаб-интернати ҷумҳуриявии кӯдакони ятими шаҳри Кӯлоб аз соли 1997 дар базаи омӯзишгоҳи касбӣ-техникии шаҳри Кӯлоб таъсис ёфтааст. Дар оғози фаъолият интернат тавонист 103 ятимбачаро ба таълим фаро гирад. Дар айни замон, дар парваришгоҳ 250 нафар тарбиятгиранда бо шароити хубу буду бош ба таҳсил фаро гирифта шудааст.', N'<p>Мактаб-интернати ҷумҳуриявии кӯдакони ятими шаҳри Кӯлоб аз соли 1997 дар базаи омӯзишгоҳи касбӣ-техникии шаҳри Кӯлоб таъсис ёфтааст. Дар оғози фаъолият интернат тавонист 103 ятимбачаро ба таълим фаро гирад. Дар айни замон, дар парваришгоҳ 250 нафар тарбиятгиранда бо шароити хубу буду бош ба таҳсил фаро гирифта шудааст.</p>

<p>&nbsp;&nbsp;Имрӯзҳо Ҳукумати Ҷумҳурии Тоҷикистон таваҷҷуҳи худро бевосита ба кӯдакони ятими бепарастдор ва оилаҳои камбизоат мерасонад.</p>

<p>&nbsp;&nbsp;Бахусус, ба истиќболи Наврӯзи хуҷастапай иќдоми Сарвари давлат &ndash; дастгирии ятимону бепарасторон ва хайру эҳсонкорӣ ба ниёзмандонро хеле хуб ба роҳ мондааст.&nbsp;</p>

<p>&nbsp; Ҷиҳати иҷрои Амри Президенти Ҷумҳурии Тоҷикистон аз 12 январи соли 2008 №АП-467 Вазорати молияи кишвар сарпарастии ин мактаб-интернатро ба зиммаи худ гирифта, ҳамасола дар ҳамаи иду ҷашнҳои милливу мазҳабӣ, бо тамоми кӯмакҳои моддиву маишӣ ва ғизову пӯшока толибилмони ин даргоҳро таъмин мегардонад.</p>

<p>&nbsp; Дар арафаи иди Наврӯз бо маќсади руҳбаланд намудани тарбиятгирандагони мактаб-интернат аз ҷониби Вазорати молияи Ҷумҳурии Тоҷикистон ва зерсохторҳои он Донишкадаи молия ва иќтисоди Тоҷикистон,&nbsp; Корхонаи воҳиди давлатии Ширкати суғуртавии &laquo;Тоҷиксармоягузор&raquo;,&nbsp;&nbsp;Раёсати молияи шаҳри Кӯлоб сару либос,&nbsp; рахти &nbsp;хоб, пойафзолу тӯҳфаҳои идона харидорӣ карданд. Бо чунин иќдоми хайр тарбиятгирандагони ин мактаб-интернат дар назди меҳмонон, бахшида&nbsp; ба&nbsp; иди&nbsp; Наврӯзи аҷам шеъру таронаҳо ќироат намуданд.</p>

<p>&nbsp;&nbsp;Роҳбарияти мактаб-интернати шаҳри Кӯлоб Хоҷаева Фирӯза, суханронӣ намуда, миннатдории хешро аз номи кӯдакони ятим ва бепарастороне, ки дар ин мактаб-интернат таҳсил гирифта истодаанд пеш аз ҳама ба Ҳукумати Ҷумҳурии Тоҷикистон ва Вазорати молияи Ҷумҳурии Тоҷикистон баён намуд. &laquo;Мо барои кумакҳои хайриявие, ки ҳамасола ва доимо ба мактаб-интернати мо расонида мешаванд изҳори миннатдорӣ намуда, умедвори боз ҳам обод гардидани Тоҷикистони азизамон ҳастем. Имрӯз шиори тарбиятгирандагони мактаб-интернати ҷумҳуриявии кӯдакони ятими шаҳри Кӯлоб ин аст, ки доимо бо хониши хубу аъло таҳсил намуда, интизоми намунавии хешро нишон додан аст&raquo;.</p>

<p>Инчунин, барои толибилмони ин даргоҳ дастархони идонаи наврӯзӣ ороста шуда, ҳунармандон дар назди тарбиятгирандагони мактаб-интернат ҳунарнамоӣ намуда, хотири кӯдаконро шод гардониданд.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;Котиботи</p>

<p>&nbsp;Вазорати молияи</p>

<p>&nbsp;Ҷумҳурии Тоҷикистон</p>
', N'1426844534_kulob1.jpg', CAST(N'2015-04-13 21:28:32.000' AS DateTime), CAST(N'2015-03-23 00:00:00.000' AS DateTime), 2, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (9, N'Подписание Соглашения между Республикой Таджикистан и Прави-тельством Швейцарской Конфедерации по проекту «Водоснабжение в Республике Таджикистан, фаза-2»', N'12 марта 2015 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения между Правительством Республики Таджикистан и Правительством Швейцарской Конфедерации по проекту «Водоснабжение в Республике Таджикистан, фаза - 2».', N'<p><strong>12 марта 2015 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения между Правительством Республики Таджикистан и Правительством Швейцарской Конфедерации по проекту &laquo;Водоснабжение в Республике Таджикистан, фаза - 2&raquo;.</p>

<p>&nbsp; Целью проекта &laquo;Водоснабжение в Республике Таджикистан, фаза - 2&raquo; является улучшение систем водоснабжения населения с общей численностью 140 тысяч &nbsp;человек&nbsp; в северных городах Таджикистана и городе Хороге.</p>

<p>&nbsp;Основными компонентами проекта являются:</p>

<p>&nbsp;- установка дополнительных соединений;</p>

<p>&nbsp;- содействие компаниям &nbsp;по обеспечению водоснабжением городов в осуществлении необходимых улучшений;</p>

<p>&nbsp;- установка счетчиков расхода воды;</p>

<p>&nbsp;- приобретение операционного и ремонтного оборудования;</p>

<p>&nbsp;-строительство новых резервуаров для воды;</p>

<p>&nbsp;- ремонт и строительство водозаборов;</p>

<p>&nbsp;- приобретение операционного и ремонтного оборудования;</p>

<p>&nbsp;- гидрологическое исследование;</p>

<p>&nbsp;- улучшение муниципального сбора и очистки сточных вод.<br />
&nbsp;&nbsp; Общая сумма проекта оценивается в размере&nbsp;<strong>18,097 млн. долларов США,&nbsp;</strong>из которых&nbsp;<strong>9,0 млн.</strong>&nbsp;долларов США предоставляются на грантовой основе со стороны Правительства&nbsp;Швейцарской Конфедерации и&nbsp;&nbsp;<strong>9,097 млн. долларов США</strong>&nbsp;средства Европейского Банка Реконструкции Развития<strong>.</strong></p>

<p>&nbsp;</p>

<p><strong>Проект будет реализован до 2018 года.</strong></p>

<p>&nbsp;</p>

<p>&nbsp;&nbsp;Соглашение о предоставлении финансовой помощи подписано со&nbsp; стороны Правительства Республики&nbsp; Таджикистан Министром финансов Республики Таджикистан &ndash;&nbsp; г-ном &nbsp;Курбоновым А. К. и со стороны Правительства Швейцарской Конфедерации Главой&nbsp;Швейцарского Офиса по сотрудничеству в Республике Таджикистан&nbsp;&ndash; г-ном Питером Микулой.</p>

<p>&nbsp;В церемонии подписания приняли участие представители Швейцарского Офиса по сотрудничеству в Республике Таджикистан и Министерства финансов Республики Таджикистана.<br />
&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1426162358_podpisanie.jpg', CAST(N'2015-04-13 21:30:01.717' AS DateTime), CAST(N'2015-03-12 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (10, N'Торжественное собрание, посвящённое празднику «День матери».', N'6 марта 2015 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвящённое празднику «День матери». ', N'<p><strong>6 марта 2015 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвящённое празднику &laquo;День матери&raquo;.&nbsp;&nbsp;<br />
&nbsp;Торжественное собрание вступительным словом открыл&nbsp;Первый заместительМинистра финансов Республики Таджикистан&nbsp;Нуралиев Дж.К. поздравив&nbsp;&nbsp;присутствующих и в их лице&nbsp;&nbsp;всех матерей, женщин и девушек&nbsp;&nbsp;Министерства финансов Республики&nbsp;Таджикистан и подведомственных&nbsp;&nbsp;ему организаций с праздником&nbsp;&nbsp;&laquo;День матери&raquo;, подчеркнул о роли женщин и матери в обществе и семье,&nbsp;&nbsp;которые за годы государственной независимости Таджикистана внесли и вносят свой заметный&nbsp;&nbsp;вклад в развитие&nbsp;нашей страны и &nbsp;пожелал всем &nbsp;прежде всего крепкого здоровья, семейного счастья и благополучия, высоких достижений и успехов в работе.</p>

<p>С докладом, посвящённым женскому празднику, выступил&nbsp;&nbsp;Первый заместитель Министра финансов Республики Таджикистан&nbsp;&nbsp;Нуралиев&nbsp;&nbsp;Дж.К.&nbsp;</p>

<p>&nbsp;Свои поздравления и пожелания также высказали работники Министерства финансов Республики Таджикистан&nbsp;Саидмуродов Б., Абдулназаров Д., Нураллиев А., Хомидов М., Камолов.О.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат&nbsp;</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1426842899_8-mart.jpg', CAST(N'2015-04-13 21:33:26.000' AS DateTime), CAST(N'2015-03-07 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (13, N'Встреча Первого заместителя Министра финансов Республики Таджикистан с помощником заместителя Госсекретаря Соединённых Штатов Америки.', N'6 февраля 2015 года в Министерстве финансов Республики Таджикистан состоялась встреча Первого заместителя Министра финансов Республики Таджикистан Нуралиева Дж.К.  с помощником заместителя Госсекретаря Соединённых Штатов Америки г-ном Даниэлом Розенблюмом. ', N'<p><strong>6 февраля 2015 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась встреча&nbsp;Первого заместителя Министра финансов Республики Таджикистан&nbsp;Нуралиева Дж.К.&nbsp;&nbsp;с&nbsp;помощником заместителя Госсекретаря Соединённых Штатов Америки&nbsp;г-ном Даниэлом Розенблюмом.&nbsp;</p>

<p>В&nbsp;ходе встречи,&nbsp;которая прошла в конструктивной обстановке, состоялся обмен мнениями по актуальным вопросам и перспективам сотрудничества в финансовой и других сферах деятельности, а также были обсуждены приоритеты экономической политики Правительства Республики Таджикистан и вопросы обшей политики.&nbsp;<br />
Стороны уделили особое внимание вопросам энергетического сектора в Таджикистане, в частности относительно технико-экономического обоснования строительства высоковольтной линии электропередач САSA&ndash;1000, отметив, что проект является перспективным и высокоокупаемым и, что данная инициатива является важным и своевременным шагом на пути всестороннего укрепления сотрудничества в регионе.</p>

<p>Также, стороны обсудили вопросы по перспективам строительства Рогунской ГЭС, о пользе и выгодах вступления&nbsp;Республики Таджикистан в ВТО, влиянии санкций против России на экономику Таджикистана и было отмечено о значимостиреализации предстоящих программ и необходимости координации взаимоотношений Таджикистана с Всемирным банком, Азиатским банком развития, МВФ и другими международными финансовыми и банковскими организациями.<br />
Было отмечено, что все меры предпринимаемые Правительством Республики Таджикистан направлены на повышение роста благосостояния народа страны.<br />
Первый заместитель Министра финансов Республики Таджикистан&nbsp;Нуралиев Дж.К. &nbsp;выразив признательность г-ну Даниэлу Розенблюму за содержательную беседу, &nbsp;выразил уверенность в том, что сотрудничество с&nbsp;Соединёнными Штатами Америки&nbsp;и в дальнейшем&nbsp; будет развиваться и расширяться.<br />
На встрече приняли участие: помощник&nbsp;заместителя Госсекретаря Соединённых Штатов Америки по вопросам демократии и правам человека г-н Стивен Фелдштайн&nbsp; и Чрезвычайный и Полномочный Посол Соединённых Штатов Америки в Таджикистане&nbsp;г-жа Сьюзан Эллиот.</p>

<p><br />
<br />
&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong>&nbsp;</p>
', N'1423222846_vstreja06022015.jpg', CAST(N'2015-04-13 21:44:03.327' AS DateTime), CAST(N'2015-02-06 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (14, N'Рабочая встреча по обсуждению Проекта Плана действий Стратегии УГФ на 2015-2018 годы', N'30 января 2015 года в Министерстве финансов Республики Таджикистан состоялась рабочая встреча с донорами по обсуждению Проекта третьего Плана действий Стратегии УГФ на 2015-2018 годы, организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан. Встреча прошла под председательством Руководителя Секретариата Совета УГФ, заместителя Министра финансов Республики Таджикистан  Сохибова  Ш.К. ', N'<p class="c-ext-Select-like-a-Boss"><strong>30 января 2015 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась рабочая встреча с донорами по обсуждению Проекта третьего Плана действий Стратегии УГФ на 2015-2018 годы, организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан. Встреча прошла под председательством Руководителя Секретариата Совета УГФ, заместителя Министра финансов Республики Таджикистан&nbsp;&nbsp;Сохибова&nbsp;&nbsp;Ш.К.&nbsp;</p>

<p>Во время встречи были обсуждены и затронуты вопросы по представленным от доноров комментариям и предложениям, касающиеся Разделов Проекта нового Плана действий. В частности, со стороны доноров было отмечено, что представленный на обсуждение проекта нового Плана является качественным, лаконичным, реалистичным и концентрирует свое внимание на ключевых вопросах.</p>

<p>Обновленный План действий УГФ на период 2015-2018 годы является неотъемлемой частью реализации Стратегии управления государственными финансами на период 2009-2018 годы, утвержденной Правительством Республики Таджикистана. Данный план действий на 2015 &ndash; 2018 годы&nbsp; является очередным и последовательным шагом по выполнению мероприятий предыдущего Плана действий Стратегии УГФ на 2012 &ndash; 2014 годы и включает в себя все реформы УГФ Государственного сектора. Особенностью обновленного Плана действий Стратегии УГФ на период 2015-2018 годы является его увязка с этапами Бюджетного цикла.</p>

<p>Обновленный План действий состоит из 8 разделов:</p>

<p>Раздел 1. Улучшение стратегического планирования и системы подготовки бюджета</p>

<p>Раздел 2. Управление государственным долгом</p>

<p>Раздел 3. Исполнение бюджета и казначейские операции</p>

<p>Раздел 4. Улучшение бухгалтерского учета в государственном секторе</p>

<p>Раздел 5&nbsp; Мониторинг и обратная связь</p>

<p>Раздел 6. Внутренний и внешний аудит</p>

<p>Раздел 7. Модернизация ИКТ МФ РТ</p>

<p>Раздел 8. Управление человеческими ресурсами (УЧР)</p>

<p>&nbsp;</p>

<p>В работе Встречи по обсуждению очередного Проекта Плана действий Стратегии УГФ на 2015-2018 годы приняли участие&nbsp;представители международных финансовых организаций и других заинтересованных сторон: Региональный советник МВФ по вопросам УГФ в странах Центральной Азии и Закавказья г-н Джон Зохраб, представитель ЕК в Таджикистане, г-н Ульрих Тиссен, представитель Швейцарского агентства по развитию (SECO), г-жа Ибрагимова Малика, представители&nbsp;USAID&nbsp;в Таджикистане, г-жа Муниса Вахобова, представители&nbsp;DFID&nbsp;в Таджикистане г-н Шухрат Мирзоев и г-жа Гульнора Мухаммадиева и Счетной Палаты Республики Таджикистан г-н Зиёратшо Бояков и другие.<br />
&nbsp;</p>

<p><strong>Для дальнейшей информации обращайтесь:</strong>&nbsp;</p>

<p><strong>Секретариат&nbsp; Совета УГФ</strong></p>

<p>Улугбек&nbsp;Каюмов</p>

<p>Tel: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +992-372-221-04-02</p>

<p>Mob: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +992-93-515-55-22</p>

<p>e-mail: &nbsp;&nbsp;&nbsp;&nbsp;u.kayumov@pfms.tj<br />
&nbsp;</p>

<p><strong>Примечание:</strong>&nbsp;</p>

<p>1.&nbsp;<strong>Координационный совет по вопросам управления государственными финансами</strong>&nbsp;был сформирован Указом Президента Республики Таджикистан&nbsp; от 16 сентября 2008 года № 542. Координационный совет является консультативно-совещательным органом, ответственным за разработку Стратегии управления государственными финансами (УГФ), Плана действий и за проведение реформы&nbsp; управления государственными финансами в рамках одобренной &nbsp;Стратегии УГФ. Председателем Координационного Совета УГФ является Министр финансов Республики Таджикистан &nbsp;Курбонов А.К. &nbsp;Для эффективного функционирования Координационного Совета УГФ был образован Секретариат Совета&nbsp;УГФ руководителем, которого является Заместитель министра финансов Республики Таджикистан &nbsp;Сохибов Ш.К.&nbsp;<br />
<br />
&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong>&nbsp;</p>
', N'1422853739_vstreja-2015.jpg', CAST(N'2015-04-13 21:45:25.010' AS DateTime), CAST(N'2015-02-02 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (15, N'Коллегия в Министерстве финансов Республики Таджикистан по итогам 2014 года', N' 24 января 2015 года в Министерстве финансов Республики Таджикистан прошла расширенная коллегия по итогам 2014 года.', N'<p><strong>&nbsp;24 января 2015 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан прошла расширенная коллегия по итогам 2014 года.</p>

<p>&nbsp;По вопросу повестки дня &laquo;Об итогах финансовой деятельности и исполнения Государственного бюджета Республики Таджикистан в 2014 году и задачах по эффективному развитию и управлению&nbsp; государственными&nbsp; финансами в 2015 году с докладом выступил Первый заместитель Министра финансов Республики Таджикистан Нуралиев Дж.К.&nbsp;</p>

<p>&nbsp;На коллегии были заслушаны отчёты руководителей финансовых управлений областей, городов и районов страны и других подведомственных организаций Министерства финансов Республики Таджикистан о проделанной работе в 2014 отчётном году и предстоящих задачах в 2015 году. На коллегии свои мнения, предложения и пожелания высказали руководители ряда министерств и ведомств&nbsp; страны.</p>

<p>&nbsp;По вопросам повестки дня, с учётом замечаний и предложений были&nbsp; приняты соответствующие решения.&nbsp;</p>

<p>&nbsp;Подводя итоги коллегии, Министр финансов Республики Таджикистан Курбонов А.К. дал ответственным работникам системы Министерства финансов Республики Таджикистан конкретные задания, требующие своевременного и качественного исполнения Государственного бюджета в 2015 году, подчеркнув о том, что все руководители финансовых органов и подведомственных организаций министерства должны приложить максимум усилий для выполнения задач, поставленных Правительством Республики Таджикистан и вытекающих из Послания Президента Республики Таджикистан уважаемого Эмомалї Рахмона Парламенту страны, прошедшего накануне 23 января 2015 года.&nbsp;</p>

<p>&nbsp;На заседании коллегии приняли участие: Первый заместитель Министра экономического развития и торговли Республики Таджикистан&nbsp;<strong>Негматулло Хикматуллозода,</strong>&nbsp;Первый заместитель Председателя Налогового комитета при Правительстве Республики Таджикистан&nbsp;<strong>Солехзода Аюбджон Маъруф,</strong>Первый заместитель Руководителя Таможенной службы при Правительстве Республики Таджикистан<strong>Рахматов Н.С.</strong>&nbsp;&nbsp;</p>

<p><br />
&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1422342877_kollegiya.jpg', CAST(N'2015-04-13 21:46:54.017' AS DateTime), CAST(N'2015-01-27 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (16, N'Послание Президента Республики Таджикистан Эмомали Рахмона к Маджлиси Оли Республики Таджикистан', N'  23 января 2015 года  Президент  Республики  Таджикистан   обратился с  очередным  Посланием к Парламенту страны. ', N'<p><strong>&nbsp;23 января 2015 года</strong>&nbsp; Президент&nbsp; Республики&nbsp; Таджикистан&nbsp;&nbsp; обратился с&nbsp; очередным&nbsp; Посланием к Парламенту страны.&nbsp;</p>

<p>&nbsp;В соответствии с Конституцией (Основным законом) Республики Таджикистан, Послание Президента страны заслушивается на совместном заседании обеих палат парламента - Маджлиси Милли и Маджлиси намояндагон Маджлиси Оли Республики Таджикистан.</p>

<p>&nbsp;В работе&nbsp; совместного заседания Маджлиси&nbsp; милли и &nbsp;Маджлиси намояндагон Маджлиси Оли Республики Таджикистан приняли участие члены&nbsp; Маджлиси милли, депутаты Маджлиси намояндагон, члены Правительства Республики Таджикистан, руководители министерств и ведомств страны, представители &nbsp;дипломатического корпуса, &nbsp;аккредитованные в Республике Таджикистан, международные организации, а также отечественные и зарубежные СМИ.</p>

<p>&nbsp;&nbsp;Послании&nbsp; Президента Республики Таджикистан Эмомали Рахмона к Маджлиси Оли Республики Таджикистан &nbsp;были отражены основные&nbsp; направления внутренней и внешней политики страны,&nbsp; а также&nbsp; политические, экономические, социальные, научные и&nbsp; культурные сферы.</p>

<p>&nbsp;В этот знаменательный день, коллективы работников Министерства финансов Республики Таджикистан и подведомственных ему организаций с большим интересом и воодушевлением приняли участие в просмотре в прямом эфире таджикского телевидения Послания Президента страны&nbsp; Парламенту Республики Таджикистан.&nbsp;<br />
&nbsp;После просмотра прямой трансляции по телевидению Послания Президента Республики Таджикистан Эмомали Рахмона к Парламенту страны, своими мнениями и впечатлениями поделился с представителями средств массовой информации&nbsp;начальник Управления мониторинга финансово-хозяйственной деятельности крупных государственных предприятй Министерства финансов Республики Таджикистан Самиев С.Х.&nbsp;</p>

<p><br />
<strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong>&nbsp;</p>
', N'1421999266_pajom1.jpg', CAST(N'2015-04-13 21:48:41.000' AS DateTime), CAST(N'2015-01-23 00:00:00.000' AS DateTime), 2, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (17, N'Пресс-конференция в Министерстве финансов Республики Таджикистан с представителями средств массовой информации по итогам деятельности в 2014 году', N'23 января 2015 года в Министерстве финансов Республики Таджикистан состоялась  пресс-конференция  с представителями  средств  массовой информации.', N'<p><strong>23 января 2015 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась&nbsp;&nbsp;пресс-конференция&nbsp;&nbsp;с представителями&nbsp;&nbsp;средств&nbsp;&nbsp;массовой информации.</p>

<p>&nbsp;Пресс-конференцию&nbsp;вступительным&nbsp;словом&nbsp;открыл заместитель Министра финансов Республики Таджикистан Сохибов Ш.К., проинформировав журналистов об итогах финансовой деятельности и исполнения Государственного бюджета Республики Таджикистан в 2014 году и задачах по эффективному развитию и управлению государственными финансами&nbsp; в 2015 году.</p>

<p>&nbsp;Представители средств массовой информации обратились к заместителю Министра финансов Республики Таджикистан&nbsp;Сохибову Ш.К. с интересующими их вопросами, в центре внимания которых, были вопросы, касающиеся использования денежных&nbsp;средств Рогунской ГЭС,&nbsp;внутреннего и внешнего долга Республики Таджикистан, о ходе и сроках его&nbsp;обслуживания, вопросы деятельности и финансирования РГУП &laquo;Таджикагролизинг&raquo;.</p>

<p>&nbsp;Также журналистами были заданы вопросы, касающиеся макроэкономических показателей, выплаты заработной платы работникам бюджетных организаций,&nbsp;вопросы подушевого финансирования социальной сферы, и по ряду других вопросов по различным&nbsp; направлениям&nbsp; сферы деятельности Министерства финансов, на каждый из которых был дан подробный ответ и соответствующие разъяснения.&nbsp;<br />
&nbsp; Подводя итоги пресс-конференции, заместитель Министра финансов Республики Таджикистан Сохибов Ш.К. поблагодарил&nbsp;журналистов за активное участие и призвал представителей средств массовой&nbsp;информации&nbsp;к более тесному сотрудничеству, подчеркнув&nbsp;о том, что каждый журналист&nbsp;в любое&nbsp;время&nbsp; может обратиться по интересующей&nbsp;их информации&nbsp;в Министерство финансов Республики Таджикистан&nbsp;в удобной для них форме: в письменной, в виде диалога или через сайт Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1421998307_konf.jpg', CAST(N'2015-04-13 21:50:05.617' AS DateTime), CAST(N'2015-01-23 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (18, N'Подписание Соглашений между Республикой Таджикистан и Европей-ским Банком Реконструкции и Развития', N'24 декабря 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Кредитного Соглашения между Министерством финансов Республики Таджикистана и Европейским Банком Реконструкции и Развития.  ', N'<p><strong>&nbsp;24 декабря 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась церемония подписания Кредитного Соглашения между ГУП &laquo;Хочагии манзилию коммунали&raquo;, ГДУП &laquo;Хочагии манзилию коммунали города Хорога&raquo; и Европейским Банком Реконструкции и Развития, Соглашение об оказании поддержки проекту между Горно-Бадахшанской Автономной Области, городом Хорог,&nbsp;ГУП &laquo;Хочагии манзилию коммунали&raquo;, ГДУП &laquo;Хочагии манзилию коммунали города Хорог&raquo; и банком&nbsp;а также Соглашения по предоставлению Гарантии Правительством Республики Таджикистан&nbsp;<strong>по проекту &laquo;Улучшение системы водоснабжения Таджикистана фаза 2 &ndash; город Хорог&raquo;&nbsp;</strong>и Кредитного Соглашения между&nbsp;ГУП &laquo;Хочагии манзилию коммунали города Нурек&raquo;&nbsp;и Европейским Банком Реконструкции и Развития, грантового соглашения между Правительством Республики Таджикистан,&nbsp;ГУП &laquo;Хочагии манзилию коммунали города Нурек&raquo; иЕвропейским Банком Реконструкции и Развития, Соглашение об оказании поддержки проекту между городом Нурек&nbsp;и банком, а также Соглашение по предоставлению Гарантии Правительством Республики Таджикистан&nbsp;<strong>по проекту &laquo;Управление твердо-бытовыми отходами города Нурек&raquo;</strong>.</p>

<p>&nbsp;Общая сумма&nbsp;<strong>Проекта &laquo;Улучшение системы водоснабжения Таджикистана фаза 2 &ndash; город Хорог&raquo;</strong>&nbsp;оценивается в размере 5<strong>,7 млн. долларов США,&nbsp;</strong>из которых кредитные средства ЕБРР составляет 2<strong>,0</strong>&nbsp;<strong>млн. долларов США.&nbsp;</strong>В качестве дополнительного источника предусматривается финансирование на грантовой основе со стороны&nbsp;SECO&nbsp;в &nbsp;размере&nbsp;<strong>2,0 млн. долларов США&nbsp;</strong>и<strong>&nbsp;1,7 млн. долларов США&nbsp;</strong>в виде<strong>&nbsp;т</strong>ехнической помощи.</p>

<p>&nbsp;Общая сумма&nbsp;<strong>&laquo;Управление твердо-бытовыми отходами города Нурек&raquo;</strong>оценивается в размере&nbsp;<strong>5,3 млн. долл. США</strong>, из которых&nbsp;<strong>кредитные</strong>&nbsp;средстваЕвропейского Банка Реконструкции и Развития&nbsp;составляют&nbsp;<strong>2,0</strong>&nbsp;<strong>млн. долларов США.</strong>В качестве поддержки проекта предусматривается финансирование&nbsp;<strong>2,0</strong>&nbsp;<strong>млн. долларов США</strong>&nbsp;на грантовой основе со стороны&nbsp;Европейского Банка Реконструкции и Развития&nbsp;и<strong>&nbsp;1,3 млн. долларов США&nbsp;</strong>в виде<strong>&nbsp;т</strong>ехнической помощи.</p>

<p><strong>Проекты будут реализовываться до 2018 года.</strong></p>

<p>Соглашение о предоставлении Гарантии по проекту&nbsp;<strong>&laquo;Улучшение системы водоснабжения Таджикистана фаза 2 &ndash; город Хорог&raquo;</strong>&nbsp;подписано Министром финансов Республики Таджикистан &ndash; г-ном Курбоновым А. К. и Главой представительства ЕБРР в Республике Таджикистан &ndash; г-ном Ричардом Джонсом.</p>

<p>&nbsp;Кредитное Соглашение подписано Генеральным директором ГУП &laquo;Хочагии манзилию коммунали&raquo; - г-ном Тагаймуродовым А., Генеральным директором ГДУП &laquo;Хочагии манзилию коммунали города Хорога&raquo; - г-ном Суфишоевым М. и Главой представительства ЕБРР в Республике Таджикистан &ndash; г-ном Ричардом Джонсом.</p>

<p>&nbsp;Соглашение об оказании поддержки проекта подписано председателем города Хорог - г-ном Алибердиевым К, &nbsp;председателем ГБАО &ndash; г-ном Джамшедовым Ш., Генеральным директором ГУП &laquo;Хочагии манзилию коммунали&raquo; - г-ном Тагаймуродовым А. и Главой представительства ЕБРР в Республике Таджикистан&ndash; г-ном Ричардом Джонсом.</p>

<p>&nbsp;Соглашение о предоставлении Гарантии для проекта&nbsp;<strong>&laquo;Управление твердо-бытовыми отходами города Нурек&raquo;</strong>&nbsp;подписано Министром финансов Республики Таджикистан - г-ном А. Курбоновым и Главой Представительства ЕБРР в Душанбе г-ном&nbsp;Ричардом Джонсом.</p>

<p>&nbsp;Грантовое&nbsp;Соглашение по данному проекту было подписано Министром финансов Республики Таджикистан - г-ном А. Курбоновым, председателем ГУП &laquo;Хочагии манзилию коммунали города Нурек&raquo; г-ном С. Джураевым&nbsp;и Главой Представительства ЕБРР в Душанбе г-ном&nbsp;Ричардом Джонсом.</p>

<p>Кредитное Соглашение было подписано председателем ГУП &laquo;Хочагии манзилию коммунали города Нурек&raquo;&nbsp;г-ном С. Джураевым и Главой&nbsp;Представительства ЕБРР в г. Душанбе г-ном&nbsp;Ричардом Джонсом.</p>

<p>&nbsp; Соглашение об оказании поддержки подписано Председателем&nbsp;города Нурек г-ном Раджабзода М.&nbsp;&nbsp;&nbsp;и Главой Представительства ЕБРР в г. Душанбе г-ном&nbsp;Ричардом Джонсом.</p>

<p>&nbsp;В церемонии подписания приняли участие представители ЕБРР, Министерства финансов Республики Таджикистана, ГУП &laquo;Хочагии манзилию коммунали&raquo;, представители ГБАО и города Хорог,&nbsp;ГУП &laquo;Хочагии манзилию коммунали города Нурек&raquo;&nbsp;и председатель города Нурек.</p>

<p>&nbsp;</p>

<p><strong>Секретариат&nbsp;</strong></p>

<p><strong><strong>Министерства финансов</strong><br />
<strong>Республики Таджикистан</strong></strong></p>
', N'1419481284_ba-imzorasoni.jpg', CAST(N'2015-04-13 21:54:56.000' AS DateTime), CAST(N'2014-12-25 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (19, N'Торжественное собрание, посвященное «Дню профессионального праздника работников финансовой системы Республики Таджикистан»', N'5 декабря 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню профессионального праздника работников финансовой системы Республики Таджикистан».', N'<p><strong>5 декабря 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное&nbsp;&laquo;Дню профессионального праздника работников финансовой системы Республики Таджикистан&raquo;.</p>

<p>Первый заместитель Министра финансов Республики Таджикистан&nbsp;<strong>Нуралиев Дж. К.</strong>поздравил коллективы Министерства финансов Республики Таджикистан и подведомственных ему организаций c профессиональным праздником финансистов, пожелав всем успехов в работе, здоровья и счастья в личной и семейной жизни.&nbsp;</p>

<p>&nbsp;С докладом, посвященным &laquo;Дню профессионального праздника работников финансовой системы Республики Таджикистан&raquo; выступил Первый заместитель Министра финансов Республики Таджикистан&nbsp;<strong>Нуралиев Дж. К.,&nbsp;</strong>подробно осветив этапы деятельности финансовой системы страны, её развития, достигнутых успехов в осуществлении финансовой политики, выражающихся в обеспечении повышения уровня благосостояния народа Республики Таджикистан.</p>

<p>В своем выступлении&nbsp;<strong>Нуралиев Дж.К.</strong>&nbsp;отметил, что этот праздник отмечается в стране начиная с 2011 &nbsp;года, согласно Закона Республики Таджикистан &laquo;О праздничных днях&raquo;, в который были внесены изменения и определена дата&nbsp;<strong>7 декабря.</strong></p>

<p>На торжественном собрании приняли участие и выступили с поздравительными посланиями Министр экономического развития и торговли Республики Таджикистан<strong>Рахимзода Ш.М.,</strong>&nbsp;Председатель Национального Банка Таджикистана&nbsp;<strong>Ширинов А.Ш.,</strong>&nbsp;Председатель Налогового комитета при Правительстве Республики Таджикистан&nbsp;&nbsp;<strong>Давлатзода Н.М.,</strong>&nbsp;&nbsp;Начальник Управления&nbsp;&nbsp;финансов Исполнительного Аппарата Президента Республики Таджикистан&nbsp;<strong>Джабборзода О.А.,&nbsp;</strong>Председатель ГСБ РТ ,,Амонатбонк&rdquo;&nbsp;<strong>Нурмахмадзода Дж. Н.,</strong>&nbsp;Заместитель Руководителя таможенной службы&nbsp;при Правительстве Республики Таджикистан<strong>Махмадов Н.Ш.,</strong>&nbsp;которые поздравили коллективы Министерства финансов Республики Таджикистан и подведомственных ему организаций и учреждений с &laquo;Днем профессионального праздника работников финансовой системы Республики Таджикистан&raquo;.&nbsp;</p>

<p>В заключении торжественного собрания Первый заместитель Министра финансов Республики Таджикистан&nbsp;<strong>Нуралиев Дж. К.&nbsp;</strong>еще раз поздравил участников собрания c профессиональным праздником финансистов и выразил уверенность в том, что работники финансовой системы страны приложат все свои усилия для выполнения задач, вытекающих из указаний и требований Президента страны уважаемого Эмомали Рахмона и Правительства Республики Таджикистан и добьются высоких результатов в своей повседневной работе.&nbsp;</p>

<p><br />
<br />
<strong>Секретариат&nbsp;<br />
Министерства финансов<br />
Республики Таджикистан</strong></p>
', N'1418310678_torjestvevoniy.jpg', CAST(N'2015-04-13 21:59:34.630' AS DateTime), CAST(N'2014-12-11 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (20, N'Торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан»', N'24 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан».', N'<p>&nbsp;<strong>24 ноября 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное &laquo;Дню Государственного Флага Республики Таджикистан&raquo;.</p>

<p>&nbsp;Первый заместитель Министра финансов Республики Таджикистан Нуралиев Дж.К., открыв торжественное собрание, поздравил коллективы Министерства финансов и подведомственных ему организаций&nbsp; &nbsp;с этой знаменательной датой, пожелав всем успехов и высоких результатов в работе, в частности, отметил о значимости &laquo;Дня Государственного Флага Республики Таджикистан&raquo;, который ежегодно отмечается в стране 24 ноября.</p>

<p>&nbsp;Цвета нашего национального флага, отметил Нуралиев Дж.К., выражают исторический путь народа Таджикистана, ценностей национальной культуры и политики.&nbsp;<strong>Красный цвет</strong>&nbsp;&ndash; символ борьбы, самоотверженности народа за свободу и независимость,&nbsp;<strong>белый цвет</strong>&nbsp;&ndash; символ счастья, чаяния и надежды и&nbsp;<strong>зеленый цвет</strong>&nbsp;&ndash; символ процветания, гордости и вечности. На середине флага расположено изображение короны и семи звезд, что является знаком исторических корней государственности независимого Таджикистана.</p>

<p>&nbsp;&nbsp;На&nbsp;собрании своих коллег поздравили сотрудники министерства: Сатторова Шахло, Гиёсов Парвиз, Курбонов Саади, Хомидов Миршохид, Чиллаев Сулаймон.</p>

<p>&nbsp;В заключении торжественного собрания Первый заместитель Министра финансов Республики Таджикистан Нуралиев Дж.К., выразил признательность работникам министерства за содержательные выступления, отметив, что &laquo;День Государственного Флага Республики Таджикистан&raquo; отмечается в стране, как одно из исторических и знаменательных событий в жизни таджикского народа и страны, целью которого является дань уважения и почитания к этому государственному атрибуту.</p>

<p>&nbsp;<br />
<strong>Секретариат&nbsp;<br />
Министерства финансов&nbsp;<br />
Республики Таджикистан</strong></p>
', N'1416829350_parcham.jpg', CAST(N'2015-04-13 22:01:01.080' AS DateTime), CAST(N'2014-11-24 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (21, N'«Выставка «Зелёная энергетика»', N'20 ноября 2014 года в г. Душанбе в государственном комплексе «Кохи Борбад» открылась  трехдневная выставка «Зелёная энергетика».
Данное мероприятие организовано Министерством финансов Республики Таджикистан при поддержке Азиатского Банка Развития.', N'<p><strong>&nbsp; 20 ноября 2014 года</strong>&nbsp;в г. Душанбе в государственном комплексе &laquo;Кохи Борбад&raquo; открылась &nbsp;трехдневная выставка &laquo;Зелёная энергетика&raquo;.<br />
Данное мероприятие организовано Министерством финансов Республики Таджикистан при поддержке Азиатского Банка Развития.</p>

<p>&nbsp;На выставке представлена продукция около 60 отечественных и зарубежных компаний, производящих теплоизоляционные материалы, различные отопительные и водонагревательные энергосберегающие приборы.</p>

<p>&nbsp;Выступая на церемонии открытия выставки, заместитель Министра финансов Республики Таджикистан Мехринамо Джонмамадова отметила, что данное мероприятие организовано в рамках реализации проекта по доступу к зелёному финансированию. По ее словам, проект направлен на организацию энергоэффективных, экономных и экологически чистых домов посредством выделения микрокредитов домохозяйствам. Она подчеркнула, что Министерством финансов Республика Таджикистан создан Фонд зелёного финансирования, которому Азиатский Банк Развития выделил грант в размере 8,8 млн. долларов США.&nbsp;</p>

<p>&nbsp;Население и малые предприятия Таджикистана будут обеспечены кредитами из этого Фонда посредством микрофинансовых организаций, для закупки энергоэффективной продукции.</p>

<p>&nbsp;Средства по проекту &laquo;Доступ к зелёному финансированию возобновляемых источников энергии&raquo;, отметил руководитель Проекта Ахлиддин Убайдуллоев, будут выделяться не всем микрозаёмным организациям, а лишь тем, которые подходят по всем критериям АБР. Главными критериями по его словам, являются финансовая стабильность, прозрачность, надёжный уставной капитал и потенциал.</p>

<p>&nbsp;В церемонии открытия выставки приняли участие&nbsp; Постоянный&nbsp; Представитель Азиатского Банка Развития в Таджикистане&nbsp; г-н&nbsp; Си Си Ю, Чрезвычайный &nbsp;и Полномочный Посол Японии&nbsp; в Республике Таджикистан&nbsp; г-н&nbsp; Хироюки Имахаши, а также представители отечественных и зарубежных средств массовой&nbsp; информации аккредитованных в Таджикистане.&nbsp;&nbsp;Данная выставка будет принимать &nbsp;посетителей до 23 ноября текущего года.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1416640689_321.jpg', CAST(N'2015-04-13 22:02:35.000' AS DateTime), CAST(N'2014-11-22 00:00:00.000' AS DateTime), 4, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (22, N'Парламентом Таджикистана принят проект Закона «О Государственном бюджете Республики Таджикистан на 2015 год»', N'19 ноября 2014 года под председательством спикера Маджлиси намояндагон Маджлиси Оли (нижняя палата парламента) Республики Таджикистан Шукурджона Зухурова состоялось очередное заседание шестой сессии четвертого созыва Маджлиси намояндагон Маджлиси Оли Республики Таджикистан, на котором был принят законопроект «О Государственном бюджете Республики Таджикистан на 2015 год». ', N'<p><strong>&nbsp;19 ноября 2014 года</strong>&nbsp;под председательством спикера Маджлиси намояндагон Маджлиси Оли (нижняя палата парламента) Республики Таджикистан Шукурджона Зухурова состоялось очередное заседание шестой сессии четвертого созыва Маджлиси намояндагон Маджлиси Оли Республики Таджикистан, на котором был принят законопроект &laquo;О Государственном бюджете Республики Таджикистан на 2015 год&raquo;.&nbsp;</p>

<p>&nbsp;Выступая по данному вопросу, Министр финансов Республики Таджикистан Абдусалом Курбонов отметил, что по прогнозам Правительства, Валовой внутренний продукт в 2015 году, запланирован в объеме 52 млрд. 821 млн. сомони, увеличение объема производства в реальном исчислении на уровне 7,2%, уровень инфляции - на 7,5% и индекса дефлятора - на 6,3%. Дефицит бюджета на будущий год составит 0,5% от общего объема ВВП страны.</p>

<p>&nbsp; На обслуживание внутреннего и внешнего долга Республики Таджикистан в будущем году будет направлено 873,1 млн. сомони.&nbsp;</p>

<p>&nbsp; Общий объем доходов государственного бюджета на 2015 год, отметил &nbsp;Министр финансов, предусмотрен в размере 15 млрд. 278 млн. сомони, что на 10% или же на 1 млрд. 377 млн. сомони больше по сравнению с 2014 годом.</p>

<p>&nbsp; Министр финансов Республики Таджикистан Курбонов А.К подчеркнул, что Государственный бюджет в 2015 году сохранит свой социальный характер, ибо более 50% общих расходов бюджета приходится на социальные сферы страны, и этот показатель на 12,4% больше по сравнению&nbsp; с 2014 годом.</p>

<p>&nbsp;Только на повышение заработных плат, пенсий и стипендий будет направлено свыше 400 млн. сомони.</p>

<p>&nbsp; Затем, на вопросы депутатов и спикера нижней палаты Парламента Таджикистана Шукурджона Зухурова, Министр финансов Республики Таджикистан Курбонов А.К. дал аргументированные ответы и разъяснения.</p>

<p>&nbsp;Выслушав все мнения, депутаты Маджлиси намояндагон Маджлиси Оли поддержали законопроект &laquo;О Государственном бюджете Республики Таджикистан на 2015 год&raquo; и единодушно проголосовали за него.</p>

<p><br />
<br />
&nbsp;<strong>Секретариат</strong><br />
<strong>Министерства финансов&nbsp;</strong><br />
<strong>Республики Таджикистан</strong>&nbsp;</p>
', N'1416399001_parlament111.jpg', CAST(N'2015-04-13 22:04:50.000' AS DateTime), CAST(N'2014-11-19 00:00:00.000' AS DateTime), 2, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (23, N'Встреча Министра финансов Республики Таджикистан с миссией Международного Валютного Фонда', N'12 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'<p><strong>&nbsp;12 ноября 2014</strong>&nbsp;<strong>года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией&nbsp;Международного Валютного Фонда&nbsp;под руководством Главы миссии г-ном Джонатаном Данном.</p>

<p>&nbsp;Встреча прошла в конструктивной обстановке, в ходе которой&nbsp; стороны заслушали обзор фискальной ситуации в Таджикистане на сегодняшний день и её развитие до конца 2014 года, а также общий обзор перспектив развития экономической ситуации и рисков в Таджикистане &ndash; рост экономики, обменный курс, экспорт, импорт.</p>

<p>&nbsp;В центре внимания были вопросы планов на бюджет 2015 года исходя из экономических прогнозов &ndash; приоритетные расходы, ожидаемые доходы, планируемый дефицит и источники его финансирования.&nbsp;</p>

<p>&nbsp;Глава миссии г-н Джонатан Данн поделился своими мнениями по поводу намеченных миссией целей и задач, представив свои рекомендации и предложения.</p>

<p>&nbsp;Одновременно миссия&nbsp;проводит необходимые обсуждения по основным направлениям экономической политики&nbsp; с соответствующими управлениями Министерства&nbsp; финансов Республики Таджикистан.<br />
&nbsp;Стороны уделили особое внимание вопросам финансово-налоговой и банковской политики,&nbsp; в частности&nbsp; вопросам, касающихся решения проблем оздоровления деятельности &nbsp;Агроинвестбанка, мониторинга государственных предприятий, фискальных рисков финансового сектора и сектора государственных предприятий, а также &nbsp;взаимоотношений&nbsp; Республики Таджикистан с другими международными финансовыми и банковскими организациями.</p>

<p>&nbsp;&nbsp;Министр финансов Республики Таджикистан г-н Курбонов А. К. выразив признательность Главе миссии г-ну Джонатану Данну, отметил, что за время сотрудничества с Международным Валютным Фондом, в особенности в части проведения реформ в финансовых секторах Республики Таджикистан достигнут значительный прогресс, и выразил уверенность в том, что сотрудничество с&nbsp; Международным Валютным Фондом&nbsp; и в дальнейшем&nbsp; будет развиваться и расширяться на конструктивной основе.</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1415847747_vstrecha.jpg', CAST(N'2015-04-13 22:06:01.010' AS DateTime), CAST(N'2014-11-13 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (24, N'Торжественное собрание, посвященное 20- й годовщине Конституции Республики Таджикистан', N'4 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное 20-й годовщине Конституции Республики Таджикистан.', N'<p>&nbsp;<strong>4 ноября 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное 20-й&nbsp;годовщине Конституции Республики Таджикистан.</p>

<p>&nbsp; Первый заместитель Министра финансов Республики Таджикистан Нуралиев Дж.К., открыв торжественное собрание, поздравил коллективы Министерства финансов Республики Таджикистан и подведомственных ему организации с этой знаменательной датой, пожелал всем успехов в работе и отметил о значимости &laquo;Дня Конституции&raquo;, который является одним из знаменательных событий&nbsp; в жизни таджикского народа и страны.</p>

<p>&nbsp; С докладом, посвященным 20й&nbsp;годовщине Конституции Республики Таджикистан выступил начальник юридического отдела министерства Саидмуродов&nbsp; Б.Б.</p>

<p>&nbsp;На собрании своих коллег поздравили сотрудники министерства: Хакимов И.Р.,Одинаев Р.С., Мухиддинова Ф., Авганов Т.Ё., Хомидов М., Махсудова О., Хикматова М. Каримов С.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>&nbsp;Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1415327652_6-nojabr.jpg', CAST(N'2015-04-13 22:07:09.107' AS DateTime), CAST(N'2014-11-07 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (25, N'Коллегия в Министерстве финансов Республики Таджикистан по итогам 9-ти месяцев 2014 года', N'17 октября 2014 года в Министерстве финансов Республики Таджикистан cсостоялась коллегия министерства, на которой был рассмотрен вопрос:  «Об итогах исполнении Государственного бюджета Республики Таджикистан за 9 месяцев 2014 года и  задачах по эффективному развитию и управлению  государственными  финансами    на 4-ый квартал 2014 года.»', N'<p>&nbsp;<strong>17&nbsp;октября 2014&nbsp;года</strong>&nbsp;в Министерстве финансов Республики Таджикистанcсостоялась&nbsp;коллегия министерства, на которой был рассмотрен вопрос:&nbsp;&nbsp;<strong>&laquo;Об итогах исполнении Государственного бюджета Республики Таджикистан за 9 месяцев 2014 года и&nbsp; задачах&nbsp;</strong><strong>по эффективному развитию и управлению&nbsp; государственными&nbsp; финансами&nbsp; &nbsp;&nbsp;на 4-ый квартал 2014 года.&raquo;</strong></p>

<p>&nbsp;По данному вопросу повестки дня с докладом выступил первый заместитель Министра финансов Республики Таджикистан&nbsp;<strong>Нуралиев Дж.К.</strong></p>

<p>&nbsp;На коллегии были заслушаны отчёты руководителей финансовых управлений областей, городов и районов страны и других подведомственных организаций Министерства финансов Республики Таджикистан о проделанной работе за 9-месяцев &nbsp;2014 года и предстоящих задачах на 4-квартал &nbsp;2014 года.</p>

<p>На коллегии свои мнения, предложения и пожелания высказали руководители ряда министерств и ведомств&nbsp;республики.</p>

<p>По вопросу повестки дня с учётом замечаний и предложений приняты&nbsp;&nbsp; соответствующие решения.</p>

<p>&nbsp;Подводя итоги коллегии, Министр финансов Республики Таджикистан&nbsp;<strong>Курбонов А.К</strong>&nbsp;дал ответственным работникам системы Министерства финансов страны конкретные задания, требующие неотлагательного решения, в частности своевременного и качественного исполнения Государственного бюджета в четвёртом квартале и 2014 году в целом.</p>

<p>&nbsp;&nbsp;В работе коллегии приняли участие начальник Управления&nbsp; финансов исполнительного Аппарата&nbsp;Президента Республики Таджикистан&nbsp;<strong>Джаборзода О.А.,</strong>заместитель Председателя Налогового Комитета при Правительстве Республики Таджикистан&nbsp;&nbsp;<strong>Джаборов Р.Т.,&nbsp;</strong>заместитель Начальника таможенной службы&nbsp;при Правительстве Республики Таджикистан<strong>&nbsp;&nbsp;Махмадов Н.Ш.</strong><br />
<br />
<br />
&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1413612661_kollegija.jpg', CAST(N'2015-04-13 22:11:06.210' AS DateTime), CAST(N'2014-10-18 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (26, N'Регулярная встреча по вопросам управления государственными финансами', N'15 октября 2014 года в Министерстве финансов Республики Таджикистан состоялась очередная встреча по вопросам управления государственными финансами (УГФ), организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан с участием доноров. Встреча прошла под председательством Руководителя Секретариата Совета УГФ, заместителя министра финансов Республики Таджикистан Ш. К. Сохибова.', N'<p><strong>&nbsp;15 октября 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась очередная встреча по вопросам управления государственными финансами (УГФ), организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан с участием доноров. Встреча прошла под председательством Руководителя Секретариата Совета УГФ, заместителя министра финансов Республики Таджикистан Ш. К. Сохибова.<br />
&nbsp;&nbsp;Встреча была посвящена Прогрессу реализации Плана действий Стратегии УГФ 2012-2014 годы за 3-й квартал 2014 года. С презентацией о ходе реализации Плана действий Стратегии УГФ на период 2012-2014 годы за 3-й квартал 2014 года, выступил г-н Майкл Пэрри, международный консультант Секретариата Совета УГФ Министерства финансов &nbsp;Республики Таджикистан. С презентацией о прогрессе реализации Раздела 4. Внутренний аудит&nbsp;Плана действий Стратегии УГФ на период 2012-2014 годы, выступил Аминов А., начальник отдела Управления внутреннего аудита и контроля Министерства финансов Республики Таджикистан. Также, участникам встречи была представлена презентация о прогрессе реализации Раздела 4. (Подразделы 4.1. и 4.2.) Плана действий Стратегии УГФ на период 2012-2014 годы представителя Секретариата Комитета по экономике и финансам Маджлиси Намояндагон Маджлиси Милли, г-жи Боруновой Л. и презентация представителя Счетной Палаты Республики Таджикистан, Кучакшоева А., о прогрессе реализации Раздела 4. (Подраздел 4.1.) Внутренний и внешний аудит Плана действий Стратегии УГФ на период 2012-2014 годы.</p>

<p>&nbsp; В работе Встречи по вопросам управления государственными финансами приняли участие ответственные работники&nbsp;Министерства финансов Республики Таджикистан;&nbsp;представители международных финансовых организаций: представители Всемирного Банка в Таджикистане Хасан Алиев, представитель ЕК в Таджикистане, Ульрих Тиссен, аналитик представительства МВФ в Таджикистане, Зухро Курбанова, представитель Швейцарского агентства по развитию (SECO), Ибрагимова Малика, представители&nbsp;USAID&nbsp;в Таджикистане, Майкл Брадов, Муниса Вахобова, Региональный представитель МВФ по Средней Азии, Джон Зохраб, международные консультанты Майкл Пэрри, Джордж Британ, представители Секретариата по усилению потенциала Комитета по экономики и финансам Маджлиси Намояндагони Маджлиси Оли Республики Таджикистан Рахима Туйчиева, Людмила Борунова и Счетной Палаты Республики Таджикистан Кучакшоев Акрамхон и другие.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Для дальнейшей информации обращайтесь:</strong></p>

<p>&nbsp;</p>

<p><strong>Секретариат&nbsp;&nbsp;Совета УГФ</strong></p>

<p>Улугбек&nbsp;Каюмов</p>

<p>Tel:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+992-372-221-04-02</p>

<p>Mob:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+992-93-515-55-22</p>

<p>e-mail:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u.kayumov@pfms.tj</p>

<p>&nbsp;</p>

<p><strong>&nbsp; Примечания</strong></p>

<p>&nbsp;&nbsp;1.&nbsp;<strong>Координационный совет по вопросам управления государственными финансами</strong>&nbsp;был сформирован Указам Президента Республики Таджикистан&nbsp; от 16 сентября 2008 года № 542. Координационный совет является консультативно-совещательным органом, ответственным за разработку Стратегии управления государственными финансами (УГФ), Плана действий и за проведение реформы&nbsp; управления государственными финансами в рамках одобренной &nbsp;Стратегии УГФ. Председателем Координационного Совета УГФ является Министр финансов Республики Таджикистан А.К. Курбонов. Для эффективного функционирования Координационного Совета УГФ был образован Секретариат Совета&nbsp;УГФ руководителем, которого является Заместитель министра финансов Республики Таджикистан Ш.К. Сохибов.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1413453102_16102014.jpg', CAST(N'2015-04-13 22:12:12.757' AS DateTime), CAST(N'2014-10-16 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (27, N'Подписании Грантового соглашения между Японским Агентством международного сотрудничества и Правительством Республики Таджикистан по проекту «Улучшение международного аэропорта г. Душанбе»', N'29 сентября 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания грантового Соглашения по проекту «Улучшение международного аэропорта г.Душанбе» между Республикой Таджикистан и Японским Агентством международного сотрудничества.', N'<p><strong>&nbsp;&nbsp;<strong>29</strong></strong><strong>&nbsp;<strong>сентября</strong><strong>&nbsp;201</strong><strong>4</strong><strong>&nbsp;года</strong></strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась церемония подписания&nbsp;грантового&nbsp;Соглашения по проекту &laquo;Улучшение международного аэропорта г.Душанбе&raquo; между Республикой Таджикистан и Японским Агентством международного сотрудничества.</p>

<p>&nbsp; &nbsp; Целью&nbsp;данного проекта является&nbsp;строительство грузового терминала и установки необходимого оборудования для улучшения способности переработки груза в Международном аэропорту г.Душанбе и увеличение способности управления и приёма воздушных судов в Международном аэропорту г. Душанбе путём установки курсо-глиссадной системы (ILS) и системы освещения точного захода на посадку (PALS) в курсе 27 взлетно-посадочной полосы.</p>

<p><strong>&nbsp; &nbsp; &nbsp;Общая стоимость проекта составляет&nbsp;1,914 млрд. японских йен (</strong><strong>18</strong><strong>,8 млн. долларов США)</strong>, в том числе:</p>

<ul>
	<li>Грант&nbsp;JICA&nbsp;- 18,7&nbsp;млн.долл.США;</li>
</ul>

<p>&middot;&nbsp;&nbsp;вклад Правительства&nbsp;Республики Таджикистан - 0,17 млн. долл. США.&nbsp;</p>

<p><strong><strong>&nbsp; &nbsp; &nbsp;Завершение проекта предполагается в 2016 году.</strong></strong></p>

<p>&nbsp; &nbsp; Соглашение было подписано со стороны Правительства Республики Таджикистан - Министром финансов Республики Таджикистан г-ном А. Курбоновым и со стороныЯпонского Агентства международного сотрудничества - Первым Вице - президентом фонда &nbsp;г-ном Хидеяки Домичи.</p>

<p>&nbsp; &nbsp; &nbsp;В церемонии подписания приняли&nbsp;&nbsp;участие представители Посольства Японии&nbsp;&nbsp;в Республике Таджикистан, ОАО ,,Международного аэропорта г. Душанбе&ldquo;, Министерства иностранных дел и Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства Финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1412071180_grantyt.jpg', CAST(N'2015-04-13 22:13:02.090' AS DateTime), CAST(N'2014-09-30 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (28, N'Подписание Соглашения по гранту между Республикой Таджикистан и Международной Ассоциацией Развития', N' 30 июля 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения по гранту между Республикой Таджикистан и Международной Ассоциацией Развития по Проекту «Коммерциализация сельского хозяйства».', N'<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td>
			<p><strong>&nbsp; 30 июля 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения по гранту между Республикой Таджикистан и Международной Ассоциацией Развития по Проекту &laquo;Коммерциализация сельского хозяйства&raquo;.<br />
			&nbsp;Целью Проекта &laquo;Коммерциализация сельского хозяйства&raquo; является повышение коммерциализации сельскохозяйственной продукции и продукции агробизнеса, за счет улучшения результативности отдельных звеньев наращивания стоимости и деятельности производственных товариществ, через расширение доступа к финансированию и укреплению потенциала бенефициаров проекта.&nbsp;</p>

			<p>&nbsp;Общая сумма Проекта составляет&nbsp;<strong>25,92</strong>&nbsp;млн. долларов США, в том числе за счет гранта&nbsp;Международной ассоциации развития&nbsp;<strong>22,0</strong>&nbsp;миллиона долларов США и вклада Республики Таджикистан (партнерские финансовые институты)&nbsp; &nbsp;<strong>3,92</strong>&nbsp;млн. долларов США.</p>

			<p>&nbsp;Проект, как ожидается, охватит около 16 000 бенефициаров, из которых не менее 30% должны будут составлять женщины. В том числе, проект будет поддерживать около 200 предприятий агробизнеса (перерабатывающие предприятия и торговцев), Ассоциации, коммерческие фермеры и производственные товарищества, являясь косвенными бенефициарами проекта, будут получателями новых рабочих мест, созданных в рамках проекта. Студенты учебных заведений, поддерживаемые в рамках проекта, также будут получателями рыночной информации. Основными бенефициарами, как ожидается, будут&nbsp; Хатлонская область, Согдийская область и Районы Республиканского Подчинения.</p>

			<p>&nbsp; Результатом проекта будет увеличение доходов фермеров, домашних хозяйств и сельских предпринимателей. Выгоды будут обеспечены за счет: (i) повышения урожайности и производительности животноводства, в результате применения усовершенствованных производственных ресурсов и расширения животноводства; (ii) увеличения доли продаваемой сельскохозяйственной продукции; (iii) снижения потерь в процессе производства, переработки и транспортировки продукции, посредством применения инновационных технологий; (iv) улучшения качества продукции, тем самым, применяя более высокие цены, в результате повышения спроса переработчиков на более надежные производственные ресурсы; (v) расширения доступа к долгосрочным кредитам, благодаря проекту, а также расширения гарантированных рынков сбыта в результате предоставления долевых субсидий; (vi) повышения уровня занятости, как в сфере наёмного, так и семейного труда для внутрихозяйственных и несельскохозяйственных видов деятельности; &nbsp;(vii) налоговых поступлений в результате увеличения объема налогооблагаемой продукции.</p>

			<p>&nbsp;</p>
			<strong>Проект будет реализован до 2021 года.</strong>&nbsp;&nbsp;&nbsp;<br />
			&nbsp;
			<p>&nbsp;Соглашение было подписано от имени Республики Таджикистан Министром финансов Республики Таджикистан &ndash; г-ном А. Курбоновым и Постоянным представителем Всемирного Банка в Таджикистане &ndash; г-жой Марша Олив.</p>

			<p>&nbsp; В церемонии подписания приняли участие представители Всемирного Банка, Министерства сельского хозяйства и Министерства финансов Республики Таджикистан.</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><strong>Секретариат</strong></p>

			<p><strong>Министерства финансов</strong></p>

			<p><strong>Республики Таджикистан</strong></p>

			<p>&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
', N'1406711909_21112121.jpg', CAST(N'2015-04-13 22:14:22.883' AS DateTime), CAST(N'2014-07-30 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (30, N'Подписание Соглашения между Республикой Таджикистан и Европейским Банком Реконструкции и Развития по проекту “Реабилитация Кайроккумской ГЭС”', N' 25 июля 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания соглашения по проекту “Реабилитация Кайроккумской ГЭС” между Республикой Таджикистан и Европейским Банком Реконструкции и Развития.', N'<p>&nbsp;<strong>25&nbsp;июля&nbsp;2014&nbsp;года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась церемония подписания соглашения по проекту&nbsp;<strong>&ldquo;Реабилитация Кайроккумской ГЭС&rdquo;</strong>&nbsp;между Республикой Таджикистан и Европейским Банком Реконструкции и Развития.<br />
&nbsp;Цель&nbsp;проекта&nbsp;&ldquo;<strong>Реабилитация Кайроккумской ГЭС&rdquo;</strong>&nbsp; является&nbsp;увеличение нынешней мощности ГЭС с 126 до 142 МВт, посредством установки двух новых более мощных турбин. Они предотвратят расточительные потери воды и обеспечат производство большего количества электроэнергии без изменения расхода воды, благодаря чему повысится коэффициент полезного действия станции.&nbsp;</p>

<p><strong>Общая стоимость проекта составляет&nbsp;75,7 млн. долларов США</strong>, &nbsp;&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp;&nbsp;&nbsp;в том числе:</p>

<ul style="list-style-type:square">
	<li><strong>Кредит Европейского Банка Реконструкции и Развития на сумму&nbsp;50,0 млн. американских долларов со следующими обязательствами:</strong></li>
</ul>

<p>&nbsp;&nbsp;- срок предоставления &ndash; 15 лет;&nbsp;&nbsp;</p>

<p>&nbsp; - льготный период &ndash; 3 года;&nbsp;&nbsp;</p>

<p>&nbsp; - процентная ставка &ndash;&nbsp;Libor&nbsp;6 месяцев&nbsp; +1 процент.</p>

<p>&nbsp;<strong>&middot;&nbsp;Кредит Пилотной программы по адаптации к изменениям климата&nbsp;на сумму10,0 млн. американских долларов со следующими обязательствами:</strong></p>

<p>&nbsp; - срок предоставления &ndash; 40 лет;</p>

<p>&nbsp; - льготный период &ndash; 10 лет;</p>

<p>&nbsp; - комиссия по банковским услугам &ndash; 0,1%</p>

<p>&nbsp; - процентная ставка с 11 до 20 лет- 2%, с 21 до 40 лет &ndash; 4%</p>

<p><strong>&nbsp; &middot;&nbsp;&nbsp;Грант&nbsp;Пилотной программы по адаптации к изменениям климата&nbsp;на сумму 11,0 млн. американских долларов.</strong></p>

<p>&nbsp;&nbsp; Дополнительное донорское финансирование консультационных услуг-&nbsp;<strong>4,7 млн</strong>.американских долларов</p>

<p>&nbsp;</p>

<p><strong>Завершение проекта предполагается в 2018 году.</strong></p>

<p>&nbsp;</p>

<p>&nbsp; Соглашение было подписано со стороны Республики Таджикистан Министром финансов Республики Таджикистан &ndash;&nbsp;Абдусаломом Курбоновым, Председателем ОАХК &laquo;Барки Точик&raquo; - Рустамом Рахматзода и Директором отдела энергетики и природных ресурсов России и Центральной Азии&nbsp;Европейского Банка Реконструкции и Развития -&nbsp;Аидой Ситдиковой.</p>

<p>&nbsp;В церемонии подписания Соглашения приняли участие представители Правительства Республики Таджикистан,&nbsp;Европейского Банка Реконструкции и Развития,&nbsp;ОАХК &laquo;Барки Точик&raquo;&nbsp; и руководители структурных подразделений Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>&nbsp;&nbsp;Секретариат</strong></p>

<p><strong>&nbsp;Министерства финансов</strong></p>

<p><strong>&nbsp;Республики Таджикистан</strong></p>
', N'1406352137_ba-imzorasoni.jpg', CAST(N'2015-04-13 22:16:05.860' AS DateTime), CAST(N'2014-07-26 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (31, N'Пресс-конференция в Министерстве финансов Республики Таджикистан с представителями средств массовой информации по итогам деятельности в первом полугодии 2014 года', N'25 июля 2014 года в Министерстве финансов Республики Таджикистан состоялась  пресс-конференция  с представителями  средств  массовой информации.
 Пресс-конференцию вступительным словом открыл Первый заместитель Министра финансов Республики Таджикистан  Нуралиев  Дж.К.,  проинформировав журналистов об итогах финансовой деятельности и исполнения Государственного бюджета Республики Таджикистан в первом полугодии 2014 года и задачах по эффективному развитию и управлению государственными финансами  во втором полугодии 2014 года.', N'<p><strong>&nbsp;25 июля 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась&nbsp;&nbsp;пресс-конференция&nbsp;&nbsp;с представителями&nbsp;&nbsp;средств&nbsp;&nbsp;массовой информации.<br />
&nbsp;Пресс-конференцию&nbsp;вступительным&nbsp;словом&nbsp;открыл Первый заместитель Министра финансов Республики Таджикистан&nbsp; Нуралиев&nbsp; Дж.К.,&nbsp; проинформировав журналистов об итогах финансовой деятельности и исполнения Государственного бюджета Республики Таджикистан в первом полугодии 2014 года и задачах по эффективному развитию и управлению государственными финансами&nbsp; во втором полугодии 2014 года.</p>

<p>&nbsp; Представители&nbsp;&nbsp;средств массовой информации&nbsp;&nbsp;обратились к Первому заместителю Министра&nbsp;&nbsp;финансов Республики Таджикистан&nbsp;Нуралиеву Дж.К.&nbsp;с интересующими их&nbsp;&nbsp;вопросами, в центре&nbsp;&nbsp;внимания которых, были вопросы &nbsp;относительно строительства и использования денежных&nbsp;&nbsp;средств Рогунской ГЭС,&nbsp;внутреннего и внешнего долга Республики Таджикистан, о ходе и сроках его&nbsp;обслуживания, решения проблем &laquo;Агроинвестбанка&raquo;, деятельности&nbsp; Госпробирнадзора при Министерстве финансов Республики Таджикистан.</p>

<p>&nbsp;Также журналистами были заданы вопросы, касающиеся&nbsp; макроэкономических показателей, индекса заработной платы работников бюджетных организаций,&nbsp; финансирования социальной сферы, вопросы, касающиеся повышения тарифов по эксплуатации&nbsp; междугородних мобильных телефонов и по ряду других вопросов по различным&nbsp; направлениям&nbsp; сферы деятельности Министерства финансов, на каждый из которых был дан подробный ответ и соответствующие разъяснения.&nbsp;</p>

<p>&nbsp; Подводя итоги пресс-конференции, Первый заместитель &nbsp;Министра финансов Республики Таджикистан Нуралиев Дж.К.отметил, что сегодняшняя пресс-конференция проходит накануне священного праздника &laquo;Рамазан&raquo;, в связи с чем поздравил всех присутствующих с этим событием и&nbsp; поблагодарив&nbsp;журналистов за активное участие,&nbsp; призвал представителей средств массовой&nbsp;информации&nbsp;к более тесному сотрудничеству, подчеркнув&nbsp;о том, что каждый журналист&nbsp;в любое&nbsp;время может обратиться по интересующей&nbsp;их информации&nbsp;в Министерство финансов Республики Таджикистан&nbsp;в удобной для них форме: в письменной, в виде диалога или через сайт Министерства финансов Республики Таджикистан.&nbsp;</p>

<p>&nbsp;На пресс-конференции приняли участие: заместитель Начальника Управления финансов исполнительного Аппарата Президента Республики Таджикистан Убайдуллоев&nbsp; А.М., заместители Министра финансов и руководители структурных подразделений Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1406277699_nishasti-matbuoti.jpg', CAST(N'2015-04-13 22:17:24.093' AS DateTime), CAST(N'2014-07-25 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (32, N'Коллегия в Министерстве финансов Республики Таджикистан по итогам первого полугодия 2014 года', N'15 июля 2014 года в Министерстве финансов Республики Таджикистан прошла коллегия министерства, на которой были рассмотрены следующие вопросы:', N'<p><strong class="c-ext-Select-like-a-Boss">15 июля 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан прошла коллегия министерства, на которой были рассмотрены следующие вопросы:</p>

<p><strong>&nbsp;1. Об итогах исполнениия Государственного бюджета Республики Таджикистан за первое полугодие &nbsp;2014 года и задачах на второе полугодие 2014 года.&nbsp;</strong></p>

<p>&nbsp;<strong>2.&nbsp;Об утверждении Плана работы коллегии Министерства финансов Республики Таджикистан на второе полугодие 2014 года.</strong></p>

<p>&nbsp;По первому вопросу повестки дня с докладом выступил заместитель Министра финансов Республики Таджикистан&nbsp;<strong>Наими&nbsp; А. К.</strong></p>

<p>На коллегии были заслушаны отчёты руководителей финансовых управлений областей, городов и районов страны о проделанной работе в первом полугодии 2014 года и предстоящих задачах во втором полугодии 2014 года.&nbsp;По второму вопросу повестки дня выступил советник Министра финансов Республики Таджикистан<strong>Кобилов Б. Т.,</strong>&nbsp;представив на рассмотрение и утверждение план работы коллегии министерства на второе полугодие 2014 года.</p>

<p>По вопросам повестки дня, с учётом замечаний и предложений, приняты соответствующие решения.</p>

<p>&nbsp;В работе коллегии приняли участие: заместитель начальника Управления финансов Исполнительного Аппарата Президента Республики Таджикистан&nbsp;<strong>Убайдуллоев А.М.,&nbsp;</strong>заместитель Министра экономического развития и торговли Республики Таджикистан&nbsp;<strong>Назриев С.С.,&nbsp;</strong>Первый заместитель Председателя Налогового Комитета при Правительстве&nbsp; Республики Таджикистан&nbsp;<strong>Солиев А. М.</strong></p>

<p>&nbsp;</p>

<p><br />
<strong>Секретариат&nbsp;<br />
Министерства финансов&nbsp;<br />
Республики Таджикистан</strong></p>
', N'1405482906_kollegiya.jpg', CAST(N'2015-04-13 22:18:21.680' AS DateTime), CAST(N'2014-07-16 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (33, N'Встреча Министра финансов Республики Таджикистан с миссией Международного Валютного Фонда (МВФ)', N'11 июля 2014 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном.', N'<p><strong>11 июля 2014</strong>&nbsp;<strong>года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А. К. с миссией&nbsp;Международного Валютного Фонда&nbsp;под руководством Главы миссии г-ном Джонатаном Данном.<br />
&nbsp;Встреча прошла в конструктивной обстановке, в ходе которой&nbsp; стороны &nbsp;&nbsp;обсудили вопросы параметров &nbsp;бюджета на 2015 год в соответствии со среднесрочной программой устойчивости государственных расходов, а также расходы бюджета на социальные нужды, меры &nbsp;по повышению доходов и вопросы&nbsp; общей&nbsp; политики.</p>

<p>&nbsp; В рамках обсуждения&nbsp;IV&nbsp;статьи &nbsp;Программы МВФ, Глава миссии г-н Джонатан Данн поделился своими мнениями по поводу выполнения прогнозных контрольных показателей макроэкономической&nbsp; и фискальной политики.</p>

<p>&nbsp;Одновременно миссия&nbsp;проводит необходимые обсуждения по основным направлениям экономической политики&nbsp; с соответствующими управлениями Министерства&nbsp; финансов Республики Таджикистан.</p>

<p>&nbsp; Стороны уделили особое внимание вопросам финансово-налоговой и банковской политики,&nbsp; в частности&nbsp; вопросам, касающихся Рогунской ГЭС,&nbsp; решения проблем Агроинвестбанка, а также состояния и прогнозов&nbsp; по обслуживанию внешнего долга, мониторинга государственных предприятий и&nbsp; взаимоотношений&nbsp; Республики Таджикистан с другими международными финансовыми и банковскими организациями.</p>

<p>&nbsp;Министр финансов Республики Таджикистан г-н Курбонов А. К. выразив признательность Главе миссии г-ну Джонатану Данну, отметил, что за время сотрудничества с Международным Валютным Фондом, в особенности в части проведения реформ в финансовых секторах Республики Таджикистан достигнут значительный прогресс, и выразил уверенность в том, что сотрудничество с&nbsp; Международным Валютным Фондом&nbsp; и в дальнейшем&nbsp; будет развиваться и расширяться на конструктивной основе.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат<br />
Министерства финансов&nbsp;</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1405141273_podp.jpg', CAST(N'2015-04-13 22:19:18.790' AS DateTime), CAST(N'2014-07-12 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (34, N'Встреча Министра финансов Республики Таджикистан с Главой Федерального Министерства финансов Швейцарской Конфедерации', N' 8 июля 2014 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А.К. с Главой Федерального Министерства финансов Швейцарской Конфедерации г-жой Эвелин Видмер-Шлюмпф.', N'<p><strong class="c-ext-Select-like-a-Boss">&nbsp;8 июля 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А.К. с&nbsp;Главой Федерального Министерства финансов Швейцарской Конфедерации г-жой Эвелин Видмер-Шлюмпф.</p>

<p>&nbsp;&nbsp;В ходе встречи, которая прошла в конструктивной обстановке, состоялся обмен мнениями по актуальным вопросам и перспективам сотрудничества&nbsp;&nbsp; обеих стран в финансовой, банковской&nbsp; и других&nbsp; сферах деятельности.</p>

<p>&nbsp;Стороны уделили особое внимание процессу реализации совместных межгосударственных проектов, а также укрепления и расширения двухсторонних&nbsp; отношений в сфере торговли, привлечения швейцарских инвестиций в перспективные отрасли Таджикистана, развития предпринимательства и бизнеса, вопросам развития частного сектора, внедрения новых технологий&nbsp;и обмена опытом между странами на различных уровнях и приемлемых формах.&nbsp;&nbsp;которые могли бы способствовать экономическому развитию Таджикистана.</p>

<p>&nbsp;Стороны обсудили перспективы реализации совместных программ, а также&nbsp; оказания финансовой и технической помощи&nbsp; Таджикистану&nbsp;и роли международных финансовых организаций в этом направлении.</p>

<p>&nbsp;&nbsp;Министр финансов Республики Таджикистан г-н&nbsp;Курбонов А.К.&nbsp;&nbsp;выразив признательность&nbsp;Главе Федерального Министерства финансов Швейцарской Конфедерации г-же Эвелин Видмер-Шлюмпф&nbsp;отметил, что при поддержке&nbsp;Швейцарской Конфедерации, &nbsp;достигнут значительный прогресс по проведению реформ финансового сектора Республики Таджикистан, и выразил уверенность в том, что сотрудничество Республики Таджикистан с&nbsp;Швейцарской Конфедерацией ив дальнейшем&nbsp; будет развиваться и расширяться.</p>

<p>&nbsp;&nbsp;&nbsp;На встрече принял участие Глава Швейцарского Офиса по Сотрудничеству в Таджикистане г-н Питер Микула.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;<strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики &nbsp;Таджикистан</strong></p>
', N'1404872064_vstrecha.jpg', CAST(N'2015-04-13 22:20:20.150' AS DateTime), CAST(N'2014-07-09 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (35, N' Подписание Соглашений между Республикой Таджикистан и Швейцарским Офисам по сотрудничеству в Республике Таджикистан', N' 4 июля 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Грантовых Соглашений между Республикой Таджикистан и Швейцарским Офисом по сотрудничеству в Республике Таджикистан, по проектам:', N'<p><strong class="c-ext-Select-like-a-Boss">&nbsp; 4 июля 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась церемония подписания Грантовых Соглашений между Республикой Таджикистан и Швейцарским Офисом по сотрудничеству в Республике Таджикистан, по проектам:<br />
<strong>&nbsp;&nbsp; 1. Национальный проект: &laquo;Управление водными ресурсами в Таджикистане&raquo;;</strong><strong>&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>

<p><strong>&nbsp;&nbsp;&nbsp; 2. Проект по сельскому питьевому водоснабжению и санитарии в Ферганской долине;</strong>&nbsp;&nbsp;&nbsp;</p>

<p><strong>&nbsp;&nbsp;&nbsp; 3. Проект &laquo;Водоснабжение и санитария в Таджикистане&raquo; фаза II.</strong></p>

<p>&nbsp;&nbsp;Целью проекта &laquo;Управление водными ресурсами в Таджикистане&raquo; является укрепление управления водными ресурсами на уровне бассейна, ирригационных схем и на уровне хозяйств, с целью увеличения наличия воды, тем самым улучшить продовольственную безопасность, снижение рисков стихийных бедствий, связанных с водой и улучшение социально - экономических показателей в выбранной сельской местности.&nbsp;</p>

<p>&nbsp; Проект по сельскому питьевому водоснабжению и санитарии в Ферганской долине осуществит финансирование инвестиционной программы для улучшения здоровья и уровня благосостояния сельских жителей посредством устойчивого сельского питьевого водоснабжения, санитарии и улучшенного санитарно-гигиенического состояния в домохозяйствах и соблюдение правил гигиены жителями. Проект призван создать полностью автономный сектор сельского питьевого водоснабжения и санитарии, основанный на продвижении децентрализованного управления системами питьевого водоснабжения.</p>

<p>&nbsp;Общей целью проекта&nbsp;&laquo;Водоснабжение и санитария в Таджикистане&raquo; (фаза II) является содействие в создании благоприятных условий для устойчивого обеспечения безопасной питьевой водой и санитарией сельской местности Таджикистана через поддержку правительства в совершенствовании законодательной базы подотрасли, за счет оптимизации процессов и механизмов на районном уровне для инвестиций, функционирования и регулирования подотрасли и расширения прав и возможностей потребителей.</p>

<p>&nbsp;&nbsp;Общая сумма проектов оценивается в размере &nbsp;<strong>17</strong><strong>,5 млн.&nbsp;</strong>швейцарских франков&nbsp;на грантовой основе<strong>,&nbsp;</strong>из которых &nbsp;<strong>7,4 млн.</strong>&nbsp;швейцарских франков для проекта &laquo;Управление водными ресурсами в Таджикистане&raquo;,&nbsp;<strong>5,0 млн.</strong>&nbsp;швейцарских франков для проекта по сельскому питьевому водоснабжению и санитарии в Ферганской долине и&nbsp;&nbsp;<strong>5,1 млн.</strong>&nbsp;швейцарских франков для проекта&nbsp; &laquo;Водоснабжение и санитария в Таджикистане&raquo; фаза II.</p>

<p><br />
<strong>Проекты будут реализовываться до 2018 года</strong></p>

<p><br />
&nbsp;&nbsp;Соглашения о предоставлении финансовой помощи подписаны от имени Правительства Республики Таджикистан Министром финансов Республики Таджикистан &ndash; г-ном Курбоновым А. К. и Главой&nbsp;Швейцарского Офиса по сотрудничеству в Республике Таджикистан&nbsp;&ndash; г-ном Питером Микула.</p>

<p>&nbsp; В церемонии подписания приняли участие представители Швейцарского Офиса по сотрудничеству в Республике Таджикистан и Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1404471743_podpisanie.jpg', CAST(N'2015-04-13 22:21:11.020' AS DateTime), CAST(N'2014-07-04 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (36, N'Регулярная встреча по вопросам управления государственными финансами', N' 7 мая 2014 года в Министерстве финансов Республики Таджикистан состоялась очередная встреча по вопросам управления государственными финансами (УГФ), организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан с участием доноров.', N'<p><strong>&nbsp;7 мая 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась очередная встреча по вопросам управления государственными финансами (УГФ), организованная Секретариатом Совета Управления государственными финансами Министерства финансов Республики Таджикистан с участием доноров.</p>

<p>&nbsp;Встреча прошла под председательством Руководителя Секретариата Совета УГФ, заместителя министра финансов Республики Таджикистан Ш. К. Сохибова.</p>

<p>&nbsp;Встреча была посвящена Прогрессу реализации Плана действий Стратегии УГФ 2012-2014 годы за 1-й квартал 2014 года. С презентацией о ходе реализации Плана действий Стратегии УГФ на период 2012-2014 годы за I-й квартал 2014 года, выступил г-н Майкл&nbsp;Пэрри, международный консультант Секретариата Совета УГФ Министерства финансов &nbsp;Республики Таджикистан. С презентацией о прогрессе реализации Раздела 3. Улучшение системы бухгалтерского учета в государственном секторе Плана действий Стратегии УГФ на период 2012-2014 годы, выступил Сафаров Т.М., начальник отдела по разработке нормативных документов Управления методологии бухгалтерского учета и аудита Министерства финансов Республики Таджикистан. Также, участникам встречи была представлена презентация представителей Всемирного Банка, г-на Давида Нами и г-жи Марины Бакановой: Обзор государственных расходов &ndash; УГФ.</p>

<p>&nbsp;В работе Встречи по вопросам управления государственными финансами приняли участие ответственные работники&nbsp;Министерства финансов Республики Таджикистан;&nbsp;представители международных финансовых организаций: представители Всемирного Банка в Таджикистане Хасан Алиев, Марина Баканова, Ирина Щербина, представители ДИФИД в Таджикистане Гульнора Мухаммадиева, Шухрат Мирзоев, представитель&nbsp;USAID&nbsp;в Таджикистане, Муниса Вахобова, &nbsp;международные консультанты Майкл Пэрри, Пол Кроу, Джордж Британ, представители Секретариата по усилению потенциала Комитета по экономики и финансам Маджлиси Намояндагони Маджлиси Оли Республики Таджикистан Рахима Туйчиева, Людмила Борунова и Счетной Палаты Республики Таджикистан Турсунов Хайдар и другие. Также в данной встрече приняли участие ежегодная оценочная миссия Всемирного Банка: г-н Дэвид Нами, г-н Уайт Грант, г-н Адриан Фоззард.</p>

<p>&nbsp;</p>

<p><strong>Для дальнейшей информации обращайтесь:</strong></p>

<p>&nbsp;</p>

<p><strong>Секретариат&nbsp; Совета УГФ</strong></p>

<p>Улугбек Каюмов</p>

<p>Tel: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +992-372-221-04-02</p>

<p>Mob: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; +992-93-515-55-22</p>

<p>e-mail: &nbsp;&nbsp;&nbsp;&nbsp;u.kayumov@pfms.tj</p>

<p>&nbsp;</p>

<p><strong>Примечания:</strong></p>

<p>&nbsp;</p>

<ul style="list-style-type:square">
	<li><strong>Координационный совет по вопросам управления государственными финансами</strong>&nbsp;был сформирован Указам Президента Республики Таджикистан&nbsp; от 16 сентября 2008 года № 542. Координационный совет является консультативно-совещательным органом, ответственным за разработку Стратегии управления государственными финансами (УГФ), Плана действий и за проведение реформы&nbsp; управления государственными финансами в рамках одобренной &nbsp;Стратегии УГФ. Председателем Координационного Совета УГФ является Министр финансов Республики Таджикистан А.К. Курбонов. Для эффективного функционирования Координационного Совета УГФ был образован Секретариат Совета&nbsp;УГФ руководителем, которого является Заместитель министра финансов Республики Таджикистан Ш.К. Сохибов.</li>
</ul>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1399521008_321.jpg', CAST(N'2015-04-13 22:22:35.473' AS DateTime), CAST(N'2014-05-08 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (37, N'Подписание Соглашения по гранту между Республикой Таджикистан и Международной Ассоциацией Развития', N' 7 мая 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения по гранту между Республикой Таджикистан и Международной Ассоциацией Развития выступающей в качестве администратора грантовых средств, предоставленных Японским фондом социального развития по Проекту «Пилотирования инвестиций в питание в районах Хатлонской области, подверженных продовольственной нестабильности». ', N'<p><strong class="c-ext-Select-like-a-Boss">&nbsp; 7 мая 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась церемония подписания Соглашения по гранту между Республикой Таджикистан и Международной Ассоциацией Развития выступающей в качестве администратора грантовых средств, предоставленных Японским фондом социального развития по Проекту &laquo;Пилотирования инвестиций в питание в районах Хатлонской области, подверженных продовольственной нестабильности&raquo;.&nbsp;</p>

<p>&nbsp; Целью проекта является улучшение состояния здоровья и качества питания детей в возрасте до 5 (пяти) лет, беременных и кормящих матерей в 14 районах пострадавших от ценовых потрясений на продукты питания в Хатлонской области.</p>

<p>Общая сумма Проекта составляет 2,8 млн. долларов США, предоставляемой на грантовой основе и финансируемой за счет&nbsp;средств Японского фонда социального развития через Международную Ассоциацию Развития.</p>

<p>&nbsp;Данный грант охватит 5000 домохозяйств в 14 городах и районах Хатлонской области, включая районы Джами, Бохтар, Восе, Дангара, Кабодиен, Куляб, Муминабад, Носири Хисрав, Ховалинг, Хуросон, Шаартуз, Шурабад, Сарбанд и г. Нурек. Кроме того, этот грант позволит углубить инвестиции для улучшения потребления домохозяйствами продуктов питания посредством общинного огородничества. Данный грант поддержит общинное огородничество благодаря сочетанию использования местных подходов, поставок высококачественных семян и удобрений, а также обучения домохозяйств безопасному выращиванию, консервированию и хранению продуктов питания. В рамках гранта также будет осуществлена деятельность по повышению потенциала районных работников здравоохранения и центров здоровья в вопросе мониторинга питания.</p>

<p><strong>Проект будет реализован до 2017 года.</strong></p>

<p>Соглашение было подписано со стороны Правительства Республики Таджикистан - Министром финансов Республики Таджикистан г-ном<a name="_GoBack"></a>&nbsp;А.Курбановым и со стороны Всемирного Банка - Постоянным Представителем Всемирного Банка в Таджикистане г-жой Марша Олив.</p>

<p>В церемонии подписания приняли участие представители Всемирного Банка, Посольства Японии в Таджикистане, &nbsp;Министерства здравоохранения и Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong>&nbsp;</p>

<p><strong>Министерства Финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1399462890_podp-7052014.jpg', CAST(N'2015-04-13 22:23:27.377' AS DateTime), CAST(N'2014-05-07 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (38, N'Послание Президента Республики Таджикистан Эмомали Рахмона к Маджлиси Оли Республики Таджикистан', N'23 апреля 2014 года  Президент  Республики  Таджикистан   обратился с  очередным  Посланием к Парламенту страны.', N'<p><strong>&nbsp;23 апреля 2014 года</strong>&nbsp; Президент&nbsp; Республики&nbsp; Таджикистан&nbsp;&nbsp; обратился с&nbsp; очередным&nbsp; Посланием к Парламенту страны.</p>

<p>&nbsp;&nbsp;В соответствии с Конституцией (Основным законом) Республики Таджикистан, Послание Президента страны заслушивается на совместном заседании обеих палат парламента - Маджлиси Милли и Маджлиси намояндагон Маджлиси Оли Республики Таджикистан.&nbsp;&nbsp;&nbsp;</p>

<p>&nbsp; В работе&nbsp; совместного заседания Маджлиси&nbsp; милли и &nbsp;Маджлиси намояндагон Маджлиси Оли Республики Таджикистан &nbsp;приняли участие члены&nbsp; Маджлиси милли, депутаты Маджлиси намояндагон, члены Правительства Республики Таджикистан, руководители министерств и ведомств страны, представители &nbsp;дипломатического корпуса, &nbsp;аккредитованные в Республике Таджикистан, международные организации, а также отечественные и зарубежные СМИ.</p>

<p>&nbsp; В Послании&nbsp; Президента Республики Таджикистан Эмомали Рахмона к Маджлиси Оли Республики Таджикистан &nbsp;были отражены основные&nbsp; направления внутренней и внешней политики страны,&nbsp; а также&nbsp; политические, экономические, социальные, научные и&nbsp; культурные сферы.&nbsp;</p>

<p>&nbsp;В этот знаменательный день, коллективы работников Министерства финансов Республики Таджикистан и подведомственных&nbsp; ему организаций с большим интересом и воодушевлением&nbsp; приняли участие в просмотре в прямом эфире&nbsp; таджикского телевидения&nbsp; Послания Президента страны&nbsp; Парламенту Республики Таджикистан.</p>

<p>&nbsp; После&nbsp; просмотра прямой трансляции&nbsp; по телевидению Послания &nbsp;Президента Республики Таджикистан Эмомали&nbsp; Рахмона к Парламенту страны, своими мнениями и впечатлениями поделился с&nbsp;&nbsp;представителями средств массовой информации&nbsp;начальник Управления бюджетной политики в отраслях экономики Министерства финансов Республики Таджикистан Авганов Т.Ё.&nbsp;<br />
<br />
&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1398320467_paem2014_1.jpg', CAST(N'2015-04-13 22:25:31.547' AS DateTime), CAST(N'2014-04-24 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (39, N'Встреча Министра финансов Республики Таджикистан с миссией Международного Валютного Фонда', N'17 апреля 2014 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А.К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Димитаром Радевым.', N'<p>&nbsp;</p>

<p><strong class="c-ext-Select-like-a-Boss">17 апреля 2014</strong>&nbsp;<strong>года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Курбонова А.К. с миссией&nbsp;Международного Валютного Фонда&nbsp;под руководством Главы миссии г-ном Димитаром Радевым.<br />
&nbsp;Встреча прошла в конструктивной обстановке, в ходе которой&nbsp; стороны рассмотрели вопросы проведения оценки текущих реформ и достигнутого прогресса в области управления государственными финансами, а также&nbsp; обсудили вопросы дальнейшей реализации запланированных проектов и программ.</p>

<p>&nbsp;Глава миссии г-н Димитар Радев поделился своими мнениями по поводу намеченных миссией целей и задач, представив свои рекомендации и предложения.</p>

<p>&nbsp;Одновременно миссия намерена провести необходимые обсуждения по основным направлениям экономической политики с соответствующими управлениями Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;Было&nbsp;отмечено, что все меры предпринимаемые Правительством Республики Таджикистан, направлены на повышение роста благосостояния народа страны.</p>

<p>&nbsp;Министр финансов Республики Таджикистан г-н Курбонов А.К. выразив признательность Главе миссии г-ну Димитару Радеву, отметил, что за время сотрудничества с Международным Валютным Фондом, в особенности в части проведения реформ в финансовых секторах Республики Таджикистан был достигнут значительный прогресс, и выразил уверенность в том, что сотрудничество с Международным Валютным Фондом и в дальнейшем&nbsp; будет развиваться и расширяться.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1397753047_podpisanie.jpg', CAST(N'2015-04-13 22:26:33.133' AS DateTime), CAST(N'2014-04-17 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (40, N'Коллегия в Министерстве финансов Республики Таджикистан по итогам первого квартала 2014 год', N'11 апреля 2014 года в Министерстве финансов Республики Таджикистан прошла коллегия министерства, на которой был рассмотрен вопрос:«О фискальной политике и итогах финансовой деятельности по исполнению Государственного бюджета Республики Таджикистан в первом квартале 2014 года и задачах  во втором квартале 2014 года»', N'<p class="c-ext-Select-like-a-Boss"><strong>&nbsp;&nbsp;11 апреля 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан прошла коллегия министерства, на которой был рассмотрен вопрос:&laquo;О фискальной политике и итогах финансовой деятельности по исполнению Государственного бюджета Республики Таджикистан в первом квартале 2014 года и задачах&nbsp; во втором квартале 2014 года&raquo;</p>

<p>&nbsp; По вопросу повестки дня с докладом выступил заместитель Министра финансов Республики Таджикистан&nbsp;<strong>Наими А. К.</strong></p>

<p>&nbsp;На коллегии были заслушаны отчёты руководителей финансовых управлений областей, городов и районов о проделанной работе в первом квартале 2014 года и предстоящих задачах во втором квартале 2014 года.</p>

<p>&nbsp;По вопросу повестки дня, с учётом предложений были&nbsp; приняты соответствующие решения.</p>

<p>Подводя итоги коллегии, заместитель Министра финансов Республики Таджикистан<strong>Наими А. К.</strong>&nbsp;дал ответственным работникам системы Министерства финансов Республики Таджикистан конкретные задания, требующие своевременного и качественного исполнения Государственного бюджета во втором квартале 2014 года, подчеркнув о том, что все руководители финансовых органов и подведомственных организаций должны приложить максимум усилий для выполнения задач, поставленных Правительством Республики Таджикистан.</p>

<p>&nbsp;На заседании коллегии принял участие заместитель начальника Управления финансов Исполнительного Аппарата Президента Республики Таджикистан<strong>Убайдуллаев А. М.</strong></p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства Финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1397313715_kolegiya.jpg', CAST(N'2015-04-13 22:27:23.830' AS DateTime), CAST(N'2014-04-12 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (41, N'Подписание Соглашений между Республикой Таджикистан и Швейцарским Офисам по сотрудничеству в Республике Таджикистан', N'13 марта 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Грантовых Соглашений между Республикой Таджикистан и Швейцарским Офисом по сотрудничеству в Республике Таджикистан, по проектам: «Реабилитация и водоснабжение северных городов Таджикистана, фаза-2» и «Водоснабжение и санитария г. Худжанда, фаза–3».', N'<p><strong class="c-ext-Select-like-a-Boss">&nbsp;13 марта 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялась церемония подписания Грантовых Соглашений между Республикой Таджикистан и Швейцарским Офисом по сотрудничеству в Республике Таджикистан, по проектам: &laquo;Реабилитация и водоснабжение северных городов Таджикистана, фаза-2&raquo; и &laquo;Водоснабжение и санитария г. Худжанда, фаза&ndash;3&raquo;.<br />
&nbsp;&nbsp;Целью проекта &laquo;Реабилитация и водоснабжение северных городов Таджикистана, фаза-2&raquo; является улучшение систем водоснабжения северных городов Таджикистана, в том числе городов Истравшан и Пенджикент и районов Шахристан, Зафарабад Сугдской области. Проект &laquo;Водоснабжение и санитария г. Худжанда, фаза&ndash;3&raquo; осуществит финансирование инвестиционной программы для улучшения сбора сточных вод и&nbsp; восстановления очистных сооружений в городе Худжанде.</p>

<p>&nbsp;</p>

<p><strong>Основными компонентами проектов являются:</strong></p>

<p>&nbsp;&nbsp; - установка дополнительных соединений (650 в г. Истаравшане, 500 в &nbsp;г. Пенджикенте, 660 в Шахристане и 450 в Зафарободе);</p>

<p>&nbsp;&nbsp; - содействие 4 компаниям по водоснабжению городов в установлении и осуществлении необходимых улучшений;</p>

<p>&nbsp;&nbsp; - установка счетчиков расхода воды;</p>

<p>&nbsp;&nbsp; - приобретение операционного и ремонтного оборудования;</p>

<p>&nbsp;&nbsp; -строительство новых резервуаров для воды;</p>

<p>&nbsp;&nbsp; - ремонт и строительство водозаборов;</p>

<p>&nbsp;&nbsp; - приобретение операционного и ремонтного оборудования;</p>

<p>&nbsp; - гидрологическое исследование&nbsp;- улучшение муниципального сбора и очистки сточных вод.</p>

<p>&nbsp; Общая сумма проектов оценивается в размере&nbsp;<strong>23,0 млн. долларов США,&nbsp;</strong>из которых&nbsp;<strong>13,5 млн.</strong>&nbsp;долларов США на грантовой основе со стороны&nbsp;Швейцарского Офиса по сотрудничеству в Республике Таджикистан и&nbsp;&nbsp; кредитные средства ЕБРР составляют&nbsp;<strong>9,5 млн. долларов США.</strong></p>

<p><br />
&nbsp;<strong>Проекты будут реализовываться до 2016 года.</strong></p>

<p>&nbsp;</p>

<p>&nbsp; Соглашения о предоставлении финансовой помощи подписаний Министром финансов Республики Таджикистан г-ном Курбоновым А. К. и Главой&nbsp;Швейцарского Офиса по сотрудничеству в Республике Таджикистан&nbsp;&nbsp;&nbsp;&nbsp;г-ном Питером Микули.&nbsp;</p>

<p>&nbsp; В церемонии подписания приняли участие представители Швейцарского Офиса по сотрудничеству в Республике Таджикистан и Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1394705332_podp13032014.jpg', CAST(N'2015-04-13 22:28:18.337' AS DateTime), CAST(N'2014-03-13 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (42, N'Торжественное собрание, посвящённое празднику «День матери»', N'7 марта 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвящённое празднику «День матери»', N'<p><strong>7 марта 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвящённое празднику &laquo;День матери&raquo;.<br />
&nbsp;Торжественное собрание вступительным словом открыл заместитель Министра финансов Республики Таджикистан Наими.А.К., подчеркнув о роли женщин и матери в обществе и семье, пожелав всем &nbsp;прежде всего крепкого здоровья, семейного счастья и благополучия, высоких достижений и успехов в работе, и отметил, что счастье и благополучие таджикских женщин и матерей, членов их семей в целом является важным фактором прогресса и процветания нашей страны.</p>

<p>&nbsp; С докладом, посвящённым женскому празднику, выступил заместитель Министра финансов Республики Таджикистан Наими.А.К</p>

<p>&nbsp;&nbsp; Свои поздравления и пожелания также высказали работники Министерства финансов Республики Таджикистан Шодиева М.М., Муродов И., Одинаев Р.С.</p>

<p>&nbsp;</p>

<p><strong>Секретариат&nbsp;</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1394593281_8mart1.jpg', CAST(N'2015-04-13 22:29:49.000' AS DateTime), CAST(N'2014-03-12 00:00:00.000' AS DateTime), 4, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (43, N'Очередное заседание Совета Инициативы прозрачности добывающих отраслей в Таджикистане', N'  6 марта 2014 года в Министерстве финансов Республики Таджикистан под председательством заместителя Министра финансов Республики Таджикистан – Председателя Совета ИПДО Таджикистана г-жи Джонмамадовой М.Х. было проведено седьмое заседание Совета Инициативы прозрачности в добывающих отраслях (ИПДО) в Таджикистане.', N'<p><strong>&nbsp; 6 марта 2014 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан под председательством заместителя Министра финансов Республики Таджикистан &ndash; Председателя Совета ИПДО Таджикистана&nbsp;г-жи Джонмамадовой М.Х. было проведено седьмое заседание Совета Инициативы прозрачности в добывающих отраслях (ИПДО) в Таджикистане.</p>

<p>&nbsp;На заседании Совета ИПДО рассматривались вопросы дальнейшего развития&nbsp;процесса внедрения ИПДО в Таджикистане. Основным вопросом заседания было рассмотрение и утверждение рабочего плана Совета ИПДО Таджикистана на 2014-2016 годы. Рабочий план предусматривает&nbsp;широкий спектр мероприятий, чтобы помочь стране достичь валидации и стать полноправной страной последователем ИПДО, в том числе по обзору нормативно-правовой базы, повышения потенциала государственных должностных лиц, компаний и гражданского общества, информационной и разъяснительной деятельности, а также&nbsp; подготовки и распространения первого и второго отчетов сверки ИПДО. Выполнение этих мероприятий&nbsp;будет иметь большое значение для совершенствования управления природными ресурсами и улучшения восприятия международными инвесторами Таджикистана, как прозрачной и надежной страны для ведения бизнеса.</p>

<p>&nbsp;На Совете также рассматривались вопросы создания рабочей группы по рассмотрению формы Технического задания для независимых администраторов, обращения в Международный Секретариат ИПДО и Всемирный банк для направления консультанта, который должен провести исследование охвата отчетности ИПДО в Таджикистане. Одновременно, обсуждались предложения по организации встречи с руководителями добывающих компаний для ознакомления с стандартами ИПДО, а также проведение семинара по новым правилам ИПДО для государственных служащих, представителей гражданского общества и компаний.</p>

<p>&nbsp;Подводя итоги заседания, заместитель Министра финансов Республики Таджикистан &ndash; Председатель Совета ИПДО Таджикистана г-жа Джонмамадова М.Х. отметила о важности и значимости внедрения Инициативы прозрачности добывающих отраслей в Таджикистане и призвала всех членов Совета ИПДО Таджикистана к своевременному и качественному&nbsp; выполнению всех запланированных мероприятий.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1394166227_ipdo.jpg', CAST(N'2015-04-13 22:31:12.000' AS DateTime), CAST(N'2014-03-07 00:00:00.000' AS DateTime), 2, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (44, N'Встреча Министра финансов Республики Таджикистан с миссией Международного Валютного Фонда (МВФ)', N' 22 февраля 2014 года  в  Министерстве финансов  Республики Таджикистан  состоялась  встреча  Министра  финансов  Республики  Таджикистан  г-на Курбонова А.К. с миссией Международного Валютного Фонда под руководством Главы миссии г-ном Джонатаном Данном. ', N'<p><strong>&nbsp;22</strong>&nbsp;<strong>февраля 2014</strong>&nbsp;<strong>года</strong>&nbsp; в&nbsp; Министерстве финансов&nbsp; Республики Таджикистан&nbsp; состоялась&nbsp; встреча&nbsp; Министра&nbsp; финансов&nbsp; Республики&nbsp; Таджикистан&nbsp; г-на Курбонова А.К. с миссией&nbsp;Международного Валютного Фонда&nbsp;под руководством Главы миссии г-ном Джонатаном Данном.&nbsp;</p>

<p>&nbsp;&nbsp;Встреча прошла в конструктивной обстановке, в ходе которой&nbsp; стороны рассмотрели вопросы развития фискальных событий, &nbsp;обсудили вопросы параметров бюджета на 2014 год в соответствии со &nbsp;среднесрочной программой устойчивости государственных расходов, а также обсудили приоритеты экономической политики Правительства Республики Таджикистан.</p>

<p>&nbsp; Глава миссии г-н Джонатан Данн поделился своими мнениями по поводу выполнения прогнозных контрольных показателей макроэкономической&nbsp; и фискальной политики.&nbsp;Одновременно миссия&nbsp;проводит необходимые обсуждения по основным направлениям экономической политики с соответствующими управлениями Министерства&nbsp; финансов Республики Таджикистан.</p>

<p>&nbsp;Стороны уделили особое внимание вопросам финансово-налоговой политики,&nbsp; в частности&nbsp; вопросам, касающихся расходов на социальное обеспечение,&nbsp; решения проблем Агроинвестбанка, а также состояния и прогнозов&nbsp; по обслуживанию внешнего долга, мониторинга государственных предприятий и взаимоотношений&nbsp; Республики Таджикистан с другими международными финансовыми и банковскими организациями.</p>

<p>&nbsp; Министр финансов Республики Таджикистан г-н Курбонов А.К. выразив признательность Главе миссии г-ну Джонатану Данну, отметил, что за время сотрудничества с Международным Валютным Фондом, в особенности в части проведения реформ в финансовых секторах Республики Таджикистан достигнут значительный прогресс, и выразил уверенность в том, что сотрудничество с МВФ и в дальнейшем&nbsp; будет развиваться и расширяться на конструктивной основе.</p>

<p>&nbsp;&nbsp;На встрече приняли участие Постоянный Представитель МВФ в Таджикистане Айдын Биболов и Советник исполнительного директора МВФ г-н Раджабов И.Ш.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат<br />
Министерства финансов&nbsp;</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1393044867_mvf2014.jpg', CAST(N'2015-04-13 22:32:36.010' AS DateTime), CAST(N'2014-02-22 00:00:00.000' AS DateTime), 1, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (45, N'Подписание соглашений между Республикой Таджикистан и Азиатским Банком Развития по предоставлению технической помощи', N' 12 февраля 2014 года в Министерстве финансов Республики Таджикистан состоялась церемония подписания Cоглашений о предоставлении технической помощи Азиатским Банком Развития для реализации двух проектов: ', N'<p class="c-ext-Select-like-a-Boss">&nbsp;<strong>12 февраля 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась церемония подписания&nbsp;Cоглашений о предоставлении технической помощи Азиатским Банком Развития для реализации двух проектов:&nbsp;</p>

<p><strong>&nbsp;1.&nbsp;</strong><strong>Проект по Реформам инвестиционного климата в размере 1 миллион долларов США (Грант Японского фонда по сокращению бедности)</strong></p>

<p><strong>&nbsp;2.&nbsp;</strong><strong>Проект по усилению частного сектора в профессионально-техническом образовании и обучении в размере 700 тысяч долларов США (Грант Японского фонда по сокращению бедности).</strong></p>

<p>&nbsp;&nbsp;<strong>Проект по Реформам инвестиционного климата&nbsp;</strong>будет способствовать реализации реформы по смягчению рисков инвесторов, расширению производственных предприятий и привлечению инвестиций. С целью поддержки развития продукта и сертификации качества, будет апробирован подход &laquo;Один поселок &ndash; один продукт&raquo; при содействии волонтеров из Японии.&nbsp; Кроме того, будет создан пилотный бизнес-инкубатор по обучению женщин-предпринимателей страны, обучение которых будет осуществляться посредством проведения конкурса среди женщин-предпринимателей по инновационным бизнес-предложениям и будут отобраны перспективные кандидаты для прохождения мини-курсов Мастера делового администрирования.</p>

<p>&nbsp; Исполнительным агентством данного проекта является исполнительный аппарат Президента Республики Таджикистан.&nbsp; В реализации проекта будут задействованы: Министерство экономического развития и торговли Республики Таджикистан, Государственный комитет по инвестициям и управлению государственным имуществом и Национальная ассоциация деловых женщин Таджикистана.</p>

<p><strong>&nbsp;В рамках Проекта по усилению частного сектора в профессионально-техническом образовании</strong>&nbsp;будет модернизирована и улучшена методология, инфраструктура и качество обучения системы профессионально-технического образования.</p>

<p>Посредством реализации данного проекта будет создан Фонд профессионального обучения по повышению доступа к обучению малоимущих и уязвимых слоев населения, включая женщин.&nbsp;</p>

<p>&nbsp; Данные Соглашения&nbsp;от имени Правительства Республики Таджикистан&nbsp; были подписаны Министром финансов Республики Таджикистан г-ном А. Курбоновым, от имени Азиатского Банка Развитии &ndash; Директором отдела Департамента Азиатского Банка Развитии по Центральной и Западной Азии г-жой Бетти Вилкинсон.</p>

<p>&nbsp;В церемонии подписания приняли участие представители Исполнительного аппарата Президента, Министерства финансов Республики Таджикистан, Министерства экономического развития и торговли Республики Таджикистан,Азиатского Банка Развитии и Посольства Японии в Республике Таджикистан.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1392287209_podp.jpg', CAST(N'2015-04-13 22:34:02.827' AS DateTime), CAST(N'2014-02-13 00:00:00.000' AS DateTime), 12, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (46, N'Пресс-конференция в Министерстве финансов Республики Таджикистан с представителями средств массовой информации по итогам деятельности в 2013 году', N'3 февраля 2014 года в Министерстве финансов Республики Таджикистан состоялась  пресс-конференция  с представителями  средств  массовой информации.', N'<p><strong class="c-ext-Select-like-a-Boss">&nbsp;3 февраля 2014 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась&nbsp;&nbsp;пресс-конференция&nbsp;&nbsp;с представителями&nbsp;&nbsp;средств&nbsp;&nbsp;массовой информации.</p>

<p>&nbsp;Пресс-конференцию&nbsp;вступительным&nbsp;словом&nbsp;открыл Министр финансов Республики Таджикистан&nbsp; Курбонов А.К.,&nbsp; проинформировав журналистов об итогах финансовой деятельности и исполнения Государственного бюджета Республики Таджикистан в 2013 году и задачах по эффективному развитию и управлению государственными финансами&nbsp; в 2014 году.<br />
&nbsp;Представители&nbsp;&nbsp;средств массовой информации&nbsp;&nbsp;обратились к Министру&nbsp;&nbsp;финансов Республики Таджикистан&nbsp;Курбонову А.К.&nbsp;с интересующими их&nbsp;&nbsp;вопросами, в центре&nbsp;&nbsp;внимания которых, были вопросы, касающиеся использования денежных&nbsp;средств Рогунской ГЭС,&nbsp;внутреннего и внешнего долга Республики Таджикистан, о ходе и сроках его&nbsp;обслуживания, о результатах внедрения единой информационной электронной сети в стране.&nbsp;&nbsp;<br />
&nbsp;Также журналистами были заданы вопросы, касающиеся&nbsp; макроэкономических показателей, повышения заработной платы работников бюджетных организаций,&nbsp; финансирования социальной сферы, вопросы&nbsp; сотрудничества&nbsp; с&nbsp; международными финансовыми и банковскими организациями и по ряду других вопросов по различным&nbsp; направлениям&nbsp; сферы деятельности Министерства финансов, на каждый из которых был дан подробный ответ и соответствующие разъяснения.&nbsp;<br />
&nbsp;Подводя итоги пресс-конференции, Министр финансов Республики Таджикистан Курбонов А.К. поблагодарил&nbsp;журналистов за активное участие и призвал представителей средств массовой&nbsp;информации&nbsp;к более тесному сотрудничеству, подчеркнув&nbsp;о том, что каждый журналист&nbsp;в любое&nbsp;время&nbsp; может обратиться по интересующей&nbsp;их информации&nbsp;в Министерство финансов Республики Таджикистан&nbsp;в удобной для них форме: в письменной, в виде диалога или через сайт Министерства финансов Республики Таджикистан, а также отметил, что в министерстве с начала нынешнего года установлен телефон доверия&nbsp; 227-86-09.&nbsp;</p>

<p>&nbsp; На пресс-конференции приняли участие: начальник Управления финансов Исполнительного аппарата Президента Республики Таджикистан Джабборов О.А., заместители Министра финансов и руководители &nbsp;&nbsp;структурных &nbsp;&nbsp;подразделений Министерства финансов Республики Таджикистан.</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p>Министерства финансов</p>

<p><strong>Республики Таджикистан</strong>&nbsp;</p>
', N'1391430608_pressa2014.jpg', CAST(N'2015-04-13 22:35:04.070' AS DateTime), CAST(N'2014-03-03 00:00:00.000' AS DateTime), 12, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (47, N'Семинары-тренинги на тему: «Исполнение расходной части бюджета с учетом новых функций Центрального казначейства с использованием новой информационной системы SGB.net»', N' В ноябре-декабре 2013 г. в Министерстве финансов Республики Таджикистан были проведены семинары-тренинги на тему: «Исполнение расходной части бюджета с учетом новых функций Центрального казначейства с использованием новой информационной системы SGB.net».', N'<p>&nbsp; В ноябре-декабре 2013 г. в Министерстве финансов Республики Таджикистан были проведены семинары-тренинги на тему: &laquo;Исполнение расходной части бюджета с учетом новых функций Центрального казначейства с использованием новой информационной системы&nbsp;SGB.net&raquo;.<br />
&nbsp; С 4 по 23 ноября &nbsp;2013 года семинары-тренинги были проведены для&nbsp; специалистов Главных распорядителей бюджетных средств и работников&nbsp; Центрального казначейства Министерства финансов Республики Таджикистан, а с &nbsp;25 ноября по 27 декабря 2013 года &nbsp; для&nbsp; специалистов Главных распорядителей бюджетных средств и работников казначейств финансовых органов Республики Таджикистан.</p>

<p>&nbsp; Данные семинары проводятся в рамках мероприятий по подготовке специалистов бюджетных организаций и казначейств по исполнению доходной и расходной части государственного бюджета на&nbsp; 2014 год специалистами &ndash; практиками государственного сектора, с реальным вводом данных&nbsp; в новую автоматизированную систему по обслуживанию бюджета&nbsp;SGB.net.</p>

<p>&nbsp; Семинары-тренинги проводятся в рамках Проекта Всемирного банка &laquo;Модернизация управления государственными финансами &ndash; поддержка управления обучением&raquo; консультантами компаний&nbsp;WYG&nbsp;International,&nbsp;CIPFA,&nbsp;ISD&nbsp;Консалтинг, специалистами Центрального казначейства<a name="_GoBack"></a>&nbsp;и ПМУГФ.&nbsp;&nbsp;</p>

<p>&nbsp;&nbsp;В январе-феврале 2014 г. данные семинары &ndash;тренинги будут продолжены.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>&nbsp;Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>

<p>&nbsp;</p>
', N'1390209618_2222.jpg', CAST(N'2015-04-13 22:36:16.000' AS DateTime), CAST(N'2014-01-20 00:00:00.000' AS DateTime), 4, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (48, N'Коллегия в Министерстве финансов Республики Таджикистан по итогам 2013 года', N' 9 января 2014 года в Министерстве финансов Республики Таджикистан прошла расширенная коллегия по итогам 2013 года.', N'<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td>
			<p><strong class="c-ext-Select-like-a-Boss">&nbsp;&nbsp; 9</strong><strong>&nbsp;января 201</strong><strong>4</strong><strong>&nbsp;года&nbsp;</strong>в Министерстве финансов Республики Таджикистан прошла расширенная коллегия по итогам 2013&nbsp;года.</p>

			<p>&nbsp;</p>

			<p>&nbsp; По вопросу повестки дня &laquo;Об итогах финансовой деятельности и исполнения Государственного бюджета Республики Таджикистан в 2013&nbsp;году и задачах по эффективному развитию и управлению&nbsp; государственными&nbsp; финансами&nbsp; в&nbsp; 2014&nbsp; году&nbsp; с&nbsp; докладом&nbsp; выступил&nbsp; заместитель Министра финансов Республики Таджикистан Наими А.К.</p>

			<p>&nbsp;</p>

			<p>&nbsp; На коллегии были заслушаны отчёты руководителей финансовых управлений областей, городов и районов страны и других подведомственных организации Министерстве финансов Республики Таджикистан о проделанной работе в 2013 отчётном году и предстоящих задачах в 2014 году. На коллегии свои мнения, предложения и пожелания высказали руководители ряда министерств и ведомств&nbsp; страны.</p>

			<p>&nbsp;</p>

			<p>&nbsp;&nbsp; По вопросам повестки дня, с учётом замечаний и предложений были&nbsp; приняты соответствующие решения.</p>

			<p>&nbsp;</p>

			<p>&nbsp;Подводя итоги коллегии, Министр финансов Республики Таджикистан Курбонов А.К. дал ответственным работникам системы Министерства финансов Республики Таджикистан конкретные задания, требующие своевременного и качественного исполнения Государственного бюджета в 2014 году, подчеркнув о том, что все руководители финансовых органов и подведомственных организаций министерства должны приложить максимум усилий для выполнения задач, поставленных Правительством Республики Таджикистан.</p>

			<p>&nbsp;</p>

			<p>&nbsp; На заседании коллегии приняли участие: Заведующий отделом финансов Исполнительного Аппарата Президента Республики Таджикистан&nbsp;<strong>Джабборов О. А.</strong>, заместитель председателя Налогового комитета при Правительстве Республики Таджикистан&nbsp;<strong>Юсупов П.С.,</strong>&nbsp;первый заместитель руководителя&nbsp; Таможенной службы при Правительстве Республики Таджикистан&nbsp;<strong>Рахматов Н.С.,</strong>&nbsp;заместитель директора Агентства социального страхования и пенсий при Правительстве Республики Таджикистан&nbsp;<strong>Шарипов Ф.</strong></p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><strong>Секретариат</strong></p>

			<p><strong>Министерства финансов</strong></p>

			<p><strong>Республики Таджикистан</strong></p>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
', N'1389347823_rjkktubz-2014.jpg', CAST(N'2015-04-13 22:37:23.890' AS DateTime), CAST(N'2014-01-10 00:00:00.000' AS DateTime), 9, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (49, N'Финансовое управление и контроль', N' В Министерстве финансов Республики Таджикистан в рамках проекта Европейской комиссии «Поддержка Государственного внутреннего финансового контроля II в Таджикистане» в Министерстве финансов Республики Таджикистан был проведен семинар на тему «Финансовое управление и контроль». ', N'<p>&nbsp; В Министерстве финансов Республики Таджикистан в рамках проекта Европейской комиссии &laquo;Поддержка Государственного внутреннего финансового контроля&nbsp;II&nbsp;в Таджикистане&raquo; в Министерстве финансов Республики Таджикистан был проведен семинар на тему &laquo;Финансовое управление и контроль&raquo;. На данном семинаре приняли участие руководители финансовых управлений и внутренние аудиторы министерств и ведомств. На семинаре был представлен комментарий к Закону Республики Таджикистан &laquo;О финансовом управлении и внутреннем контроле в государственном секторе&raquo;, подготовленный профессором Государственного Национального университета Гаюровым Ш. при финансовой поддержке проекта Европейской комиссии &laquo;Поддержка Государственного внутреннего финансового контроля&nbsp;II&nbsp;в Таджикистане&raquo;.</p>

<p>&nbsp; Настоящий комментарий предназначен прежде всего, руководителям организаций государственного сектора, сотрудникам правоохранительных органов и иным государственным служащим, интересующимся вопросами финансового управления и внутреннего контроля в государственном секторе. Данный комментарий доступен для всех интересующихся лиц на сайте Министерства финансов Республики Таджикистан:&nbsp;www.&nbsp;minfin.tj.</p>

<p>&nbsp;Руководитель проекта г-жа Ваня Томева ознакомила участников семинара о достигнутых результатах проекта за период с 2011 по 2013 годы. В частности она отметила, что совместными усилиями проекта и Управления внутреннего аудита и контроля Министерства финансов Республики Таджикистан заметно улучшился уровень внутреннего контроля в ряде процессах. Через которые осуществляется управление государственными финансами за счет разработки и внедрения новой нормативной базы, автоматизации, повышенных требований к подотчетности и функционирования внутреннего аудита.</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1386905446_5.jpg', CAST(N'2015-04-13 22:41:21.683' AS DateTime), CAST(N'2013-12-13 00:00:00.000' AS DateTime), 9, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (50, N'Торжественное собрание, посвященное «Дню профессионального праздника работников Финансовой системы Республики Таджикистан»	  	', N'6 декабря 2013 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню профессионального праздника работников финансовой системы Республики Таджикистан. ', N'<table border="0" cellpadding="0" cellspacing="0" style="width:100%">
	<tbody>
		<tr>
			<td>
			<p><strong class="c-ext-Select-like-a-Boss">&nbsp;6 декабря 2013 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное&nbsp;&laquo;Дню профессионального праздника работников финансовой системы Республики Таджикистан.&nbsp;</p>

			<p>&nbsp;Министр финансов Республики Таджикистан Курбонов А.К. поздравил коллективы Министерства финансов Республики Таджикистан и подведомственных ему организаций c профессиональным праздником финансистов, пожелав всем успехов в работе, здоровья и счастья в личной и семейной жизни.&nbsp;</p>

			<p>&nbsp;С докладом, посвященным &laquo;Дню профессионального праздника работников финансовой системы Республики Таджикистан&raquo; выступил заместитель Министра финансов Республики Таджикистан Хакимов Р.А.</p>

			<p>&nbsp;На собрании с праздничными поздравлениями и пожеланиями выступили: работник Главного Управления Центрального казначейства министерства&nbsp; Нуралиев А. и начальник юридического отдела министерства Саидмуродов Б.Б.&nbsp;</p>

			<p>&nbsp;В заключении торжественного собрания Министр финансов Республики Таджикистан Курбонов А.К.&nbsp;выразил уверенность в том, что работники финансовой системы страны приложат все свои усилия для выполнения поставленных перед ними&nbsp; задач и добьются высоких результатов в своей повседневной работе.</p>

			<p>&nbsp;</p>

			<p>&nbsp;</p>

			<p><br />
			&nbsp;</p>

			<p><strong>Секретариат&nbsp;<br />
			Министерства финансов<br />
			Республики Таджикистан</strong></p>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>
', N'1386326003_123333.jpg', CAST(N'2015-04-13 22:42:24.017' AS DateTime), CAST(N'2013-12-06 00:00:00.000' AS DateTime), 9, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (51, N'Торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан»', N' 22 ноября 2013 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан».', N'<p><strong class="c-ext-Select-like-a-Boss">&nbsp;22</strong><strong>&nbsp;ноября 201</strong><strong>3</strong><strong>&nbsp;года</strong>&nbsp;в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное &laquo;Дню Государственного Флага Республики Таджикистан&raquo;.</p>

<p>&nbsp;Первый заместитель Министра финансов Республики Таджикистан Нуралиев Дж.К. открыв торжественное собрание, поздравил коллективы Министерства финансов и подведомственных ему организаций и учреждений с этой знаменательной датой, пожелав всем успехов и высоких результатов в работе, в частности, отметил о значимости &laquo;Дня Государственного Флага Республики Таджикистан&raquo;, который ежегодно отмечается в стране 24 ноября.</p>

<p>&nbsp; C&nbsp;докладом, посвященным &laquo;Дню Государственного Флага Республики Таджикистан&raquo; выступил заместитель Министра финансов Республики Таджикистан Хакимов Р.А.</p>

<p>&nbsp;На собрании выступили и поздравили своих коллег сотрудники Министерства финансов Республики Таджикистан Насриддинов Мурсал, Холикова Зарина, Шорахмонова Рухшона, Саидов Дилшод, Садуллоева Махбуба, Мухиддинова Фарзона, Саидмуродов Баходур, Раджабов Атоулло. &nbsp;</p>

<p>&nbsp;В заключении торжественного собрания Первый заместитель Министра финансов Республики Таджикистан Нуралиев Дж.К., выразил признательность работникам министерства за активное участие и содержательные выступления, отметив, что &laquo;День Государственного Флага Республики Таджикистан&raquo; отмечается в стране, как одно из исторических и знаменательных событий в жизни таджикского народа и страны, целью которого является дань уважения и почитания к этому государственному атрибуту, как одной из святынь и основных символов государства, которые сплачивают нацию, выражают дух народа, символизируют его славное прошлое, настоящее и будущее.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат&nbsp;<br />
Министерства финансов&nbsp;</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1385121118_32131321321212.jpg', CAST(N'2015-04-13 22:43:23.710' AS DateTime), CAST(N'2013-11-22 00:00:00.000' AS DateTime), 8, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (52, N'Встреча Министра финансов Республики Таджикистан с представителями Всемирного банка', N'14 ноября 2013 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Нажмудинова С.М.  с Постоянным представителем Всемирного банка в Таджикистане г-жой Марша Олив.', N'<p><strong>14 ноября 2013 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Нажмудинова С.М.&nbsp;&nbsp;с&nbsp;Постоянным представителем Всемирного банка в Таджикистане г-жой Марша Олив.</p>

<p>В&nbsp; ходе встречи,&nbsp; которая прошла в конструктивной обстановке, состоялся обмен мнениями по актуальным вопросам и перспективам сотрудничества в финансовой и других сферах деятельности.<br />
Стороны уделили особое внимание вопросам энергетического сектора в Таджикистане, в частности относительно технико-экономического обоснования строительства высоковольтной линии электропередач САSA&ndash;1000, отметив, что проект является перспективным и высокоокупаемым и, что данная инициатива является важным и своевременным шагом на пути всестороннего укрепления сотрудничества в регионе.</p>

<p>Также, стороны обсудили вопросы реализации предстоящих совместных программ и необходимость координации взаимоотношений Таджикистана с Всемирным банком, Азиатским банком развития, МВФ и другими международными финансовыми и банковскими организациями.</p>

<p>Было отмечено, что все меры предпринимаемые Правительством Республики Таджикистан направлены на снижение уровня бедности и повышение роста благосостояния народа страны.</p>

<p>Министр финансов Республики Таджикистан г-н Нажмудинов С.М. выразив признательность&nbsp;Постоянному&nbsp;&nbsp;представителю Всемирного банка в Таджикистане г-же Марша Олив, отметил, что за время сотрудничества с Всемирным банком, в особенности в части проведения реформ в финансовых секторах Республики Таджикистан был, достигнут значительный прогресс, и выразил уверенность в том, что сотрудничество с Всемирным банком и в дальнейшем&nbsp; будет развиваться и расширяться.</p>

<p>На встрече принял участие руководитель проекта&nbsp;CASA-1000,&nbsp;Руководитель энергетической программы по Центральной Азии Всемирного банка г-н Сунил Кумар Хосла.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1384421329_vb1413.jpg', CAST(N'2015-04-13 22:55:23.880' AS DateTime), CAST(N'2013-11-14 00:00:00.000' AS DateTime), 8, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (53, N'Очередное заседание руководящего Комитета Программы Поддержки человеческого развития', N' 4 ноября 2013 года в Министерстве финансов Республики Таджикистан под председательством Министра финансов Республики Таджикистан - Председателя руководящего Комитета г-на Нажмудинова С.М состоялось очередное заседание руководящего Комитета Программы Поддержки Человеческого развития, реализуемой Правительством Республики Таджикистан совместно с Европейским Союзом. ', N'<p><strong>&nbsp;4 ноября 2013 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан под председательством Министра финансов Республики Таджикистан - Председателя руководящего Комитета г-на Нажмудинова С.М состоялось очередное заседание руководящего Комитета Программы Поддержки Человеческого развития, реализуемой Правительством Республики Таджикистан совместно с Европейским Союзом.&nbsp;&nbsp;</p>

<p>&nbsp; На встрече приняли &nbsp;участие представители Европейского Союза под руководством Посла, Главы представительства Европейского Союза в Республике Таджикистан г-на Эдуарда Ауэра.</p>

<p>&nbsp;В ходе заседания Руководящего Комитета был заслушан отчет о предварительной оценке обзорной миссии Европейского Союза по выполнению условий Программы поддержки человеческого развития, которая охватывает реализацию институциональных реформ, в таких секторах как: управление государственными финансами, здравоохранение и социальная защита населения.</p>

<p>&nbsp;На заседании по основным компонентам совместной программы с информациями выступили: Министр труда и социальной защиты&nbsp; населения Республики Таджикистан г-н Мадаминов М.Б., Первый заместитель Министра здравоохранения Республики Таджикистан г-жа Джабирова С.Б., заместитель Министра финансов Республики Таджикистан г-н Сохибов Ш.К.</p>

<p>&nbsp;Подводя итоги заседания, Министр финансов Республики Таджикистан &ndash; Председатель руководящего Комитета г-н Нажмудинов С.М. поблагодарил членов Руководящего Комитета за активную работу, а также выразив признательность Главе делегации&nbsp;г-ну Эдуарду Ауэру, отметил эффективность сотрудничества с Европейским Союзом в части проведения реформ в Республике Таджикистан и выразил уверенность&nbsp;в том, что сотрудничество с Европейским Союзом и в дальнейшем будет плодотворно развиваться и расширяться.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1383652102_555.jpg', CAST(N'2015-04-13 22:56:35.000' AS DateTime), CAST(N'2013-11-05 00:00:00.000' AS DateTime), 8, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (55, N'Торжественное собрание, посвященное 19-й годовщине Конституции Республики Таджикистан', N'4 ноября 2013 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное 19-й годовщине Конституции Республики Таджикистан.', N'<p><strong>4 ноября 2013 года&nbsp;</strong>в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное 19-й&nbsp;годовщине Конституции Республики Таджикистан.&nbsp;</p>

<p>С докладом, посвященным 19й&nbsp;годовщине Конституции Республики Таджикистан выступил&nbsp; Министр финансов Республики Таджикистан Нажмудинов С.М.&nbsp;</p>

<p>Министр финансов в ходе своего выступления напомнил о первых тяжелых днях государственной независимости Таджикистана, в том числе парализованности основ государственной власти, всеобщем хаосе и последствиях разрушительной внутренней войны, отметил, что разработка и принятие путем всенародного референдума Конституции независимой Республики Таджикистан в то тяжелое время стало фактором укрепления основ новой государственности таджиков и подчеркнул, что Конституция Таджикистана, как выразитель воли и путеводитель народа, действительно является судьбоносным документом, определяющим систему государственности, обеспечивающим защиту прав и свобод человека и гражданина.</p>

<p>&nbsp;&nbsp;Затем&nbsp; Министр финансов Республики Таджикистан Нажмудинов С.М. поздравив коллективы Министерства финансов Республики Таджикистан и подведомственных ему организации с этой знаменательной датой, пожелал всем &nbsp;крепкого здоровья, семейного счастья&nbsp; и&nbsp; &nbsp;успехов в повседневной &nbsp;работе.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1383570088_sarkonun.jpg', CAST(N'2015-04-13 22:59:18.233' AS DateTime), CAST(N'2013-11-04 00:00:00.000' AS DateTime), 5, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (56, N'Очередное заседание Совета Инициативы прозрачности добывающих отраслей в Таджикистане', N'1 ноября 2013 года в Министерстве финансов Республики Таджикистан под председательством заместителя Министра финансов Республики Таджикистан –председателя Совета ИПДО Таджикистана г-на Хакимова Р.А. было проведено шестое заседание Совета Инициативы прозрачности в добывающих отраслях (ИПДО) в Таджикистане.', N'<p><strong class="c-ext-Select-like-a-Boss">1 ноября 2013 года</strong>&nbsp;в Министерстве финансов Республики Таджикистан под председательством заместителя Министра финансов Республики Таджикистан &ndash;председателя Совета ИПДО Таджикистана&nbsp;г-на Хакимова Р.А. было проведено шестое заседание Совета Инициативы прозрачности в добывающих отраслях (ИПДО) в Таджикистане.</p>

<p>&nbsp;</p>

<p>&nbsp;На заседании Совета ИПДО рассматривались вопросы дальнейшего развития&nbsp;процесса внедрения ИПДО в Таджикистане. Основным вопросом заседания было рассмотрение Технического задания об исследовании охвата отчетности ИПДО в Таджикистане.&nbsp;Было принято решение одобрить Техническое задание и обратиться в Международный секретариат и Всемирный Банк для определения кандидатуры консультанта при проведении данного исследования.</p>

<p>&nbsp;</p>

<p>&nbsp; На Совете также рассматривался вопрос внесения изменений в&nbsp;Рабочий план Совета ИПДО с учетом изменения сроков реализации ИПДО.</p>

<p>&nbsp;</p>

<p>&nbsp; Было принято решение включить в Рабочий план&nbsp;графики со сроками для отчетности ИПДО и проведения валидации Таджикистана для получения статуса страны-последователя ИПДО, а также проведения анализа правовой основы Инициативы.&nbsp;&nbsp;</p>

<p>&nbsp; В связи с этим, создана рабочая группа для доработки Рабочего плана.</p>

<p>&nbsp;На заседании было рассмотрено предложение Международного Секретариата ИПДО о возможности&nbsp;участия Таджикистана в экспериментальном проекте по раскрытию информации о бенефициарном праве. Общая цель этого экспериментального проекта состоит в оценке возможности требовать раскрытия информации о бенефициарном праве и выработку соответствующих подходов к ее раскрытию посредством ИПДО.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;Была представлена информация об итогах регионального семинара ИПДО для Центральной Азии, прошедшего с 7 по 9 октября текущего года&nbsp;&nbsp;в городе Астане (Казахстан), на котором приняли участие члены Совета ИПДО Таджикистана.</p>

<p>&nbsp;&nbsp;Подводя итоги заседания, заместитель Министра финансов Республики Таджикистан &ndash;председатель Совета ИПДО Таджикистана г-н Хакимов Р.А.&nbsp;отметил о необходимости своевременной подготовки всех запланированных мероприятий до&nbsp;приезда миссии Всемирного банка.&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1383367569_ipdo.jpg', CAST(N'2015-04-13 23:00:42.757' AS DateTime), CAST(N'2013-11-02 00:00:00.000' AS DateTime), 5, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (57, N'Встреча Министра финансов Республики Таджикистан с Чрезвычайным и Полномочным Послом Соединённых Штатов Америки в Республике Таджикистан', N' 31 октября 2013 года в Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Нажмудинова С.М.  с Чрезвычайным  и Полномочным  Послом  Соединённых Штатов Америки  в Республике Таджикистане  г-жой Сьюзан Эллиотт.', N'<p><strong class="c-ext-Select-like-a-Boss">&nbsp; 31 октября 2013 года&nbsp;</strong>в&nbsp;Министерстве финансов Республики Таджикистан состоялась встреча Министра финансов Республики Таджикистан г-на Нажмудинова С.М.&nbsp; с Чрезвычайным&nbsp; и Полномочным&nbsp; Послом&nbsp; Соединённых Штатов Америки&nbsp; в Республике Таджикистане&nbsp; г-жой Сьюзан Эллиотт.</p>

<p>&nbsp;&nbsp;&nbsp;В&nbsp; ходе встречи,&nbsp; которая прошла в конструктивной обстановке, состоялся обмен мнениями по актуальным вопросам и перспективам сотрудничества обеих&nbsp; стран&nbsp; в финансовой и других сферах деятельности.</p>

<p>&nbsp;</p>

<p>&nbsp;&nbsp;Стороны уделили особое внимание вопросам энергетического сектора в Таджикистане, в частности относительно технико-экономического обоснования строительства высоковольтной линии электропередач САSA&ndash;1000, отметив, что данная инициатива является важным и своевременным шагом на пути всестороннего укрепления сотрудничества в регионе.</p>

<p>&nbsp; В ходе встречи стороны также обсудили вопросы, касающиеся вхождения Республики Таджикистан во Всемирную Торговую Организацию (ВТО) и получения Республикой Таджикистан статуса страны кандидата Инициативы прозрачности в добывающих отраслях (ИПДО) и содействия республике по данным направлениям со стороны США.</p>

<p>&nbsp; Особое внимание было уделено вопросам двухсторонних отношений и перспективам развития сотрудничества Таджикистана и США в сфере торговли, подготовки и переподготовки квалифицированных кадров, а также&nbsp; внедрения новых технологий и передового опыта США в различных сферах экономики Таджикистана.<br />
&nbsp; Министр финансов Республики Таджикистан г-н Нажмудинов С.М. подводя итоги встречи, отметил, что все меры предпринимаемые Правительством Республики Таджикистан направлены на повышение роста&nbsp; благосостояния народа страны и, что Таджикистан заинтересован в дальнейшем более тесном сотрудничестве с Соединенными Штатами Америки и выразил признательность Чрезвычайному и Полномочному Послу США в Таджикистане г-же Сьюзан Эллиотт за конструктивную беседу, выразив уверенность в благоприятных перспективах&nbsp; сотрудничества между Таджикистаном и Соединёнными Штатами Америки.</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p><strong>Секретариат</strong></p>

<p><strong>Министерства финансов</strong></p>

<p><strong>Республики Таджикистан</strong></p>
', N'1383281143_ssha.jpg', CAST(N'2015-04-13 23:01:39.107' AS DateTime), CAST(N'2013-11-01 00:00:00.000' AS DateTime), 5, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (60, N'Торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан»', N'24 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан».', N'24 ноября 2014 года в Министерстве финансов Республики Таджикистан состоялось торжественное собрание, посвященное «Дню Государственного Флага Республики Таджикистан».', N'1416829350_parcham.jpg', CAST(N'2015-01-19 21:34:36.867' AS DateTime), CAST(N'2014-12-03 00:00:00.000' AS DateTime), 5, 1, NULL, 1)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (61, N'Test', N'habfabfhabfhasfafa', N'<p>asfafasfasfasfasfasfasfsafsasadgsdgsgs</p>
', N'windows_69.jpg', CAST(N'2015-11-11 13:56:47.000' AS DateTime), CAST(N'2015-11-11 00:00:00.000' AS DateTime), 1, 1, NULL, 14)
INSERT [dbo].[tb_news] ([id], [title], [descriptoin], [text], [image], [create_date], [event_date], [type_id], [is_active], [is_important], [tb_organization_Id]) VALUES (62, N'New ', N'New New new ', N'<p>new new new</p>
', N'white_sea.jpg', CAST(N'2015-11-11 14:08:41.000' AS DateTime), CAST(N'2015-12-11 00:00:00.000' AS DateTime), 1, 1, NULL, 2)
SET IDENTITY_INSERT [dbo].[tb_news] OFF
SET IDENTITY_INSERT [dbo].[tb_news_type] ON 

INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (1, N'Новости', N'Основные новости МФ РТ', 1, 1, 1)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (2, N'Важное', N'Срочные, отоброжаются в слайдере', 1, 0, 1)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (3, N'Публикации', N'Публикации МФ РТ', 1, 0, 1)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (4, N'Анонсы', N'Анонсы по печатным изданиям', 1, 1, 1)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (5, N'Ахбор', NULL, 1, 1, 3)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (6, N'Фавран', NULL, 1, 1, 3)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (7, N'Нашриёт', NULL, 1, 1, 3)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (8, N'Эълонҳо', NULL, 1, 1, 3)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (9, N'News', NULL, 1, 1, 2)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (10, N'Urgent', NULL, 1, 1, 2)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (11, N'Publications', NULL, 1, 1, 2)
INSERT [dbo].[tb_news_type] ([id], [name], [description], [is_active], [show_on_main], [lang]) VALUES (12, N'Announcements', NULL, 1, 1, 2)
SET IDENTITY_INSERT [dbo].[tb_news_type] OFF
SET IDENTITY_INSERT [dbo].[tb_organization] ON 

INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (1, N'Министерство Финансов', N'moliya.tj', N'moliya', 1, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (2, N'Главное управление центрального казначейства', N'hazina.moliya.tj', N'hazina', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (3, N'Государственный пробирный надзор (Госпробирнадзор) при Министерстве финансов Республики Таджикистан', N'ndi.moliya.tj', N'ndi', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (4, N'Государственное хранилище ценностей (Гохран) при Министерстве финансов Республики Таджикистан', N'hsd.moliya.tj', N'hsd', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (5, N'Государственная служба страхового надзора (Госстрахнадзор) при Министерстве финансов Республики Таджикистан', N'sugurta.moliya.tj', N'sugurta', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (6, N'Агентство по развитию рынка ценных бумаг и специализированного регистратора при Министерстве финансов Республики Таджикистан', N'akk.moliya.tj', N'akk', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (7, N'Институт финансов и экономики Таджикистана', N'donishkada.moliya.tj', N'donishkada', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (8, N'Научно-исследовательский институт "Финансы"', N'ilm.moliya.tj', N'ilm', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (9, N'Редакция журнала "Молия ва хисобдори" Министерства финансов Республики Таджикистан', N'majala.moliya.tj', N'majala', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (10, N'Центр повышения квалификации работников системы финансов', N'mti.moliya.tj', N'mti', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (11, N'Государственное казенное республиканское предприятие "Тиллои Точик"', N'tilloi-tojik.moliya.tj', N'tilloi-tojik', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (12, N'Государственная страховая компания "Таджиксармоягузор"', N'sarmoyaguzor.moliya.tj', N'sarmoyaguzor', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (13, N'Отдел капитального строительства Министерства финансов Республики Таджикистан', N'.moliya.tj', N'', 8, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (14, N'Главное управление финансов города Душанбе', N'gorfu.moliya.tj', N'gorfu', 1, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (15, N'Управление финансов района Шохмансур города Душанбе', N'shohmansur.moliya.tj', N'shohmansur', 1, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (16, N'Управление финансов района Исмоили Сомони города Душанбе', N'somoni.moliya.tj', N'somoni', 1, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (17, N'Управление финансов района Фирдавси города Душанбе', N'firdavsi.moliya.tj', N'firdavsi', 1, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (18, N'Управление финансов района Сино города Душанбе', N'sino.moliya.tj', N'sino', 1, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (19, N'Финансовое управление города Вахдат', N'vahdat.moliya.tj', N'vahdat', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (20, N'Финансовое управление города Рогун', N'rogun.moliya.tj', N'rogun', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (21, N'Финансовое управление города Турсунзаде', N'tursunzoda.moliya.tj', N'tursunzoda', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (22, N'Финансовое управление Варзобского района', N'varzob.moliya.tj', N'varzob', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (23, N'Финансовое управление Раштского района', N'rasht.moliya.tj', N'rasht', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (24, N'Финансовое управление Гиссарского района', N'hisor.moliya.tj', N'hisor', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (25, N'Финансовое управление Джиргитальского района', N'jirgatol.moliya.tj', N'jirgatol', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (26, N'Финансовое управление Нурободского района', N'nurobod.moliya.tj', N'nurobod', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (27, N'Финансовое управление района Рудаки', N'rudaki.moliya.tj', N'rudaki', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (28, N'Финансовое управление Тавильдаринского района', N'tavildara.moliya.tj', N'tavildara', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (29, N'Финансовое управление Файзабадского района', N'faizobod.moliya.tj', N'faizobod', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (30, N'Финансовое управление Шахринавского района', N'shahrinav.moliya.tj', N'shahrinav', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (31, N'Финансовое управление Таджикабадского района', N'tojikobod.moliya.tj', N'tojikobod', 2, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (32, N'Главное управление финансов Горно - Бадахшанской автономной области', N'gbao.moliya.tj', N'gbao', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (33, N'Управление финансов города Хорог', N'khorug.moliya.tj', N'khorug', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (34, N'Управление финансов Ванчского района', N'vanj.moliya.tj', N'vanj', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (35, N'Управление финансов Дарвазского района', N'darvоz.moliya.tj', N'darvоz', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (36, N'Управление финансов Ишкашимского района', N'ishkoshim.moliya.tj', N'ishkoshim', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (37, N'Управление финансов Мургабского района', N'murgob.moliya.tj', N'murgob', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (38, N'Управление финансов Рошткалинского района', N'roshtkala.moliya.tj', N'roshtkala', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (39, N'Управление финансов Рушанского района', N'rushon.moliya.tj', N'rushon', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (40, N'Управление финансов Шугнанского района', N'shugnon.moliya.tj', N'shugnon', 5, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (41, N'Главное управление финансов Хатлонской области', N'khatlon.moliya.tj', N'khatlon', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (42, N'Главное управление финансов по Кулябской региональной зоне', N'kulob-zone.moliya.tj', N'kulob-zone', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (43, N'Управление финансов города Курган -тюбе', N'kurgonteppa.moliya.tj', N'kurgonteppa', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (44, N'Управление финансов города Куляб', N'kulob.moliya.tj', N'kulob', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (45, N'Управление финансов города Нурек', N'norak.moliya.tj', N'norak', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (46, N'Управление финансов города Сарбанд', N'sarband.moliya.tj', N'sarband', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (47, N'Управление финансов Бальджуванского района', N'baljuvon.moliya.tj', N'baljuvon', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (48, N'Управление финансов Бохтарского района', N'bokhtar.moliya.tj', N'bokhtar', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (49, N'Управление финансов Вахшского района', N'vakhsh.moliya.tj', N'vakhsh', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (50, N'Управление финансов Восейского района', N'vose.moliya.tj', N'vose', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (51, N'Управление финансов Дангаринского района', N'dangara.moliya.tj', N'dangara', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (52, N'Управление финансов Джиликульского района', N'jilikul.moliya.tj', N'jilikul', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (53, N'Управление финансов района Кубодиён', N'kubodiyon.moliya.tj', N'kubodiyon', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (54, N'Управление финансов района Джалолиддина Руми', N'j-rumi.moliya.tj', N'j-rumi', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (55, N'Управление финансов района Темурмалик', N'temurmalik.moliya.tj', N'temurmalik', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (56, N'Управление финансов Кумсангирского района', N'kumsangir.moliya.tj', N'kumsangir', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (57, N'Управление финансов Муминабадского района', N'muminobod.moliya.tj', N'muminobod', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (58, N'Управление финансов Пянджского района', N'panj.moliya.tj', N'panj', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (59, N'Управление финансов Фархорского района', N'farkhor.moliya.tj', N'farkhor', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (60, N'Управление финансов района Мир Сайид Алии Хамадони', N'khamadoni.moliya.tj', N'khamadoni', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (61, N'Управление финансов Ховалингского района', N'khovaling.moliya.tj', N'khovaling', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (62, N'Управление финансов района Хуросон', N'khuroson.moliya.tj', N'khuroson', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (63, N'Управление финансов района Носири Хусрав', N'n-khusrav.moliya.tj', N'n-khusrav', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (64, N'Управление финансов района Абдурахмона Джами', N'a-jomi.moliya.tj', N'a-jomi', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (65, N'Управление финансов Шаартузского района', N'shahritus.moliya.tj', N'shahritus', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (66, N'Управление финансов Шуроободского района', N'shurobod.moliya.tj', N'shurobod', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (67, N'Управление финансов Яванского района', N'yovon.moliya.tj', N'yovon', 6, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (68, N'Главное управление финансов Согдийской области', N'sugd.moliya.tj', N'sugd', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (69, N'Управление финансов города Исфара', N'isfara.moliya.tj', N'isfara', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (70, N'Управление финансов города Истаравшан', N'istaravshan.moliya.tj', N'istaravshan', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (71, N'Управление финансов города Канибадам', N'konibodom.moliya.tj', N'konibodom', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (72, N'Управление финансов города Кайраккум', N'kayrokkum.moliya.tj', N'kayrokkum', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (73, N'Управление финансов города Пенджикент', N'panjakent.moliya.tj', N'panjakent', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (74, N'Управление финансов города Истиклол', N'istiklol.moliya.tj', N'istiklol', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (75, N'Управление финансов города Худжанд', N'khujand.moliya.tj', N'khujand', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (76, N'Управление финансов города Чкаловск', N'chkalovsk.moliya.tj', N'chkalovsk', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (77, N'Управление финансов Айнинского района', N'ayni.moliya.tj', N'ayni', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (78, N'Управление финансов Аштского района', N'asht.moliya.tj', N'asht', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (79, N'Управление финансов Бободжон Гафуровского района', N'b-gafurov.moliya.tj', N'b-gafurov', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (80, N'Управление финансов Ганчинского района', N'gonchi.moliya.tj', N'gonchi', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (81, N'Управление финансов Зафарабадского района', N'zafarobod.moliya.tj', N'zafarobod', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (82, N'Управление финансов Кухистони Мастчохского района', N'kh-mastchoh.moliya.tj', N'kh-mastchoh', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (83, N'Управление финансов Матчинского района', N'mastchoh.moliya.tj', N'mastchoh', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (84, N'Управление финансов Джаббор Расуловского района', N'j-rasulov.moliya.tj', N'j-rasulov', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (85, N'Управление финансов района Спитамен', N'spitamen.moliya.tj', N'spitamen', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (86, N'Управление финансов Шахристанского района', N'shakhriston.moliya.tj', N'shakhriston', 7, 1)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (87, N'Раёсати молияи шаҳри Исфара
', N'isfara.moliya.tj', N'isfara', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (88, N'Раёсати молияи шаҳри Истаравшан
', N'istaravshan.moliya.tj', N'istaravshan', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (89, N'Раёсати молияи шаҳри Конибодом
', N'konibodom.moliya.tj', N'konibodom', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (90, N'Раёсати молияи шаҳри Қайроққум
', N'kayrokkum.moliya.tj', N'kayrokkum', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (91, N'Раёсати молияи шаҳри Панҷакент
', N'panjakent.moliya.tj', N'panjakent', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (92, N'Раёсати молияи шаҳри 
Истиклол', N'istiklol.moliya.tj', N'istiklol', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (93, N'Раёсати молияи шаҳри Хуҷанд
', N'khujand.moliya.tj', N'khujand', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (94, N'Раёсати молияи шаҳри Чкаловск
', N'chkalovsk.moliya.tj', N'chkalovsk', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (95, N'Раёсати молияи ноҳияи Айни
', N'ayni.moliya.tj', N'ayni', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (96, N'Раёсати молияи ноҳияи Ашт
', N'asht.moliya.tj', N'asht', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (97, N'Раёсати молияи ноҳияи Б.Ғафуров
', N'b-gafurov.moliya.tj', N'b-gafurov', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (98, N'Раёсати молияи ноҳияи Ғончи
', N'gonchi.moliya.tj', N'gonchi', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (99, N'Раёсати молияи ноҳияи Зафаробод
', N'zafarobod.moliya.tj', N'zafarobod', 7, 3)
GO
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (100, N'Раёсати молияи ноҳияи К.Мастчоҳ
', N'kh-mastchoh.moliya.tj', N'kh-mastchoh', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (101, N'Раёсати молияи ноҳияи Мастчоҳ
', N'mastchoh.moliya.tj', N'mastchoh', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (102, N'Раёсати молияи ноҳияи Ҷ.Расулов
', N'j-rasulov.moliya.tj', N'j-rasulov', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (103, N'Раёсати молияи ноҳияи Спитамен
', N'spitamen.moliya.tj', N'spitamen', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (104, N'Раёсати молияи ноҳияи Шаҳристон
', N'shakhriston.moliya.tj', N'shakhriston', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (249, N'Directorate of finance Sogd region', N'sugd.moliya.tj', N'sugd', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (250, N'Directorate of finance of Isfara
', N'isfara.moliya.tj', N'isfara', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (251, N'Directorate of finance of Istaravshan
', N'istaravshan.moliya.tj', N'istaravshan', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (252, N'Directorate of finance of Konibodom
', N'konibodom.moliya.tj', N'konibodom', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (253, N'Directorate of finance of Kairokkum
', N'kayrokkum.moliya.tj', N'kayrokkum', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (254, N'Directorate of finance of Panchakent
', N'panjakent.moliya.tj', N'panjakent', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (255, N'Directorate of finance of Istiklol', N'istiklol.moliya.tj', N'istiklol', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (256, N'Directorate of finance of Khujand
', N'khujand.moliya.tj', N'khujand', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (257, N'Directorate of finance of Chkalovsk
', N'chkalovsk.moliya.tj', N'chkalovsk', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (258, N'Directorate of finance of Ayni district
', N'ayni.moliya.tj', N'ayni', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (259, N'Directorate of finance of Asht district
', N'asht.moliya.tj', N'asht', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (260, N'Directorate of finance of B. Gafurov district
', N'b-gafurov.moliya.tj', N'b-gafurov', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (261, N'Directorate of finance of Ghonchi district
', N'gonchi.moliya.tj', N'gonchi', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (262, N'Directorate of finance of Zafarobod district
', N'zafarobod.moliya.tj', N'zafarobod', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (263, N'Directorate of finance of K. Mastchoh district
', N'kh-mastchoh.moliya.tj', N'kh-mastchoh', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (264, N'Directorate of finance of Mastchoh district
', N'mastchoh.moliya.tj', N'mastchoh', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (265, N'Directorate of finance of J. Rasulov district
', N'j-rasulov.moliya.tj', N'j-rasulov', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (266, N'Directorate of finance of Spitamen district
', N'spitamen.moliya.tj', N'spitamen', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (267, N'Directorate of finance of Shahriston district
', N'shakhriston.moliya.tj', N'shakhriston', 7, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (268, N'Раёсати молияи вилояти Сугд ', N'sugd.moliya.tj', N'sugd', 7, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (269, N'Directorate of finance of Khorog
', N'khorug.moliya.tj', N'khorug', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (270, N'Directorate of finance of Vanj district
', N'vanj.moliya.tj', N'vanj', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (271, N'Directorate of finance of Darvoz district 
', N'darvоz.moliya.tj', N'darvоz', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (272, N'Directorate of finance of Ishkoshim district
', N'ishkoshim.moliya.tj', N'ishkoshim', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (273, N'Directorate of finance of Murgob district 
', N'murgob.moliya.tj', N'murgob', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (274, N'Directorate of finance of Roshtkala district
', N'roshtkala.moliya.tj', N'roshtkala', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (275, N'Directorate of finance of Rushon district 
', N'rushon.moliya.tj', N'rushon', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (276, N'Directorate of finance of Shugnon district
', N'shugnon.moliya.tj', N'shugnon', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (277, N'Раёсати молияи шаҳри Хоруғ
', N'khorug.moliya.tj', N'khorug', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (278, N'Раёсати молияи ноҳияи Ванҷ
', N'vanj.moliya.tj', N'vanj', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (279, N'Раёсати молияи ноҳияи Дарвоз
', N'darvоz.moliya.tj', N'darvоz', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (280, N'Раёсати молияи ноҳияи Ишкошим
', N'ishkoshim.moliya.tj', N'ishkoshim', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (281, N'Раёсати молияи ноҳияи Мурғоб
', N'murgob.moliya.tj', N'murgob', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (282, N'Раёсати молияи ноҳияи Роштқала
', N'roshtkala.moliya.tj', N'roshtkala', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (283, N'Раёсати молияи ноҳияи Рушон
', N'rushon.moliya.tj', N'rushon', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (284, N'Раёсати молияи ноҳияи Шуғнон
', N'shugnon.moliya.tj', N'shugnon', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (285, N'Раёсати молияи Горно - Бадахшанской автономной области', N'gbao.moliya.tj', N'gbao', 5, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (286, N'Directorate of finance of GBAO
', N'gbao.moliya.tj', N'gbao', 5, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (287, N'Directorate of finance of Khatlon Province', N'khatlon.moliya.tj', N'khatlon', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (288, N'Directorate of finance of Kulob
 zone', N'kulob-zone.moliya.tj', N'kulob-zone', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (289, N'Directorate of finance of Qurghonteppa 
', N'kurgonteppa.moliya.tj', N'kurgonteppa', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (290, N'Directorate of finance of Kulob
', N'kulob.moliya.tj', N'kulob', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (291, N'Directorate of finance of Norak
', N'norak.moliya.tj', N'norak', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (292, N'Directorate of finance of Sarband
', N'sarband.moliya.tj', N'sarband', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (293, N'Directorate of finance of Baljuvon District
', N'baljuvon.moliya.tj', N'baljuvon', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (294, N'Directorate of finance of Bokhtar District
', N'bokhtar.moliya.tj', N'bokhtar', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (295, N'Directorate of finance of Vakhsh District
', N'vakhsh.moliya.tj', N'vakhsh', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (296, N'Directorate of finance of Vose District 
', N'vose.moliya.tj', N'vose', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (297, N'Directorate of finance of Danghara District
', N'dangara.moliya.tj', N'dangara', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (298, N'Directorate of finance of Jilikul District', N'jilikul.moliya.tj', N'jilikul', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (299, N'Directorate of finance of Qabodiyon District
', N'kubodiyon.moliya.tj', N'kubodiyon', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (300, N'Directorate of finance of j.Rumi District
', N'j-rumi.moliya.tj', N'j-rumi', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (301, N'Directorate of finance of Temurmalik District
', N'temurmalik.moliya.tj', N'temurmalik', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (302, N'Directorate of finance of Qumsangir District
', N'kumsangir.moliya.tj', N'kumsangir', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (303, N'Directorate of finance of Muminobod District
', N'muminobod.moliya.tj', N'muminobod', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (304, N'Directorate of finance of Panj District
', N'panj.moliya.tj', N'panj', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (305, N'Directorate of finance of Farkhor District
', N'farkhor.moliya.tj', N'farkhor', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (306, N'Directorate of finance of Hamadoni District
', N'khamadoni.moliya.tj', N'khamadoni', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (307, N'Directorate of finance of Khovaling District
', N'khovaling.moliya.tj', N'khovaling', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (308, N'Directorate of finance of Khuroson District
', N'khuroson.moliya.tj', N'khuroson', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (309, N'Directorate of finance of Nosiri Khusrav District
', N'n-khusrav.moliya.tj', N'n-khusrav', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (310, N'Directorate of finance of Jomi District
', N'a-jomi.moliya.tj', N'a-jomi', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (311, N'Directorate of finance of Shahrtuz District
', N'shahritus.moliya.tj', N'shahritus', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (312, N'Directorate of finance of Shuro-obod District
', N'shurobod.moliya.tj', N'shurobod', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (313, N'Directorate of finance of Yovon District
', N'yovon.moliya.tj', N'yovon', 6, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (314, N'Раёсати молияи вилояти Хатлон', N'khatlon.moliya.tj', N'khatlon', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (315, N'Главное управление финансов по Кулябской региональной зоне', N'kulob-zone.moliya.tj', N'kulob-zone', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (316, N'Раёсати молияи шаҳри Қӯрғонтеппа
', N'kurgonteppa.moliya.tj', N'kurgonteppa', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (317, N'Раёсати молияи шаҳри Кӯлоб
', N'kulob.moliya.tj', N'kulob', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (318, N'Раёсати молияи шаҳри Норак
', N'norak.moliya.tj', N'norak', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (319, N'Раёсати молияи шаҳри Сарбанд
', N'sarband.moliya.tj', N'sarband', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (320, N'Раёсати молияи ноҳияи Балҷувон
', N'baljuvon.moliya.tj', N'baljuvon', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (321, N'Раёсати молияи ноҳияи Бохтар
', N'bokhtar.moliya.tj', N'bokhtar', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (322, N'Раёсати молияи ноҳияи Вахш
', N'vakhsh.moliya.tj', N'vakhsh', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (323, N'Раёсати молияи ноҳияи Восе
', N'vose.moliya.tj', N'vose', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (324, N'Раёсати молияи ноҳияи Данғара
', N'dangara.moliya.tj', N'dangara', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (325, N'Раёсати молияи ноҳияи Ҷиликӯл
', N'jilikul.moliya.tj', N'jilikul', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (326, N'Раёсати молияи ноҳияи Қубодиён
', N'kubodiyon.moliya.tj', N'kubodiyon', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (327, N'Раёсати молияи ноҳияи Ҷ.Руми', N'j-rumi.moliya.tj', N'j-rumi', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (328, N'Раёсати молияи ноҳияи Темурмалик
', N'temurmalik.moliya.tj', N'temurmalik', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (329, N'Раёсати молияи ноҳияи Қумсангир
', N'kumsangir.moliya.tj', N'kumsangir', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (330, N'Раёсати молияи ноҳияи Мӯминобод
', N'muminobod.moliya.tj', N'muminobod', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (331, N'Раёсати молияи ноҳияи Панҷ
', N'panj.moliya.tj', N'panj', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (332, N'Раёсати молияи ноҳияи Фархор
', N'farkhor.moliya.tj', N'farkhor', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (333, N'Раёсати молияи ноҳияи Мир Саид Алии Ҳамадонӣ
', N'khamadoni.moliya.tj', N'khamadoni', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (334, N'Раёсати молияи ноҳияи Ховалинг
', N'khovaling.moliya.tj', N'khovaling', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (335, N'Раёсати молияи ноҳияи Хуросон
', N'khuroson.moliya.tj', N'khuroson', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (336, N'Раёсати молияи ноҳияи Носири Хисрав
', N'n-khusrav.moliya.tj', N'n-khusrav', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (337, N'Раёсати молияи ноҳияи Абдураҳмони Ҷомӣ
', N'a-jomi.moliya.tj', N'a-jomi', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (338, N'Раёсати молияи ноҳияи Шаҳритуз
', N'shahritus.moliya.tj', N'shahritus', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (339, N'Раёсати молияи ноҳияи Шӯробод
', N'shurobod.moliya.tj', N'shurobod', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (340, N'Раёсати молияи ноҳияи Ёвон
', N'yovon.moliya.tj', N'yovon', 6, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (389, N'Directorate of finance of Vahdat
', N'vahdat.moliya.tj', N'vahdat', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (390, N'Directorate of finance of Rogun
', N'rogun.moliya.tj', N'rogun', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (391, N'Directorate of finance of Tursunzoda
', N'tursunzoda.moliya.tj', N'tursunzoda', 2, 2)
GO
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (392, N'Directorate of finance of Varzob district 
', N'varzob.moliya.tj', N'varzob', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (393, N'Directorate of finance of Rasht district 
', N'rasht.moliya.tj', N'rasht', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (394, N'Directorate of finance of Hisor district 
', N'hisor.moliya.tj', N'hisor', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (395, N'Directorate of finance of Jirgatol district 
', N'jirgatol.moliya.tj', N'jirgatol', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (396, N'Directorate of finance of Nurobod district 
', N'nurobod.moliya.tj', N'nurobod', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (397, N'Directorate of finance of Rudaki district
', N'rudaki.moliya.tj', N'rudaki', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (398, N'Directorate of finance of Tavildara district
', N'tavildara.moliya.tj', N'tavildara', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (399, N'Directorate of finance of Faizobod district 
', N'faizobod.moliya.tj', N'faizobod', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (400, N'Directorate of finance of Shahrinav district
', N'shahrinav.moliya.tj', N'shahrinav', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (401, N'Directorate of finance of Tojikobod district 
', N'tojikobod.moliya.tj', N'tojikobod', 2, 2)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (402, N'Раёсати молияи шаҳри Ваҳдат
', N'vahdat.moliya.tj', N'vahdat', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (403, N'Раёсати молияи шаҳри Роғун
', N'rogun.moliya.tj', N'rogun', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (404, N'Раёсати молияи шаҳри Турсунзода
', N'tursunzoda.moliya.tj', N'tursunzoda', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (405, N'Раёсати молияи ноҳияи Варзоб
', N'varzob.moliya.tj', N'varzob', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (406, N'Раёсати молияи ноҳияи Рашт
', N'rasht.moliya.tj', N'rasht', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (407, N'Раёсати молияи ноҳияи Ҳисор
', N'hisor.moliya.tj', N'hisor', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (408, N'Раёсати молияи ноҳияи Ҷиргатол
', N'jirgatol.moliya.tj', N'jirgatol', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (409, N'Раёсати молияи ноҳияи Нуробод
', N'nurobod.moliya.tj', N'nurobod', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (410, N'Раёсати молияи ноҳияи Рӯдакӣ
', N'rudaki.moliya.tj', N'rudaki', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (411, N'Раёсати молияи ноҳияи Тавилдара
', N'tavildara.moliya.tj', N'tavildara', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (412, N'Раёсати молияи ноҳияи Файзобод
', N'faizobod.moliya.tj', N'faizobod', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (413, N'Раёсати молияи ноҳияи Шаҳринав
', N'shahrinav.moliya.tj', N'shahrinav', 2, 3)
INSERT [dbo].[tb_organization] ([Id], [name], [link], [index], [tb_region_Id], [tb_lang_id]) VALUES (414, N'Раёсати молияи ноҳияи Тоҷикобод
', N'tojikobod.moliya.tj', N'tojikobod', 2, 3)
SET IDENTITY_INSERT [dbo].[tb_organization] OFF
SET IDENTITY_INSERT [dbo].[tb_pages] ON 

INSERT [dbo].[tb_pages] ([id], [main_category_id], [name], [description], [is_active]) VALUES (1, 1, N'Дата центр', N'Наш виртуальный дата-центр содержит статистические материалы, которые прямо или коственно касаются бюджета Республики Таджикистан. Для просмотра интересующего Вас графика, достаточно кликнуть по нему, и он откроется в новом окне. Обратите внимание, что Вы можете воспользоваться поиском и отфильтровать данные по требуемому временному диапазону.', 1)
INSERT [dbo].[tb_pages] ([id], [main_category_id], [name], [description], [is_active]) VALUES (2, 2, N'О министерстве', N'Раздел посвящен Министерству Финансов Республики Таджикистан. В данном разделе можно найти информацию об организационно правовой структуре, историю создания МФ, информацию о донорах и проектах реализуемых министерством.', 1)
INSERT [dbo].[tb_pages] ([id], [main_category_id], [name], [description], [is_active]) VALUES (3, 3, N'Файловый архив', N'Хранит все когда либо загруженные файлы на сайт МФ РТ', 1)
SET IDENTITY_INSERT [dbo].[tb_pages] OFF
SET IDENTITY_INSERT [dbo].[tb_prints] ON 

INSERT [dbo].[tb_prints] ([id], [name], [image], [description], [text], [published_since], [is_active]) VALUES (1, N'Финансы и бухгалтерия', N'Обложка_основа.jpg', N'Ежемесячное издание Министерства Финансов Республики Таджикистан', N'<p><strong>рпорпор</strong></p>
', NULL, 1)
INSERT [dbo].[tb_prints] ([id], [name], [image], [description], [text], [published_since], [is_active]) VALUES (2, N'Юбилейные издания', N'90_обложка.jpg', N'Издания Министерства финансов Республики Таджикистан, посвященные памятным событиям', N'<p>Журнал посвященный 90-ю создания Министерства Финансов Республики Таджикистан</p>
', NULL, 1)
INSERT [dbo].[tb_prints] ([id], [name], [image], [description], [text], [published_since], [is_active]) VALUES (4, N'Буклеты', N'Буклет_обложка.jpg', N'Тематические буклеты', NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tb_prints] OFF
SET IDENTITY_INSERT [dbo].[tb_prints_content] ON 

INSERT [dbo].[tb_prints_content] ([id], [year], [month], [date_print], [image], [text], [prints_id], [is_active]) VALUES (1, 2015, 5, CAST(N'2015-03-01 00:00:00.000' AS DateTime), N'200px-Coat_of_arms_of_Tajikistan_.svg.png', N'<p>fds sd sdf ds fdsf dsfds фывфыв</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>sdfasdfdasf</p>

<p>&nbsp;</p>

<p>&nbsp;</p>

<p>sdf</p>

<p>sdaf</p>

<p>dsa</p>

<p>fasd</p>

<p>f</p>

<p><a href="http://ya.ru">Линка на файл</a></p>
', 1, 1)
INSERT [dbo].[tb_prints_content] ([id], [year], [month], [date_print], [image], [text], [prints_id], [is_active]) VALUES (2, 2014, 1, CAST(N'2014-01-01 00:00:00.000' AS DateTime), N'3365576-heraldic-crown.jpg', NULL, 2, 1)
SET IDENTITY_INSERT [dbo].[tb_prints_content] OFF
SET IDENTITY_INSERT [dbo].[tb_projects] ON 

INSERT [dbo].[tb_projects] ([id], [name], [description], [full_text], [is_active], [tb_lang_id]) VALUES (2, N'Если будет много файлов', N'то надо чтобы ', N'появлялся скроллинг. Выводить файлы из нужно их соответствующего каталога файлового архива.
то надо чтобы появлялся скроллинг. Выводить файлы из нужно их соответствующего каталога файлового архива.
то надо чтобы появлялся скроллинг. Выводить файлы из нужно их соответствующего каталога файлового архива.
появлялся скроллинг. Выводить файлы из нужно их соответствующего каталога файлового архива.
то надо чтобы появлялся скроллинг. Выводить файлы из нужно их соответствующего каталога файлового архива.
то надо чтобы появлялся скроллинг. Выводить файлы из нужно их соответствующего каталога файлового архива.', 1, 1)
SET IDENTITY_INSERT [dbo].[tb_projects] OFF
SET IDENTITY_INSERT [dbo].[tb_question_categorys] ON 

INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (1, 1, N'Гражданам', N'5937861.jpg', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (2, 1, N'Должностным лицам', N'1413612661_kollegija.jpg', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (3, 1, N'Сектор экономики', N'investitsii.jpg', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (4, 0, N'Прочие', N'image005.png', N'рррррррррррррррр', 1, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (5, 1, N'Гражданам', N'image005.png', N'ппппппппппппппппппппппппппппппп', 2, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (6, 1, N'Должностным лицам', N'image005.png', N'ппппппппппппппппппппппппппп', 2, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (7, 1, N'Экономическая деятельность', N'image005.png', N'ппппппппппппппппппппппппппппппп', 2, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (8, 1, N'Прочие', N'image005.png', N'ппппппппппппппппппппппппппппппп', 2, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (9, 1, N'Гражданам', N'image005.png', N'ппппппппппппппппппппппппппппппп', 3, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (10, 0, N'Должностным лицам', N'image005.png', N'ппппппппппппппппппппппппппппппп', 3, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (11, 1, N'Экономическая деятельность', N'image005.png', N'ппппппппппппппппппппппппппппппп', 3, 1)
INSERT [dbo].[tb_question_categorys] ([id], [show_on_the_main], [name], [image], [description], [lang], [is_active]) VALUES (12, 1, N'Прочие', N'image005.png', N'ппппппппппппппппппппппппппппппп', 3, 1)
SET IDENTITY_INSERT [dbo].[tb_question_categorys] OFF
SET IDENTITY_INSERT [dbo].[tb_question_request] ON 

INSERT [dbo].[tb_question_request] ([id], [fio], [organization], [position], [phone], [email], [category_id], [question], [is_active], [create_date]) VALUES (1, N'Турдиалиев Орифджон Акрамович ', NULL, N'студент', N'+992987757393', N'turdialiev.1993@mail.ru', 28, N'цель и задача реформирование бухгалтерского учета в Таджикистане', 0, CAST(N'2015-10-28 20:26:24.703' AS DateTime))
INSERT [dbo].[tb_question_request] ([id], [fio], [organization], [position], [phone], [email], [category_id], [question], [is_active], [create_date]) VALUES (2, N'Мухамадиев Искандар', NULL, NULL, N'927000772', N'mnu1878@mail.ru', 12, N'Здравствуйте. Скажите пожалуйста почему я не могу скачать с сайта различные документы? Мне срочно нужны данные об исполнении бюджета. Где я могу их скачать? С сайта moliya.tj ни один документ не скачивается', 0, CAST(N'2015-11-02 09:45:02.420' AS DateTime))
SET IDENTITY_INSERT [dbo].[tb_question_request] OFF
SET IDENTITY_INSERT [dbo].[tb_question_sub_categorys] ON 

INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (1, N'Бюджетная политика', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (2, N'Исполнение бюджета', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (3, N'Налоговая политика', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (4, N'Внебюджетные фонды и резервы', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (5, N'Государственный внутренний долг', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (6, N'Государственный внешний долг', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (7, N'Ценные бумаги ', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (8, N'Методология бухгалтерского учета', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (9, N'Лицензирование', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (10, N'Внутренний аудит', 1, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (11, N'Буҷет', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (12, N'Исполнение бюджета', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (13, N'Налоговая политика', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (14, N'Внебюджетные фонды и резервы', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (15, N'Государственный внешний долг', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (16, N'Государственный внутренний долг', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (17, N'Ценные бумаги ', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (18, N'Методология бухгалтерского учета', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (19, N'Лицензирование', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (20, N'Внутренний аудит', 3, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (21, N'Бюджетная политика', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (22, N'Исполнение бюджета', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (23, N'Налоговая политика', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (24, N'Внебюджетные фонды и резервы', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (25, N'Государственный внешний долг', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (26, N'Государственный внутренний долг', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (27, N'Ценные бумаги ', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (28, N'Методология бухгалтерского учета', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (29, N'Лицензирование', 2, 1)
INSERT [dbo].[tb_question_sub_categorys] ([id], [name], [lang], [is_active]) VALUES (30, N'Внутренний аудит', 2, 1)
SET IDENTITY_INSERT [dbo].[tb_question_sub_categorys] OFF
SET IDENTITY_INSERT [dbo].[tb_questions] ON 

INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (1, 1, 1, CAST(N'2015-05-25 14:48:44.000' AS DateTime), N'Cистема оплаты труда в бюджетном учреждении', CAST(N'2015-05-18 00:00:00.000' AS DateTime), N'<p>Как определяется система оплаты труда в бюджетном учреждении?</p>
', N'Саидов Саид Саидович', N'zarina@eastera.tj', CAST(N'2015-05-24 00:00:00.000' AS DateTime), N'Зарина Абзалова', N'Консультант', N'<p>Ответ: Система оплаты труда в бюджетном учреждении определяется согласно ......</p>
', 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (2, 2, 1, CAST(N'2015-05-25 23:57:59.837' AS DateTime), N'Обязано ли бюджетное учреждение придерживаться той системы оплаты труда, которая установлена бюджетом? Есть ли исключения?', CAST(N'2015-05-25 00:00:00.000' AS DateTime), N'<p>Обязано ли бюджетное учреждение придерживаться той системы оплаты труда, которая установлена бюджетом? Есть ли исключения?</p>
', N'Саидов Саид Саидович', N'zarina@eastera.tj', CAST(N'2015-05-25 00:00:00.000' AS DateTime), N'Салимов Салим Салимович', N'Начальник отдела кадров', N'<p>Ответ:</p>
', 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (3, 3, 1, CAST(N'2015-05-25 23:59:20.887' AS DateTime), N'Существует ли отдельная методология при формировании бюджета для бюджетных организаций сектора культуры?', CAST(N'2015-05-25 00:00:00.000' AS DateTime), N'<p>Существует ли отдельная методология при формировании бюджета для бюджетных организаций секторра культуры?</p>
', NULL, NULL, NULL, NULL, NULL, N'<p>Ответ:</p>
', 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (4, 1, 2, CAST(N'2015-05-26 00:00:48.760' AS DateTime), N'Может ли частный предприниматель участвовать в конкурсах по государственным закупкам?', CAST(N'2015-05-25 00:00:00.000' AS DateTime), N'<p>Может ли частный предприниматель участвовать в конкурсах по государственным закупкам?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (5, 2, 2, CAST(N'2015-05-26 00:01:56.777' AS DateTime), N'Возможен ли самостоятельное открытие бюджетным учреждением расчетного счета в коммерческом банке?', CAST(N'2015-05-25 00:00:00.000' AS DateTime), N'<p>Возможен ли самостоятельное открытие бюджетным учреждением расчетного счета в коммерческом банке?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (6, 3, 1, CAST(N'2015-05-26 00:02:49.260' AS DateTime), N'Какие расходы бюджетных учреждений могут осуществляются без представления документов, подтверждающих возникновение денежных обязательств?', CAST(N'2015-05-18 00:00:00.000' AS DateTime), N'<p>Какие расходы бюджетных учреждений могут осуществляются без представления документов, подтверждающих возникновение денежных обязательств?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (7, 2, 3, CAST(N'2015-05-26 00:03:52.870' AS DateTime), N'Предусматриваются ли налоговые льготы для спонсоров?', CAST(N'2015-05-26 00:00:00.000' AS DateTime), N'<p>Предусматриваются ли налоговые льготы для спонсоров?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (8, 3, 3, CAST(N'2015-05-26 00:05:20.227' AS DateTime), N'Какие льготы по налоговым выплатам может иметь образовательное учреждение?', CAST(N'2015-05-18 00:00:00.000' AS DateTime), N'<p>Какие льготы по налоговым выплатам может иметь образовательное учреждение?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (9, 4, 3, CAST(N'2015-05-26 00:06:15.887' AS DateTime), N'Есть ли специализированные налоги в отраслях экономики?', CAST(N'2015-05-20 00:00:00.000' AS DateTime), N'<p>Есть ли специализированные налоги в отраслях экономики?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (10, 1, 4, CAST(N'2015-05-26 00:06:51.027' AS DateTime), N'Как формируются внебюджетные фонды?', CAST(N'2015-05-20 00:00:00.000' AS DateTime), N'<p>Как формируются внебюджетные фонды?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (11, 2, 4, CAST(N'2015-05-26 00:07:21.620' AS DateTime), N'Может ли финансироваться за счет государственного бюджета частный сектор?', CAST(N'2015-05-21 00:00:00.000' AS DateTime), N'<p>Может ли финансироваться за счет государственного бюджета частный сектор?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (12, 1, 7, CAST(N'2015-05-26 00:08:10.260' AS DateTime), N'Где можно приобрести акции предприятий?', CAST(N'2015-05-15 00:00:00.000' AS DateTime), N'<p>Где можно приобрести акции предприятий?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (13, 2, 4, CAST(N'2015-05-26 00:08:46.057' AS DateTime), N'Каков порядок учета сделок с ценными бумагами?', CAST(N'2015-05-14 00:00:00.000' AS DateTime), N'<p>Каков порядок учета сделок с ценными бумагами?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (14, 3, 4, CAST(N'2015-05-26 00:09:22.387' AS DateTime), N'В какие ценные бумаги могут вкладывать физические лица свои сбережения?', CAST(N'2015-05-14 00:00:00.000' AS DateTime), N'<p>В какие ценные бумаги могут вкладывать физические лица свои сбережения?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (15, 1, 8, CAST(N'2015-05-26 00:10:01.510' AS DateTime), N'Применяется ли в государственном секторе международные стандарты финансовой отчетности?', CAST(N'2015-05-14 00:00:00.000' AS DateTime), N'<p>Применяется ли в государственном секторе международные стандарты финансовой отчетности?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (16, 2, 8, CAST(N'2015-05-26 00:10:32.000' AS DateTime), N'Какие виды расходов возмещаются при командировках?', CAST(N'2015-05-08 00:00:00.000' AS DateTime), N'<p>Какие виды расходов возмещаются при командировках?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (17, 1, 9, CAST(N'2015-05-26 00:11:50.667' AS DateTime), N'Каков порядок получения разрешений на организацию деятельности в области азартных игр, лотерей и пр. ?', CAST(N'2015-05-13 00:00:00.000' AS DateTime), N'<p>Каков порядок получения разрешений на организацию деятельности в области азартных игр, лотерей и пр. ?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (18, 1, 10, CAST(N'2015-05-26 00:12:23.243' AS DateTime), N'Может ли бюджетная организация заключать договора на поставку услуг с выше 10 000 сомони без проведения тендерных процедур?', CAST(N'2015-05-16 00:00:00.000' AS DateTime), N'<p>Может ли бюджетная организация заключать договора на поставку услуг с выше 10 000 сомони без проведения тендерных процедур?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (19, 3, 10, CAST(N'2015-05-26 00:13:25.353' AS DateTime), N'Как часто должны проводиться ревизионные проверки различными организациями по расходованию средств? ', CAST(N'2015-05-07 00:00:00.000' AS DateTime), N'<p>Как часто должны проводиться ревизионные проверки различными организациями по расходованию средств?&nbsp;</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (20, 5, 21, CAST(N'2015-05-26 00:42:56.000' AS DateTime), N'How is the remuneration system in the public institution defined?', CAST(N'2015-05-14 00:00:00.000' AS DateTime), N'<p>How is the remuneration system in the public institution defined?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (21, 6, 21, CAST(N'2015-05-26 00:43:35.027' AS DateTime), N' Обязано ли бюджетное учреждение придерживаться той системы оплаты труда, которая установлена бюджетом? Есть ли исключения?', CAST(N'2015-05-15 00:00:00.000' AS DateTime), N'<p>&nbsp;Обязано ли бюджетное учреждение придерживаться той системы оплаты труда, которая установлена бюджетом? Есть ли исключения?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (22, 7, 21, CAST(N'2015-05-26 00:44:10.870' AS DateTime), N'Существует ли отдельная методология при формировании бюджета для бюджетных организаций секторра культуры?', CAST(N'2015-05-07 00:00:00.000' AS DateTime), N'<p>Существует ли отдельная методология при формировании бюджета для бюджетных организаций секторра культуры?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (23, 5, 22, CAST(N'2015-05-26 00:45:15.510' AS DateTime), N'Может ли частный предприниматель участвовать в конкурсах по государственным закупкам?', CAST(N'2015-05-14 00:00:00.000' AS DateTime), N'<p>Может ли частный предприниматель участвовать в конкурсах по государственным закупкам?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (24, 6, 22, CAST(N'2015-05-26 00:45:59.183' AS DateTime), N'Возможен ли самостоятельное открытие бюджетным учреждением расчетного счета в коммерческом банке?', CAST(N'2015-05-15 00:00:00.000' AS DateTime), N'<p>Возможен ли самостоятельное открытие бюджетным учреждением расчетного счета в коммерческом банке?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (25, 7, 22, CAST(N'2015-05-26 00:47:01.993' AS DateTime), N'Какие расходы бюджетных учреждений могут осуществляются без представления документов, подтверждающих возникновение денежных обязательств? ', CAST(N'2015-05-09 00:00:00.000' AS DateTime), N'<p>Какие расходы бюджетных учреждений могут осуществляются без представления документов, подтверждающих возникновение денежных обязательств?&nbsp;</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (26, 5, 23, CAST(N'2015-05-26 00:47:41.667' AS DateTime), N'Предусматриваются ли налоговые льготы для спонсоров?', CAST(N'2015-05-21 00:00:00.000' AS DateTime), N'<p>Предусматриваются ли налоговые льготы для спонсоров?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (27, 7, 23, CAST(N'2015-05-26 00:48:47.087' AS DateTime), N'Какие льготы по налоговым выплатам может иметь образовательное учреждение?', CAST(N'2015-05-15 00:00:00.000' AS DateTime), N'<p>Какие льготы по налоговым выплатам может иметь образовательное учреждение?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (28, 8, 23, CAST(N'2015-05-26 00:49:27.963' AS DateTime), N'Есть ли специализированные налоги в отраслях экономики?', CAST(N'2015-05-02 00:00:00.000' AS DateTime), N'<p>Есть ли специализированные налоги в отраслях экономики?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (29, 5, 24, CAST(N'2015-05-26 00:50:01.823' AS DateTime), N'Как формируются внебюджетные фонды?', CAST(N'2015-05-15 00:00:00.000' AS DateTime), N'<p>Как формируются внебюджетные фонды?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (30, 6, 24, CAST(N'2015-05-26 00:51:32.900' AS DateTime), N'Может ли финансироваться за счет государственного бюджета частный сектор?', CAST(N'2015-05-12 00:00:00.000' AS DateTime), N'<p>Может ли финансироваться за счет государственного бюджета частный сектор?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (31, 5, 27, CAST(N'2015-05-26 00:52:20.837' AS DateTime), N'Где можно приобрести акции предприятий?', CAST(N'2015-05-21 00:00:00.000' AS DateTime), N'<p>Где можно приобрести акции предприятий?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (32, 6, 27, CAST(N'2015-05-26 00:52:55.260' AS DateTime), N'Каков порядок учета сделок с ценными бумагами?', CAST(N'2015-05-15 00:00:00.000' AS DateTime), N'<p>Каков порядок учета сделок с ценными бумагами?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (33, 7, 27, CAST(N'2015-05-26 00:54:19.887' AS DateTime), N' В какие ценные бумаги могут вкладывать физические лица свои сбережения?', CAST(N'2015-05-12 00:00:00.000' AS DateTime), N'<p>&nbsp;В какие ценные бумаги могут вкладывать физические лица свои сбережения?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (34, 5, 28, CAST(N'2015-05-26 00:55:08.557' AS DateTime), N'Применяется ли в государственном секторе международные стандарты финансовой отчетности?', CAST(N'2015-05-11 00:00:00.000' AS DateTime), N'<p>Применяется ли в государственном секторе международные стандарты финансовой отчетности?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (35, 6, 28, CAST(N'2015-05-26 00:56:12.000' AS DateTime), N'Следует ли отражать на счетах бухгалтерского учета поступление иностранной безвозмездной помощи?', CAST(N'2015-05-20 00:00:00.000' AS DateTime), N'<p>Следует ли отражать на счетах бухгалтерского учета поступление иностранной безвозмездной помощи?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (36, 7, 28, CAST(N'2015-05-26 00:58:20.887' AS DateTime), N'Какие виды расходов возмещаются при командировках?', CAST(N'2015-05-12 00:00:00.000' AS DateTime), N'<p>Какие виды расходов возмещаются при командировках?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (37, 5, 29, CAST(N'2015-05-26 00:58:57.807' AS DateTime), N'Каков порядок получения разрешений на организацию деятельности в области азартных игр, лотерей и пр.', CAST(N'2015-05-17 00:00:00.000' AS DateTime), N'<p>Каков порядок получения разрешений на организацию деятельности в области азартных игр, лотерей и пр.</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (38, 7, 30, CAST(N'2015-05-26 01:00:10.040' AS DateTime), N'Как часто должны проводиться ревизионные проверки различными организациями по расходованию средств? ', CAST(N'2015-05-22 00:00:00.000' AS DateTime), N'<p>Как часто должны проводиться ревизионные проверки различными организациями по расходованию средств?&nbsp;</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (39, 9, 11, CAST(N'2015-05-26 01:07:34.027' AS DateTime), N'Как определяется система оплаты труда в бюджетном учреждении?', CAST(N'2015-05-26 00:00:00.000' AS DateTime), N'<p>Как определяется система оплаты труда в бюджетном учреждении?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (40, 10, 11, CAST(N'2015-05-26 01:08:03.947' AS DateTime), N'Обязано ли бюджетное учреждение придерживаться той системы оплаты труда, которая установлена бюджетом? Есть ли исключения?', CAST(N'2015-05-16 00:00:00.000' AS DateTime), N'<p>Обязано ли бюджетное учреждение придерживаться той системы оплаты труда, которая установлена бюджетом? Есть ли исключения?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (41, 11, 11, CAST(N'2015-05-26 01:08:33.853' AS DateTime), N'Существует ли отдельная методология при формировании бюджета для бюджетных организаций секторра культуры?', CAST(N'2015-05-18 00:00:00.000' AS DateTime), N'<p>Существует ли отдельная методология при формировании бюджета для бюджетных организаций секторра культуры?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[tb_questions] ([id], [category_id], [category_sub_id], [date_create], [question_title], [question_date], [question], [question_author_fio], [question_author_email], [answer_date], [answer_author_fio], [answer_author_position], [answer], [is_active]) VALUES (42, 9, 12, CAST(N'2015-05-26 01:09:53.040' AS DateTime), N'Может ли частный предприниматель участвовать в конкурсах по государственным закупкам?', CAST(N'2015-05-15 00:00:00.000' AS DateTime), N'<p>Может ли частный предприниматель участвовать в конкурсах по государственным закупкам?</p>
', NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[tb_questions] OFF
SET IDENTITY_INSERT [dbo].[tb_region] ON 

INSERT [dbo].[tb_region] ([Id], [name_tj], [name_ru], [name_en]) VALUES (1, N'Душанбе', N'Душанбе', N'Dushanbe')
INSERT [dbo].[tb_region] ([Id], [name_tj], [name_ru], [name_en]) VALUES (2, N'Республиканского подчинения
', N'Республиканского подчинения	
', N'Districts of Republican Subordination		
')
INSERT [dbo].[tb_region] ([Id], [name_tj], [name_ru], [name_en]) VALUES (5, N'Горно-Бадахшанская область', N'Горно-Бадахшанская область', N'Gorno-Badakhshan Autonomous Province')
INSERT [dbo].[tb_region] ([Id], [name_tj], [name_ru], [name_en]) VALUES (6, N'Вилояти Хатлон', N'Хатлонская область', N'Khatlon Province')
INSERT [dbo].[tb_region] ([Id], [name_tj], [name_ru], [name_en]) VALUES (7, N'Вилояти Сугд', N'Согдийская область', N'Sughd Province')
INSERT [dbo].[tb_region] ([Id], [name_tj], [name_ru], [name_en]) VALUES (8, N'Ташкилотҳои зертобеъ', N'Подведомственные организации', N'Subordinate Organizations')
SET IDENTITY_INSERT [dbo].[tb_region] OFF
SET IDENTITY_INSERT [dbo].[tb_secondary_files] ON 

INSERT [dbo].[tb_secondary_files] ([Id], [pub_date], [file_name], [descreption], [is_active], [name], [secondary_file_type_Id]) VALUES (1, CAST(N'2016-01-13 14:29:31.167' AS DateTime), N'Ввести чит.docx', N'в редакции Постановления Правительства РТ от 1.10.2007г. №508, от 19.09.2008г.№454, от 29.09.2008г.№458, от 18.06.2009г.№345, от 03.12.2010г.№627, от 03.04.2012г.№154, от 11.05.2012г.№227', 1, N'Положение о Министерстве финансов Республики Таджикистан', 2)
INSERT [dbo].[tb_secondary_files] ([Id], [pub_date], [file_name], [descreption], [is_active], [name], [secondary_file_type_Id]) VALUES (2, CAST(N'2016-01-13 14:35:05.100' AS DateTime), N'Ввести чит.docx', N'Настоящий Закон устанавливает организационные и правовые основы системы финансового управления и внутреннего контроля в государственном секторе и организациях, финансируемых за счет Государственного бюджета Республики Таджикистан', 1, N'Закон Республики Таджикистан "О финансовом управлении и внутреннем контроле в государственном секторе"', 2)
INSERT [dbo].[tb_secondary_files] ([Id], [pub_date], [file_name], [descreption], [is_active], [name], [secondary_file_type_Id]) VALUES (3, CAST(N'2016-01-13 14:37:05.847' AS DateTime), N'mf_data.sql', N'Настоящий закон регулирует комплекс отношений, связанных с установлением принципов, основ формирования, планирования, проведения и отчета внутреннего аудита в государственном секторе', 1, N'Закон Республики Таджикистан "О внутреннем аудите в государственном секторе"', 2)
INSERT [dbo].[tb_secondary_files] ([Id], [pub_date], [file_name], [descreption], [is_active], [name], [secondary_file_type_Id]) VALUES (4, CAST(N'2016-01-13 14:40:55.950' AS DateTime), N'Ввести чит.docx', N'Министерство финансов Республики Таджикистан является центральным органом исполнительной власти в составе Правительства Республики Таджикистан и обеспечивает:', 1, N'Министерство финансов Республики Таджикистан является центральным органом исполнительной власти в составе Правительства Республики Таджикистан и обеспечивает:', 2)
INSERT [dbo].[tb_secondary_files] ([Id], [pub_date], [file_name], [descreption], [is_active], [name], [secondary_file_type_Id]) VALUES (5, CAST(N'2016-01-13 14:44:07.037' AS DateTime), N'index.html', N'gasaga', 1, N'sfafg', 2)
INSERT [dbo].[tb_secondary_files] ([Id], [pub_date], [file_name], [descreption], [is_active], [name], [secondary_file_type_Id]) VALUES (6, CAST(N'2016-01-13 14:45:30.030' AS DateTime), N'jquery.details.js', N'afgagagaga', 1, N'Asfasfasfasga', 2)
INSERT [dbo].[tb_secondary_files] ([Id], [pub_date], [file_name], [descreption], [is_active], [name], [secondary_file_type_Id]) VALUES (7, CAST(N'2016-01-13 14:48:12.057' AS DateTime), N'index.html', N'Министерство финансов Республики Таджикистан является центральным органом исполнительной власти в составе Правительства Республики Таджикистан и обеспечивает:', 1, N'Министерство финансов Республики Таджикистан является центральным органом исполнительной власти в составе Правительства Республики Таджикистан и обеспечивает:', 2)
SET IDENTITY_INSERT [dbo].[tb_secondary_files] OFF
SET IDENTITY_INSERT [dbo].[tb_structure_organization] ON 

INSERT [dbo].[tb_structure_organization] ([Id], [name_director], [last_name_director], [full_name_director], [picture_director], [bio_director], [text_for_nachalniki], [is_active], [tb_organization_Id], [tb_lang_id]) VALUES (2, N'sfaf', N'asfasf', N'asfas', N'1IvCX5qPXJo.jpg', N'afsafasf
f
asf
a
f', N'<p>sfafas</p>

<p>safasf</p>

<p>asfasf</p>

<p>safaf</p>
', 1, 1, 1)
SET IDENTITY_INSERT [dbo].[tb_structure_organization] OFF
SET IDENTITY_INSERT [dbo].[tb_subscription_request] ON 

INSERT [dbo].[tb_subscription_request] ([id], [fio], [email], [organization], [position], [phone], [print_id], [create_date], [is_active]) VALUES (1, N'Раджабов Алексей', N'aradzabov@gmail.com', N'ООО "Истера"', N'Программист', N'900099949', NULL, CAST(N'2015-05-05 10:49:10.723' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[tb_subscription_request] OFF
SET IDENTITY_INSERT [dbo].[tb_user_in_role] ON 

INSERT [dbo].[tb_user_in_role] ([id], [user_id], [role_id]) VALUES (1, 1, 1)
SET IDENTITY_INSERT [dbo].[tb_user_in_role] OFF
SET IDENTITY_INSERT [dbo].[tb_user_roles] ON 

INSERT [dbo].[tb_user_roles] ([id], [name], [description], [is_active]) VALUES (1, N'root', N'Признак системного администратора', 1)
SET IDENTITY_INSERT [dbo].[tb_user_roles] OFF
SET IDENTITY_INSERT [dbo].[tb_users] ON 

INSERT [dbo].[tb_users] ([id], [fio], [email], [password], [is_active]) VALUES (1, N'Lex Low', N'aradzabov@gmail.com', N'1', 1)
INSERT [dbo].[tb_users] ([id], [fio], [email], [password], [is_active]) VALUES (2, N'Eastera User', N'info@eastera.tj', N'1', 1)
SET IDENTITY_INSERT [dbo].[tb_users] OFF
ALTER TABLE [dbo].[tb_about_organization]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_about_organization] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_about_organization] CHECK CONSTRAINT [FK_tb_langtb_about_organization]
GO
ALTER TABLE [dbo].[tb_about_organization]  WITH CHECK ADD  CONSTRAINT [FK_tb_organizationtb_about_organization] FOREIGN KEY([tb_organization_Id])
REFERENCES [dbo].[tb_organization] ([Id])
GO
ALTER TABLE [dbo].[tb_about_organization] CHECK CONSTRAINT [FK_tb_organizationtb_about_organization]
GO
ALTER TABLE [dbo].[tb_content]  WITH CHECK ADD  CONSTRAINT [FK_tb_content_tb_lang] FOREIGN KEY([lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_content] CHECK CONSTRAINT [FK_tb_content_tb_lang]
GO
ALTER TABLE [dbo].[tb_courses]  WITH CHECK ADD  CONSTRAINT [FK_tb_courses_tb_courses_status] FOREIGN KEY([status_id])
REFERENCES [dbo].[tb_courses_status] ([id])
GO
ALTER TABLE [dbo].[tb_courses] CHECK CONSTRAINT [FK_tb_courses_tb_courses_status]
GO
ALTER TABLE [dbo].[tb_dc]  WITH CHECK ADD  CONSTRAINT [FK_tb_dc_tb_dc_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[tb_dc_type] ([id])
GO
ALTER TABLE [dbo].[tb_dc] CHECK CONSTRAINT [FK_tb_dc_tb_dc_type]
GO
ALTER TABLE [dbo].[tb_dc]  WITH CHECK ADD  CONSTRAINT [FK_tb_organizationtb_dc] FOREIGN KEY([tb_organization_Id])
REFERENCES [dbo].[tb_organization] ([Id])
GO
ALTER TABLE [dbo].[tb_dc] CHECK CONSTRAINT [FK_tb_organizationtb_dc]
GO
ALTER TABLE [dbo].[tb_dc_type]  WITH CHECK ADD  CONSTRAINT [FK_tb_dc_type_tb_lang] FOREIGN KEY([lang])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_dc_type] CHECK CONSTRAINT [FK_tb_dc_type_tb_lang]
GO
ALTER TABLE [dbo].[tb_economic]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_economic] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_economic] CHECK CONSTRAINT [FK_tb_langtb_economic]
GO
ALTER TABLE [dbo].[tb_file_on_page]  WITH CHECK ADD  CONSTRAINT [FK_tb_file_on_page_tb_content] FOREIGN KEY([content_page_id])
REFERENCES [dbo].[tb_content] ([id])
GO
ALTER TABLE [dbo].[tb_file_on_page] CHECK CONSTRAINT [FK_tb_file_on_page_tb_content]
GO
ALTER TABLE [dbo].[tb_file_on_page]  WITH CHECK ADD  CONSTRAINT [FK_tb_file_on_page_tb_files] FOREIGN KEY([file_id])
REFERENCES [dbo].[tb_files] ([id])
GO
ALTER TABLE [dbo].[tb_file_on_page] CHECK CONSTRAINT [FK_tb_file_on_page_tb_files]
GO
ALTER TABLE [dbo].[tb_files]  WITH CHECK ADD  CONSTRAINT [FK_tb_files_tb_files_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[tb_files_category] ([id])
GO
ALTER TABLE [dbo].[tb_files] CHECK CONSTRAINT [FK_tb_files_tb_files_category]
GO
ALTER TABLE [dbo].[tb_files]  WITH CHECK ADD  CONSTRAINT [FK_tb_files_tb_lang] FOREIGN KEY([lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_files] CHECK CONSTRAINT [FK_tb_files_tb_lang]
GO
ALTER TABLE [dbo].[tb_files]  WITH CHECK ADD  CONSTRAINT [FK_tb_organizationtb_files] FOREIGN KEY([tb_organization_Id])
REFERENCES [dbo].[tb_organization] ([Id])
GO
ALTER TABLE [dbo].[tb_files] CHECK CONSTRAINT [FK_tb_organizationtb_files]
GO
ALTER TABLE [dbo].[tb_files_category]  WITH CHECK ADD  CONSTRAINT [FK_tb_files_category_tb_lang] FOREIGN KEY([lang])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_files_category] CHECK CONSTRAINT [FK_tb_files_category_tb_lang]
GO
ALTER TABLE [dbo].[tb_gallery]  WITH CHECK ADD  CONSTRAINT [FK_tb_gallery_tb_gallery_category] FOREIGN KEY([category_id])
REFERENCES [dbo].[tb_gallery_category] ([id])
GO
ALTER TABLE [dbo].[tb_gallery] CHECK CONSTRAINT [FK_tb_gallery_tb_gallery_category]
GO
ALTER TABLE [dbo].[tb_info_mf]  WITH CHECK ADD  CONSTRAINT [FK_tb_info_mftb_ministr_mf] FOREIGN KEY([tb_ministr_mf_Id])
REFERENCES [dbo].[tb_ministr_mf] ([Id])
GO
ALTER TABLE [dbo].[tb_info_mf] CHECK CONSTRAINT [FK_tb_info_mftb_ministr_mf]
GO
ALTER TABLE [dbo].[tb_info_mf]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_info_mf] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_info_mf] CHECK CONSTRAINT [FK_tb_langtb_info_mf]
GO
ALTER TABLE [dbo].[tb_news]  WITH CHECK ADD  CONSTRAINT [FK_tb_news_tb_news_type] FOREIGN KEY([type_id])
REFERENCES [dbo].[tb_news_type] ([id])
GO
ALTER TABLE [dbo].[tb_news] CHECK CONSTRAINT [FK_tb_news_tb_news_type]
GO
ALTER TABLE [dbo].[tb_news]  WITH CHECK ADD  CONSTRAINT [FK_tb_organizationtb_news] FOREIGN KEY([tb_organization_Id])
REFERENCES [dbo].[tb_organization] ([Id])
GO
ALTER TABLE [dbo].[tb_news] CHECK CONSTRAINT [FK_tb_organizationtb_news]
GO
ALTER TABLE [dbo].[tb_news_type]  WITH CHECK ADD  CONSTRAINT [FK_tb_news_type_tb_lang] FOREIGN KEY([lang])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_news_type] CHECK CONSTRAINT [FK_tb_news_type_tb_lang]
GO
ALTER TABLE [dbo].[tb_organization]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_organization] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_organization] CHECK CONSTRAINT [FK_tb_langtb_organization]
GO
ALTER TABLE [dbo].[tb_organization]  WITH CHECK ADD  CONSTRAINT [FK_tb_regiontb_organization] FOREIGN KEY([tb_region_Id])
REFERENCES [dbo].[tb_region] ([Id])
GO
ALTER TABLE [dbo].[tb_organization] CHECK CONSTRAINT [FK_tb_regiontb_organization]
GO
ALTER TABLE [dbo].[tb_prints_content]  WITH CHECK ADD  CONSTRAINT [FK_tb_prints_content_tb_prints] FOREIGN KEY([prints_id])
REFERENCES [dbo].[tb_prints] ([id])
GO
ALTER TABLE [dbo].[tb_prints_content] CHECK CONSTRAINT [FK_tb_prints_content_tb_prints]
GO
ALTER TABLE [dbo].[tb_projects]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_projects] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_projects] CHECK CONSTRAINT [FK_tb_langtb_projects]
GO
ALTER TABLE [dbo].[tb_question_categorys]  WITH CHECK ADD  CONSTRAINT [FK_tb_question_categorys_tb_lang] FOREIGN KEY([lang])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_question_categorys] CHECK CONSTRAINT [FK_tb_question_categorys_tb_lang]
GO
ALTER TABLE [dbo].[tb_question_request]  WITH CHECK ADD  CONSTRAINT [FK_tb_question_request_tb_question_sub_categorys] FOREIGN KEY([category_id])
REFERENCES [dbo].[tb_question_sub_categorys] ([id])
GO
ALTER TABLE [dbo].[tb_question_request] CHECK CONSTRAINT [FK_tb_question_request_tb_question_sub_categorys]
GO
ALTER TABLE [dbo].[tb_question_sub_categorys]  WITH CHECK ADD  CONSTRAINT [FK_tb_question_sub_categorys_tb_lang] FOREIGN KEY([lang])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_question_sub_categorys] CHECK CONSTRAINT [FK_tb_question_sub_categorys_tb_lang]
GO
ALTER TABLE [dbo].[tb_questions]  WITH CHECK ADD  CONSTRAINT [FK_tb_questions_tb_question_categorys] FOREIGN KEY([category_id])
REFERENCES [dbo].[tb_question_categorys] ([id])
GO
ALTER TABLE [dbo].[tb_questions] CHECK CONSTRAINT [FK_tb_questions_tb_question_categorys]
GO
ALTER TABLE [dbo].[tb_questions]  WITH CHECK ADD  CONSTRAINT [FK_tb_questions_tb_question_sub_categorys] FOREIGN KEY([category_sub_id])
REFERENCES [dbo].[tb_question_sub_categorys] ([id])
GO
ALTER TABLE [dbo].[tb_questions] CHECK CONSTRAINT [FK_tb_questions_tb_question_sub_categorys]
GO
ALTER TABLE [dbo].[tb_ruk_depart_mf]  WITH CHECK ADD  CONSTRAINT [FK_tb_info_mftb_ruk_depart_mf] FOREIGN KEY([tb_info_mf_Id])
REFERENCES [dbo].[tb_info_mf] ([Id])
GO
ALTER TABLE [dbo].[tb_ruk_depart_mf] CHECK CONSTRAINT [FK_tb_info_mftb_ruk_depart_mf]
GO
ALTER TABLE [dbo].[tb_secondary_files]  WITH CHECK ADD  CONSTRAINT [FK_secondary_file_typetb_secondary_files] FOREIGN KEY([secondary_file_type_Id])
REFERENCES [dbo].[secondary_file_type] ([Id])
GO
ALTER TABLE [dbo].[tb_secondary_files] CHECK CONSTRAINT [FK_secondary_file_typetb_secondary_files]
GO
ALTER TABLE [dbo].[tb_structure_organization]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_structure_organization] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_structure_organization] CHECK CONSTRAINT [FK_tb_langtb_structure_organization]
GO
ALTER TABLE [dbo].[tb_structure_organization]  WITH CHECK ADD  CONSTRAINT [FK_tb_organizationtb_structure_organization] FOREIGN KEY([tb_organization_Id])
REFERENCES [dbo].[tb_organization] ([Id])
GO
ALTER TABLE [dbo].[tb_structure_organization] CHECK CONSTRAINT [FK_tb_organizationtb_structure_organization]
GO
ALTER TABLE [dbo].[tb_subscription_request]  WITH CHECK ADD  CONSTRAINT [FK_tb_subscription_request_tb_prints] FOREIGN KEY([print_id])
REFERENCES [dbo].[tb_prints] ([id])
GO
ALTER TABLE [dbo].[tb_subscription_request] CHECK CONSTRAINT [FK_tb_subscription_request_tb_prints]
GO
ALTER TABLE [dbo].[tb_tasks]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_tasks] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_tasks] CHECK CONSTRAINT [FK_tb_langtb_tasks]
GO
ALTER TABLE [dbo].[tb_tasks]  WITH CHECK ADD  CONSTRAINT [FK_tb_organizationtb_tasks] FOREIGN KEY([tb_organization_Id])
REFERENCES [dbo].[tb_organization] ([Id])
GO
ALTER TABLE [dbo].[tb_tasks] CHECK CONSTRAINT [FK_tb_organizationtb_tasks]
GO
ALTER TABLE [dbo].[tb_user_in_role]  WITH CHECK ADD  CONSTRAINT [FK_tb_user_in_role_tb_user_roles] FOREIGN KEY([role_id])
REFERENCES [dbo].[tb_user_roles] ([id])
GO
ALTER TABLE [dbo].[tb_user_in_role] CHECK CONSTRAINT [FK_tb_user_in_role_tb_user_roles]
GO
ALTER TABLE [dbo].[tb_user_in_role]  WITH CHECK ADD  CONSTRAINT [FK_tb_user_in_role_tb_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[tb_users] ([id])
GO
ALTER TABLE [dbo].[tb_user_in_role] CHECK CONSTRAINT [FK_tb_user_in_role_tb_users]
GO
ALTER TABLE [dbo].[tb_vacancy]  WITH CHECK ADD  CONSTRAINT [FK_tb_langtb_vacancy] FOREIGN KEY([tb_lang_id])
REFERENCES [dbo].[tb_lang] ([id])
GO
ALTER TABLE [dbo].[tb_vacancy] CHECK CONSTRAINT [FK_tb_langtb_vacancy]
GO
ALTER TABLE [dbo].[tb_vacancy]  WITH CHECK ADD  CONSTRAINT [FK_tb_organizationtb_vacancy] FOREIGN KEY([tb_organization_Id])
REFERENCES [dbo].[tb_organization] ([Id])
GO
ALTER TABLE [dbo].[tb_vacancy] CHECK CONSTRAINT [FK_tb_organizationtb_vacancy]
GO
ALTER TABLE [dbo].[tb_zam_mf]  WITH CHECK ADD  CONSTRAINT [FK_tb_info_mftb_zam_mf] FOREIGN KEY([tb_info_mf_Id])
REFERENCES [dbo].[tb_info_mf] ([Id])
GO
ALTER TABLE [dbo].[tb_zam_mf] CHECK CONSTRAINT [FK_tb_info_mftb_zam_mf]
GO
