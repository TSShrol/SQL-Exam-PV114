-- SQL script for inserting data to the Database

use University;
go

insert into Subjects (Name) values ( 'Computer Science');
insert into Subjects (Name) values ('Information Systems');
insert into Subjects (Name) values ( 'Chemical Engineering');
insert into Subjects (Name) values ( 'Structural Engineering');
insert into Subjects (Name) values ( 'Mechanical Engineering');
insert into Subjects (Name) values ( 'Mathematics');
insert into Subjects (Name) values ( 'Physics');
insert into Subjects (Name) values ( 'Physical Education');
insert into Subjects (Name) values ( 'Biology');
insert into Subjects (Name) values ('Geography');
go

insert into Teachers (Name, Salary, Surname) values ('Dave', 51, 'McQueen');
insert into Teachers (Name, Salary, Surname) values ('Jack', 31, 'Underhill');
insert into Teachers (Name, Salary, Surname) values ('Royce', 51, 'Meffin');
insert into Teachers (Name, Salary, Surname) values ('Samantha', 85, 'Adams');
insert into Teachers (Name, Salary, Surname) values ('Ethyl', 58, 'Jerzyk');
insert into Teachers (Name, Salary, Surname) values ('Frannie', 16, 'Damerell');
insert into Teachers (Name, Salary, Surname) values ('Leonelle', 73, 'Meek');
insert into Teachers (Name, Salary, Surname) values ('Anica', 14, 'Corry');
insert into Teachers (Name, Salary, Surname) values ('Mame', 81, 'Mee');
insert into Teachers (Name, Salary, Surname) values ('Adam', 70, 'Spruce');
insert into Teachers (Name, Salary, Surname) values ('Ange', 87, 'Diprose');
insert into Teachers (Name, Salary, Surname) values ('Ivy', 71, 'Leavry');
insert into Teachers (Name, Salary, Surname) values ('Maurizio', 19, 'MacConchie');
insert into Teachers (Name, Salary, Surname) values ('Lynnett', 69, 'Sommerville');
insert into Teachers (Name, Salary, Surname) values ('Pate', 45, 'Purvis');
insert into Teachers (Name, Salary, Surname) values ('Sari', 11, 'Rallings');
insert into Teachers (Name, Salary, Surname) values ('Ursala', 58, 'Tejada');
insert into Teachers (Name, Salary, Surname) values ('Consalve', 89, 'Alvarez');
insert into Teachers (Name, Salary, Surname) values ('Elena', 70, 'Verne');
insert into Teachers (Name, Salary, Surname) values ('Ivan', 32, 'Granleese');
go

insert into Faculties (financing, name) values ('$1119.03', 'Dabtype');
insert into Faculties (financing, name) values ('$2948.43', 'Yata');
insert into Faculties (financing, name) values ('$2467.04', 'Chatterpoint');
insert into Faculties (financing, name) values ('$9065.71', 'Yotz');
insert into Faculties (financing, name) values ('$3924.59', 'Rhynoodle');
insert into Faculties (financing, name) values ('$7752.62', 'Jabberstorm');
insert into Faculties (financing, name) values ('$2614.03', 'Voolia');
insert into Faculties (financing, name) values ('$5938.83', 'Yombu');
insert into Faculties (financing, name) values ('$1916.48', 'Tagtune');
insert into Faculties (financing, name) values ('$8698.44', 'Wikido');
go

insert into Curators (Name, Surname) values ('Liam', 'Vankov');
insert into Curators (Name, Surname) values ('Olivia', 'Del Checolo');
insert into Curators (Name, Surname) values ('Oliver', 'Gane');
insert into Curators (Name, Surname) values ('Alma', 'Tarplee');
insert into Curators (Name, Surname) values ('Ollie', 'Oakey');
insert into Curators (Name, Surname) values ('Irv', 'Halfhyde');
insert into Curators (Name, Surname) values ('Lettie', 'Andrieux');
go

insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('ShopRite Day Calm', 8, 12);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('NuLev', 7, 11);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Levothyroxine Sodium', 10, 2);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Pure petroleum', 6, 14);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Alba Botanica Natural Even Advanced Sea Moss Moisturizer SPF15', 10, 12);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Hydrocortisone', 9, 12);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Venlafaxine Hydrochloride', 3, 8);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Carbidopa and Levodopa', 1, 2);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Secret Clinical Invisible', 4, 4);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Docetaxel', 9, 7);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Potassium Chloride', 4, 4);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('ziprasidone hydrochloride', 4, 12);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Venlafaxine Hydrochloride', 1, 1);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Pleo Lat', 1, 12);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Nystatin', 2, 10);
insert into Lectures (LectureRoom, SubjectId, TeacherId) values ('Nystatin', 3, 9);
go

insert into Departments
values (8000, 'Graphic Design', 1),
       (6200, 'Software Development', 2),
	   (7800, 'Testing', 2),
	   (9900, 'Cybersecurity', 3),
	   (7500, 'Visual Design', 1),
	   (7100, 'Systems Engeneering', 4),
	   (8600, 'Network Engeneering', 4),
	   (9500, 'Web Developing', 1),
	   (6300, 'Database Administration', 3),
	   (8500, 'Computer Architecture', 5),
	   (8000, 'Computer Support', 5),
	   (7400, 'Project Management', 6),
	   (6900, 'Information Security', 6),
	   (5800, 'Data Management', 6)
go

insert into Groups (Name, Year, DepartmentId) values ('SPD-115', 4, 12);
insert into Groups (Name, Year, DepartmentId) values ('SBU-331', 3, 14);
insert into Groups (Name, Year, DepartmentId) values ('SPU-123', 4, 1);
insert into Groups (Name, Year, DepartmentId) values ('PV-125', 5, 4);
insert into Groups (Name, Year, DepartmentId) values ('PD-221', 1, 6);
insert into Groups (Name, Year, DepartmentId) values ('VPD-121', 2, 1);
insert into Groups (Name, Year, DepartmentId) values ('SPU-013', 1, 8);
insert into Groups (Name, Year, DepartmentId) values ('VPD-011', 5, 14);
insert into Groups (Name, Year, DepartmentId) values ('PD-014', 4, 6);
insert into Groups (Name, Year, DepartmentId) values ('KI-21', 1, 5);
insert into Groups (Name, Year, DepartmentId) values ('QA-25', 2, 9);
insert into Groups (Name, Year, DepartmentId) values ('PV-114', 3, 4);
insert into Groups (Name, Year, DepartmentId) values ('KFA-212', 2, 7);
insert into Groups (Name, Year, DepartmentId) values ('LCA-117', 4, 8);
insert into Groups (Name, Year, DepartmentId) values ('SAP-567', 4, 3);
insert into Groups (Name, Year, DepartmentId) values ('USP-007', 4, 5);
insert into Groups (Name, Year, DepartmentId) values ('ROI-097', 5, 9);
insert into Groups (Name, Year, DepartmentId) values ('BU-228', 2, 2);
insert into Groups (Name, Year, DepartmentId) values ('JEI-113', 3, 5);
insert into Groups (Name, Year, DepartmentId) values ('KOI-232', 4, 7);
go

insert into GroupsLectures (GroupId, LectureId) values (5, 15);
insert into GroupsLectures (GroupId, LectureId) values (16, 13);
insert into GroupsLectures (GroupId, LectureId) values (17, 15);
insert into GroupsLectures (GroupId, LectureId) values (9, 14);
insert into GroupsLectures (GroupId, LectureId) values (19, 13);
insert into GroupsLectures (GroupId, LectureId) values (9, 12);
insert into GroupsLectures (GroupId, LectureId) values (19, 12);
insert into GroupsLectures (GroupId, LectureId) values (3, 14);
insert into GroupsLectures (GroupId, LectureId) values (15, 8);
insert into GroupsLectures (GroupId, LectureId) values (17, 15);
insert into GroupsLectures (GroupId, LectureId) values (5, 13);
insert into GroupsLectures (GroupId, LectureId) values (5, 1);
insert into GroupsLectures (GroupId, LectureId) values (2, 4);
insert into GroupsLectures (GroupId, LectureId) values (16, 1);
insert into GroupsLectures (GroupId, LectureId) values (11, 10);
insert into GroupsLectures (GroupId, LectureId) values (9, 10);
insert into GroupsLectures (GroupId, LectureId) values (7, 2);
insert into GroupsLectures (GroupId, LectureId) values (18, 11);
insert into GroupsLectures (GroupId, LectureId) values (13, 1);
insert into GroupsLectures (GroupId, LectureId) values (19, 7);
go

insert into GroupsCurators
values (1, 3),
       (4, 5),
	   (3, 4),
	   (5, 8),
	   (2, 2),
	   (6, 7),
	   (7, 1),
	   (1, 9),
	   (7, 6),
	   (3, 10),
	   (7, 13),
	   (2, 18),
	   (1, 14),
	   (3, 19),
	   (2, 11)
go