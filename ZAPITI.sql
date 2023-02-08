USE University;

--2Вивести назви факультетів, фонд фінансування кафедряких перевищує фонд фінансування факультету.
SELECT DISTINCT Faculties.Name
FROM Faculties
JOIN Departments ON Faculties.Id = Departments.FacultyId
WHERE Faculties.Financing < Departments.Financing
--3Вивести прізвища кураторів груп та назви груп, які воникурирують
SELECT Curators.Surname , Groups.Name
FROM GroupsCurators
JOIN  Groups ON Groups.Id = GroupsCurators.GroupId
JOIN Curators ON Curators.Id = GroupsCurators.CuratorId
--4Вивести імена та прізвища викладачів, які читають лекціїу групі “PV-114”.
SELECT Curators.Name, Curators.Surname
FROM GroupsCurators
JOIN  Groups ON Groups.Id = GroupsCurators.GroupId
JOIN Curators ON Curators.Id = GroupsCurators.CuratorId
WHERE Groups.Name = 'PV-114'
--5 Вивести прізвища викладачів та назви факультетів, на якихвони читають лекції.
SELECT Curators.Name, Curators.Surname , Faculties.Name
FROM GroupsCurators
JOIN  Groups ON Groups.Id = GroupsCurators.GroupId
JOIN Curators ON Curators.Id = GroupsCurators.CuratorId
JOIN Departments ON Departments.Id = Groups.DepartmentId
JOIN Faculties ON Faculties.Id = Departments.FacultyId
--6Вивести назви кафедр та назви груп, які до них належать.
SELECT Groups.Name , Departments.Name
FROM Groups
JOIN Departments ON Departments.Id = Groups.DepartmentId
--7Вивести назви дисциплін, які читає викладач “SamanthaAdams”.
SELECT Subjects.Name
FROM Lectures
JOIN Teachers ON Teachers.Id = Lectures.TeacherId
JOIN Subjects ON Subjects.Id = Lectures.SubjectId
WHERE Teachers.Name='Samantha' AND Teachers.Surname='Adams'
--10Вивести назвигруп 5-го курсу, а також назву факультетів,до яких вони належать.
SELECT Groups.Name , Departments.Name
FROM Groups
JOIN Departments ON Departments.Id = Groups.DepartmentId
WHERE Groups.Year = 5









--Вивести назви аудиторій та кількість лекцій, що проводяться в них.
SELECT Lectures.LectureRoom , COUNT(GroupsLectures.LectureId) AS CountOfLectures
FROM Lectures
JOIN GroupsLectures ON GroupsLectures.LectureId = Lectures.Id
GROUP BY Lectures.LectureRoom
--Вивести кількість лекцій певного викладача
SELECT Teachers.Name , Teachers.Surname , COUNT(Lectures.Id) AS QuantityOfLectures
FROM Lectures
JOIN Teachers ON Teachers.Id = Lectures.TeacherId
GROUP BY Teachers.Name , Teachers.Surname



--Створіть2 процедури на вибір:
--Збережену процедуру, щовиводить «Hello, world!»
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


