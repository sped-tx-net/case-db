/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
USE [master];
GO
ALTER AUTHORIZATION ON DATABASE::[$(DatabaseName)] TO [sa]
GO
ALTER DATABASE [$(DatabaseName)] SET TRUSTWORTHY ON 
GO
ALTER DATABASE [$(DatabaseName)] SET RECURSIVE_TRIGGERS ON
GO
ALTER DATABASE [$(DatabaseName)] SET AUTO_UPDATE_STATISTICS OFF 
GO
ALTER DATABASE [$(DatabaseName)] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
USE [$(DatabaseName)]
GO
ALTER DATABASE [$(DatabaseName)] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
    BEGIN
        EXEC [$(DatabaseName)].[dbo].[sp_fulltext_database] @action = 'enable'
    END
GO

SET DATEFORMAT ymd;
GO

/*
INSERT [dbo].[CFLicense] ([Id], [Title], [Description], [Text], [LastChangeDateTime]) VALUES (N'9ea30160-c7c1-445a-9344-d9d780ede411', N'MIT License', N'MIT License', N'Copyright <YEAR> <COPYRIGHT HOLDER>    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.', CAST(N'2021-10-23T06:48:00.000' AS DateTime))
GO

INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'38b8475b-f40e-57f9-b101-00cbe260cbf4', N'Grade/Course', N'Grade/Course', N'Grade/Course', N'Grade/Course', CAST(N'2018-03-26T11:53:03.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'd39b2c1e-907e-528a-b411-2cfdeb8c3c30', N'Introduction', N'Introduction', N'Introduction', N'Introduction', CAST(N'2017-09-27T02:53:54.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'43714e16-27f2-5a97-849d-40bd238dee56', N'Student Expectation', N'Student Expectation', N'Student Expectation', N'Student Expectation', CAST(N'2017-09-27T02:53:54.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'1ef3b052-baae-545d-92ca-703596be5e89', N'Domain', N'Domain', N'Domain', N'Domain', CAST(N'2017-12-14T06:25:11.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'9d0f55b2-42e4-54c3-abb8-7f1f811ca95a', N'', N'', N'', N'', CAST(N'2017-10-13T09:46:25.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'2544508c-27d8-517d-8600-aa022c54167a', N'Examples of Child Behaviors', N'Examples of Child Behaviors', N'Examples of Child Behaviors', N'Examples of Child Behaviors', CAST(N'2018-04-02T03:41:27.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'3b3bce77-0dbf-59e4-9d40-b06d31809299', N'Knowledge and Skills', N'Knowledge and Skills', N'Knowledge and Skills', N'Knowledge and Skills', CAST(N'2017-09-27T02:53:54.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'f4ea1eb1-198b-599b-956a-b9ea37f0a29c', N'Strand', N'Strand', N'Strand', N'Strand', CAST(N'2017-09-27T02:53:54.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'b15452ab-27f6-5b2f-a87d-cec9d2977903', N'General Requirements', N'General Requirements', N'General Requirements', N'General Requirements', CAST(N'2018-03-26T11:53:03.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'099248a3-14ed-5540-8171-d164b38be51c', N'Subchapter', N'Subchapter', N'Subchapter', N'Subchapter', CAST(N'2017-09-27T02:53:54.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'48b7c6ff-18e0-5937-9c7e-e0c0ffe6a576', N'Skills', N'Skills', N'Skills', N'Skills', CAST(N'2018-04-02T03:41:27.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'a76cabdb-dfba-5956-aceb-e9cb878e8af3', N'End of Prekindergarten Year Outcomes', N'End of Prekindergarten Year Outcomes', N'End of Prekindergarten Year Outcomes', N'End of Prekindergarten Year Outcomes', CAST(N'2018-04-02T03:41:27.000' AS DateTime))
INSERT [dbo].[CFItemType] ([Id], [Title], [Description], [HierarchyCode], [TypeCode], [LastChangeDateTime]) VALUES (N'703dbfc5-3a0a-5d2a-ab74-e9ceb4b66f8b', N'Implementation', N'Implementation', N'Implementation', N'Implementation', CAST(N'2018-03-26T11:53:03.000' AS DateTime))
GO

INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'2e740aec-481d-589f-8e2c-04a1830d0910', N'Fine Arts', N'Fine Arts', N'Fine Arts', CAST(N'2017-09-27T03:23:58.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'bfe9fd53-58f0-5cdb-8dff-086281a7fd4c', N'Science', N'Science', N'Science', CAST(N'2017-09-27T03:22:42.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'82723d53-f434-5922-982f-0d5b5f674e3a', N'Career Development', N'Career Development', N'Career Development', CAST(N'2017-09-27T03:25:12.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'c2fcebee-e9af-590c-92de-101617269943', N'Economics with Emphasis on the Free Enterprise System and Its Benefits', N'Economics with Emphasis on the Free Enterprise System and Its Benefits', N'Economics with Emphasis on the Free Enterprise System and Its Benefits', CAST(N'2017-09-27T03:24:24.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'34b471c7-c888-5d31-b814-3e46442035c5', N'Technology Applications', N'Technology Applications', N'Technology Applications', CAST(N'2017-09-27T03:24:43.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'c1bdae11-ffad-510a-a5d6-5760286537dc', N'Elective Courses on the Bible', N'Elective Courses on the Bible', N'Elective Courses on the Bible', CAST(N'2019-08-22T07:08:32.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'6662af52-08ab-5453-b063-6c17e2bed2a7', N'Mathematics', N'', N'Mathematics', CAST(N'2017-12-14T06:10:04.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'7c7afb05-e175-5dda-be1c-6fd74f036d2e', N'Health Education', N'Health Education', N'Health Education', CAST(N'2017-09-27T03:23:25.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'83556529-a4f5-5092-a85e-76afd819dab9', N'Languages Other Than English', N'Languages Other Than English', N'Languages Other Than English', CAST(N'2017-09-27T03:23:12.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'2918d5eb-d81e-5513-b872-a317bb85603e', N'Spanish Language Arts and English as a Second Language', N'Spanish Language Arts and English as a Second Language', N'Spanish Language Arts and English as a Second Language', CAST(N'2017-09-27T03:25:35.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'91c5269a-26f6-5d21-adaf-e0b820023516', N'Prekindergarten', N'Prekindergarten', N'Prekindergarten', CAST(N'2018-01-29T03:31:46.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'79982571-d513-5eef-be18-ed850bd97b56', N'Social Studies', N'Social Studies', N'Social Studies', CAST(N'2017-09-27T03:22:53.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'4bd04905-366f-5fbd-9426-f15dd18ccaa8', N'Mathematics', N'Mathematics', N'Mathematics', CAST(N'2017-09-27T03:22:31.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'45a7d92c-6514-52fe-b548-f868ac0ecc0c', N'Chapter 113 Social Studies', N'Chapter 113 Social Studies', N'Chapter 113 Social Studies', CAST(N'2020-03-18T10:43:56.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'6b7c0375-e3e5-5626-9969-fa05c09e3993', N'English Language Arts and Reading', N'English Language Arts and Reading', N'English Language Arts and Reading', CAST(N'2017-09-27T03:22:14.000' AS DateTime))
INSERT [dbo].[CFSubject] ([Id], [Title], [HierarchyCode], [Description], [LastChangeDateTime]) VALUES (N'9d67cf61-1b78-5ab2-b9f1-fde0be26aa95', N'Physical Education', N'Physical Education', N'Physical Education', CAST(N'2017-09-27T03:23:41.000' AS DateTime))
GO

EXEC [InsertCFDocument] N'11a9d541-3f03-552d-a03c-064e92f7325c', N'c2fcebee-e9af-590c-92de-101617269943', NULL, N'Texas Education Agency', N'http://ritter.tea.state.tx.us/rules/tac/chapter118', N'Chapter 118. Economics with Emphasis on the Free Enterprise System and Its Benefits', N'Texas Education Agency', N'Chapter 118. Economics with Emphasis on the Free Enterprise System and Its Benefits', N'1.1.2', N'deprecated', N'en', CAST(N'2010-08-22' AS Date), CAST(N'2019-08-19' AS Date), CAST(N'2019-08-20T06:05:25.000' AS DateTime), N'Version notes: Updated to v1.1.2 on 8/27/18 to include adopted/effective date details in "Notes" section for all Grade/Course items.')
GO
*/