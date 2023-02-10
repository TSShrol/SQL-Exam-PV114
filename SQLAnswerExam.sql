USE University;
GO

--I am 12 in group

--�������� 1
--������ ��������, �������������� ���� (WHERE) � ������ (JOIN) �ᒺ������ �������.
--1. ������� �� ������ ���� ����� ���������� �� ����.
SELECT Groups.Name AS [Goup Name], Subjects.Name AS [Subjects Name], Lectures.LectureRoom AS [Lecture Room], Teachers.Name+ ' '+Teachers.Surname AS [Teachers Name]
FROM Teachers, Lectures, Subjects, GroupsLectures, Groups
WHERE Teachers.Id=Lectures.TeacherId AND
Lectures.SubjectId=SubjectId AND
Lectures.Id=GroupsLectures.LectureId AND
GroupsLectures.GroupId=Groups.Id;

--4. ������� ����� �� ������� ����������, �� ������� ������ � ���� �PV-125�.
SELECT Teachers.Name+ ' '+Teachers.Surname AS [Teachers Name], Groups.Name AS [Group Name], Subjects.Name 
FROM Teachers
JOIN Lectures ON Teachers.Id=Lectures.TeacherId 
JOIN Subjects ON Subjects.Id=Lectures.SubjectId
JOIN GroupsLectures ON Lectures.Id=GroupsLectures.LectureId
JOIN Groups ON GroupsLectures.GroupId=Groups.Id
WHERE Groups.Name='PV-125';

--�������� 2
--������� �����������
--12.������� ����� ���������� �� ������� ��������, �� �� ��� ���������.
SELECT Faculties.Name AS [Name faculties], COUNT(Subjects.Id) AS [Numbers subjects]
FROM Subjects, Lectures, GroupsLectures, Groups, Departments, Faculties
WHERE Subjects.Id=Lectures.SubjectId AND
Lectures.Id=GroupsLectures.LectureId AND
GroupsLectures.GroupId=Groups.Id AND
Groups.DepartmentId=Departments.Id AND
Departments.FacultyId=Faculties.Id
GROUP BY Faculties.Name;


--5. ������� ������� ����, �� �������� ������ ��������� �Jack Underhill�.
SELECT Teachers.Name AS [Teachers Name], COUNT(Groups.Id) AS [Count groups]
FROM Teachers, Lectures, GroupsLectures, Groups
WHERE Teachers.Id=Lectures.TeacherId AND
Lectures.Id=GroupsLectures.LectureId AND
GroupsLectures.GroupId=Groups.Id
GROUP BY Teachers.Name;

--�������� 3. ��������� 2 �������� �� ����
--VIEWS, Procedure, function, trigger
--1. ������� View, �� �������� ����� ���������� ��� ����������.

GO
CREATE View InfoTeachers
AS

SELECT *FROM Teachers;

SELECT * FROM InfoTeachers;

--2. �������:
--��������� ���������, ��� �������� ����� �������, �� �������� ��������� ���������.
GO 
CREATE PROCEDURE InfoSubjectANDCafedra
AS
SELECT Subjects.Name, Departments.Name
FROM Subjects, Lectures, GroupsLectures, Groups, Departments
WHERE Subjects.Id=Lectures.SubjectId AND
Lectures.Id= GroupsLectures.LectureId AND
GroupsLectures.GroupId=Groups.Id AND
Groups.DepartmentId=Departments.Id;
GO

EXECUTE InfoSubjectANDCafedra;
GO

--��������� ��������� ������ ���-3 �������, �� ��������� �������� ������������.
GO 
CREATE PROCEDURE TopTreeCafedrs
AS
SELECT TOP(3) Departments.Name, Departments.Financing FROM Departments ORDER BY Financing DESC;

GO

EXECUTE TopTreeCafedrs;
GO

--��������� ��������� ������ ���������� ��� ������������ ���������. 
--�������� ����������� �� ��������� ������� ��������, �� �� ����.
GO 
CREATE PROCEDURE TeacherSuccess
AS
SELECT TOP(1) Teachers.Name+' '+Teachers.Surname AS [Teacher Name], Teachers.Salary, COUNT(Lectures.SubjectId) AS [Subjects Count]
FROM Teachers
JOIN Lectures ON Teachers.Id=Lectures.TeacherId
GROUP BY Teachers.Name+' '+Teachers.Surname, Teachers.Salary
ORDER BY [Subjects Count] DESC;

EXECUTE TeacherSuccess;
GO