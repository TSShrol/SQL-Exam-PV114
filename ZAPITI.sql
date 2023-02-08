USE University;

--2������� ����� ����������, ���� ������������ ���������� �������� ���� ������������ ����������.
SELECT DISTINCT Faculties.Name
FROM Faculties
JOIN Departments ON Faculties.Id = Departments.FacultyId
WHERE Faculties.Financing < Departments.Financing
--3������� ������� �������� ���� �� ����� ����, �� �������������
SELECT Curators.Surname , Groups.Name
FROM GroupsCurators
JOIN  Groups ON Groups.Id = GroupsCurators.GroupId
JOIN Curators ON Curators.Id = GroupsCurators.CuratorId
--4������� ����� �� ������� ����������, �� ������� ������� ���� �PV-114�.
SELECT Curators.Name, Curators.Surname
FROM GroupsCurators
JOIN  Groups ON Groups.Id = GroupsCurators.GroupId
JOIN Curators ON Curators.Id = GroupsCurators.CuratorId
WHERE Groups.Name = 'PV-114'
--5 ������� ������� ���������� �� ����� ����������, �� �������� ������� ������.
SELECT Curators.Name, Curators.Surname , Faculties.Name
FROM GroupsCurators
JOIN  Groups ON Groups.Id = GroupsCurators.GroupId
JOIN Curators ON Curators.Id = GroupsCurators.CuratorId
JOIN Departments ON Departments.Id = Groups.DepartmentId
JOIN Faculties ON Faculties.Id = Departments.FacultyId
--6������� ����� ������ �� ����� ����, �� �� ��� ��������.
SELECT Groups.Name , Departments.Name
FROM Groups
JOIN Departments ON Departments.Id = Groups.DepartmentId
--7������� ����� ��������, �� ���� �������� �SamanthaAdams�.
SELECT Subjects.Name
FROM Lectures
JOIN Teachers ON Teachers.Id = Lectures.TeacherId
JOIN Subjects ON Subjects.Id = Lectures.SubjectId
WHERE Teachers.Name='Samantha' AND Teachers.Surname='Adams'
--10������� ��������� 5-�� �����, � ����� ����� ����������,�� ���� ���� ��������.
SELECT Groups.Name , Departments.Name
FROM Groups
JOIN Departments ON Departments.Id = Groups.DepartmentId
WHERE Groups.Year = 5









--������� ����� �������� �� ������� ������, �� ����������� � ���.
SELECT Lectures.LectureRoom , COUNT(GroupsLectures.LectureId) AS CountOfLectures
FROM Lectures
JOIN GroupsLectures ON GroupsLectures.LectureId = Lectures.Id
GROUP BY Lectures.LectureRoom
--������� ������� ������ ������� ���������
SELECT Teachers.Name , Teachers.Surname , COUNT(Lectures.Id) AS QuantityOfLectures
FROM Lectures
JOIN Teachers ON Teachers.Id = Lectures.TeacherId
GROUP BY Teachers.Name , Teachers.Surname



--�������2 ��������� �� ����:
--��������� ���������, ���������� �Hello, world!�
CREATE PROCEDURE dbo.HelloWorld
AS
BEGIN
    PRINT 'Hello world';
END;
EXEC dbo.HelloWorld;
CREATE PROCEDURE dbo.CalculateFactorial (@number INT)
AS
BEGIN
    DECLARE @factorial INT = 1;
    DECLARE @counter INT = 1;

    WHILE (@counter <= @number)
    BEGIN
        SET @factorial = @factorial * @counter;
        SET @counter = @counter + 1;
    END;

    SELECT @factorial AS Result;
END;
EXEC dbo.CalculateFactorial @number = 10;
CREATE VIEW dbo.TeacherInformation
AS
SELECT
	Id ,
	Name ,
	Salary ,
	Surname
FROM Teachers
SELECT * FROM dbo.TeacherInformation;


