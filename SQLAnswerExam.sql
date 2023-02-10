USE University;
GO

--I am 12 in group

--ЗАВДАННЯ 1
--Запити написати, використовуючи явне (WHERE) і неявне (JOIN) об’єднання таблиць.
--1. Вивести всі можливі пари рядків викладачів та груп.
SELECT Groups.Name AS [Goup Name], Subjects.Name AS [Subjects Name], Lectures.LectureRoom AS [Lecture Room], Teachers.Name+ ' '+Teachers.Surname AS [Teachers Name]
FROM Teachers, Lectures, Subjects, GroupsLectures, Groups
WHERE Teachers.Id=Lectures.TeacherId AND
Lectures.SubjectId=SubjectId AND
Lectures.Id=GroupsLectures.LectureId AND
GroupsLectures.GroupId=Groups.Id;

--4. Вивести імена та прізвища викладачів, які читають лекції у групі “PV-125”.
SELECT Teachers.Name+ ' '+Teachers.Surname AS [Teachers Name], Groups.Name AS [Group Name], Subjects.Name 
FROM Teachers
JOIN Lectures ON Teachers.Id=Lectures.TeacherId 
JOIN Subjects ON Subjects.Id=Lectures.SubjectId
JOIN GroupsLectures ON Lectures.Id=GroupsLectures.LectureId
JOIN Groups ON GroupsLectures.GroupId=Groups.Id
WHERE Groups.Name='PV-125';

--ЗАВДАННЯ 2
--Функції агрегування
--12.Вивести назви факультетів та кількість дисциплін, які на них читаються.
SELECT Faculties.Name AS [Name faculties], COUNT(Subjects.Id) AS [Numbers subjects]
FROM Subjects, Lectures, GroupsLectures, Groups, Departments, Faculties
WHERE Subjects.Id=Lectures.SubjectId AND
Lectures.Id=GroupsLectures.LectureId AND
GroupsLectures.GroupId=Groups.Id AND
Groups.DepartmentId=Departments.Id AND
Departments.FacultyId=Faculties.Id
GROUP BY Faculties.Name;


--5. Вивести кількість груп, які відвідують лекції викладача “Jack Underhill”.
SELECT Teachers.Name AS [Teachers Name], COUNT(Groups.Id) AS [Count groups]
FROM Teachers, Lectures, GroupsLectures, Groups
WHERE Teachers.Id=Lectures.TeacherId AND
Lectures.Id=GroupsLectures.LectureId AND
GroupsLectures.GroupId=Groups.Id
GROUP BY Teachers.Name;

--ЗАВДАННЯ 3. Виконайте 2 завдання на вибір
--VIEWS, Procedure, function, trigger
--1. Створіть View, що відображає повну інформацію про викладачів.

GO
CREATE View InfoTeachers
AS

SELECT *FROM Teachers;

SELECT * FROM InfoTeachers;

--2. Створіть:
--Збережену процедуру, яка виводить назву кафедри, де читається конкретна дисципліна.
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

--Збережена процедура показує топ-3 кафедри, які отримують найбільше фінансування.
GO 
CREATE PROCEDURE TopTreeCafedrs
AS
SELECT TOP(3) Departments.Name, Departments.Financing FROM Departments ORDER BY Financing DESC;

GO

EXECUTE TopTreeCafedrs;
GO

--Збережена процедура показує інформацію про найуспішнішого викладача. 
--Успішність визначається за загальною кількістю дисциплін, які він читає.
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