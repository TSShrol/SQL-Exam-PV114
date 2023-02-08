

go

--1. Вивести всі можливі пари рядків викладачів та груп.
	SELECT Teachers.Id,Teachers.Name,Teachers.Surname,Teachers.Salary,
	Groups.Id,Groups.Name,Groups.[Year],Groups.DepartmentId
	FROM Teachers
	JOIN Lectures ON Lectures.TeacherId = Teachers.Id
	JOIN GroupsLectures ON GroupsLectures.LectureId = Lectures.Id
	JOIN Groups ON Groups.Id = GroupsLectures.GroupId
	--Union
	--SELECT * 
	--FROM Groups
	--JOIN GroupsLectures ON GroupsLectures.GroupId = Groups.Id
	--JOIN Lectures ON Lectures.Id = GroupsLectures.LectureId
	--JOIN Teachers ON Teachers.Id = Lectures.TeacherId

	--SELECT *
	--FROM Groups,Teachers

	
--2. Вивести назви факультетів, фонд фінансування кафедр яких перевищує фонд фінансування 
--факультету.
	
--3. Вивести прізвища кураторів груп та назви груп, які вони курирують.
--4. Вивести імена та прізвища викладачів, які читають лекції у групі “PV-114”.
--5. Вивести прізвища викладачів та назви факультетів, на яких вони читають лекції.
	
	--SELECT Distinct Teachers.Id,Teachers.Surname,
	SELECT Teachers.Id,Teachers.Surname,
	Faculties.Name
	FROM Teachers
	JOIN Lectures ON Lectures.TeacherId = Teachers.Id
	JOIN GroupsLectures ON GroupsLectures.LectureId = Lectures.Id
	JOIN Groups ON Groups.Id = GroupsLectures.GroupId
	JOIN Departments On Groups.DepartmentId = Departments.Id
	Join Faculties ON Faculties.Id = Departments.FacultyId
--6. Вивести назви кафедр та назви груп, які до них належать.
--7. Вивести назви дисциплін, які читає викладач “Samantha Adams”.
--8. Вивести назви кафедр, де читається дисципліна “Database Administration”.
--9. Вивести назви груп, що належать до факультету Computer Science.
--10. Вивести назви груп 5-го курсу, а також назву факультетів, до яких вони належать.
	SELECT Groups.Year,Groups.Name,Faculties.Name
	FROM Groups
	JOIN Departments ON Groups.DepartmentId = Departments.Id
	JOIN Faculties ON Departments.FacultyId = Faculties.Id
	Where Year =5
--11. Вивести повні імена викладачів та лекції, які вони читають (назви дисциплін та груп), причому 
--відібрати лише ті лекції, що читаються в аудиторії “B103”


--1. Вивести кількість викладачів кафедри «Software Development».
--2. Вивести кількість лекцій, які читає викладач “Dave McQueen”.
--3. Вивести кількість занять, які проводяться в аудиторії “Nystatin”.
		SELECT Lectures.LectureRoom,COUNT(Lectures.Id)
		FROM Lectures
		JOIN GroupsLectures ON Lectures.Id = GroupsLectures.LectureId
		WHERE Lectures.LectureRoom = 'Nystatin'
		Group By Lectures.LectureRoom
		
--4. Вивести назви аудиторій та кількість лекцій, що проводяться в них.
--5. Вивести кількість студентів, які відвідують лекції викладача “Jack Underhill”.
--6. Вивести середню ставку викладачів факультету Computer Science.
--7. Вивести мінімальну та максимальну кількість студентів серед усіх груп.
--8. Вивести середній фонд фінансування кафедр.
--9. Вивести повні імена викладачів та кількість читаних ними дисциплін.
--10. Ви змінили завдання - Кіль лекцій викладача
	SELECT Teachers.Name , Teachers.Surname , COUNT(Teachers.Id) AS QuantityOfLectures
	FROM Teachers
	JOIN Lectures ON Teachers.Id = Lectures.TeacherId
	GROUP BY Teachers.Name , Teachers.Surname

	HAVING Teachers.Name = 'Samantha'
	
	
--11. Вивести номери аудиторій та кількість кафедр, чиї лекції в них читаються.
--12.Вивести назви факультетів та кількість дисциплін, які на них читаються.
--13. Вивести кількість лекцій для кожної пари викладач-аудиторія.




--Збережену процедуру, яка виводить назву кафедри, де читається конкретна дисципліна.

BEGIN
CREATE PROCEDURE SubjectDepartment AS 
SELECT Subjects.Name AS Subject,Departments.Name AS Department
FROM Subjects
JOIN Lectures ON Lectures.SubjectId = Subjects.Id
JOIN GroupsLectures ON Lectures.Id = GroupsLectures.LectureId
JOIN Groups On GroupsLectures.GroupId = Groups.Id
JOIN Departments ON Departments.Id = Groups.DepartmentId
END;

use University
EXEC SubjectDepartment
--Збережену процедуру, що виводить «Hello, world!»
CREATE PROCEDURE HelloWorld AS 
print 'Hello world!'

use University
EXEC HelloWorld


--Збережену процедуру, що приймає три числа та повертає їхню сумуCREATE PROCEDURE CurrentDate AS 
SELECT GETDATE() AS CurrentDate;

CREATE PROCEDURE ThreeSum(@a int,@b int,@c int,@sum int OUTPUT) AS 
SET @sum = @a+@b+@c;


