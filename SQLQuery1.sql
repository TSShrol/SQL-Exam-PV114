

go

--1. ������� �� ������ ���� ����� ���������� �� ����.
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

	
--2. ������� ����� ����������, ���� ������������ ������ ���� �������� ���� ������������ 
--����������.
	
--3. ������� ������� �������� ���� �� ����� ����, �� ���� ���������.
--4. ������� ����� �� ������� ����������, �� ������� ������ � ���� �PV-114�.
--5. ������� ������� ���������� �� ����� ����������, �� ���� ���� ������� ������.
	
	--SELECT Distinct Teachers.Id,Teachers.Surname,
	SELECT Teachers.Id,Teachers.Surname,
	Faculties.Name
	FROM Teachers
	JOIN Lectures ON Lectures.TeacherId = Teachers.Id
	JOIN GroupsLectures ON GroupsLectures.LectureId = Lectures.Id
	JOIN Groups ON Groups.Id = GroupsLectures.GroupId
	JOIN Departments On Groups.DepartmentId = Departments.Id
	Join Faculties ON Faculties.Id = Departments.FacultyId
--6. ������� ����� ������ �� ����� ����, �� �� ��� ��������.
--7. ������� ����� ��������, �� ���� �������� �Samantha Adams�.
--8. ������� ����� ������, �� �������� ��������� �Database Administration�.
--9. ������� ����� ����, �� �������� �� ���������� Computer Science.
--10. ������� ����� ���� 5-�� �����, � ����� ����� ����������, �� ���� ���� ��������.
	SELECT Groups.Year,Groups.Name,Faculties.Name
	FROM Groups
	JOIN Departments ON Groups.DepartmentId = Departments.Id
	JOIN Faculties ON Departments.FacultyId = Faculties.Id
	Where Year =5
--11. ������� ���� ����� ���������� �� ������, �� ���� ������� (����� �������� �� ����), ������� 
--������� ���� � ������, �� ��������� � ������� �B103�


--1. ������� ������� ���������� ������� �Software Development�.
--2. ������� ������� ������, �� ���� �������� �Dave McQueen�.
--3. ������� ������� ������, �� ����������� � ������� �Nystatin�.
		SELECT Lectures.LectureRoom,COUNT(Lectures.Id)
		FROM Lectures
		JOIN GroupsLectures ON Lectures.Id = GroupsLectures.LectureId
		WHERE Lectures.LectureRoom = 'Nystatin'
		Group By Lectures.LectureRoom
		
--4. ������� ����� �������� �� ������� ������, �� ����������� � ���.
--5. ������� ������� ��������, �� �������� ������ ��������� �Jack Underhill�.
--6. ������� ������� ������ ���������� ���������� Computer Science.
--7. ������� �������� �� ����������� ������� �������� ����� ��� ����.
--8. ������� ������� ���� ������������ ������.
--9. ������� ���� ����� ���������� �� ������� ������� ���� ��������.
--10. �� ������ �������� - ʳ�� ������ ���������
	SELECT Teachers.Name , Teachers.Surname , COUNT(Teachers.Id) AS QuantityOfLectures
	FROM Teachers
	JOIN Lectures ON Teachers.Id = Lectures.TeacherId
	GROUP BY Teachers.Name , Teachers.Surname

	HAVING Teachers.Name = 'Samantha'
	
	
--11. ������� ������ �������� �� ������� ������, �� ������ � ��� ���������.
--12.������� ����� ���������� �� ������� ��������, �� �� ��� ���������.
--13. ������� ������� ������ ��� ����� ���� ��������-��������.




--��������� ���������, ��� �������� ����� �������, �� �������� ��������� ���������.

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
--��������� ���������, �� �������� �Hello, world!�
CREATE PROCEDURE HelloWorld AS 
print 'Hello world!'

use University
EXEC HelloWorld


--��������� ���������, �� ������ ��� ����� �� ������� ���� ����CREATE PROCEDURE CurrentDate AS 
SELECT GETDATE() AS CurrentDate;

CREATE PROCEDURE ThreeSum(@a int,@b int,@c int,@sum int OUTPUT) AS 
SET @sum = @a+@b+@c;


