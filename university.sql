create database university;

use university;

show tables;

drop table students;

create table students (
	id int auto_increment primary key,
	fullname char(20)
);

create table schools (
	id int auto_increment primary key,
	name char(50)
);

create table class (
	id int auto_increment primary key,
	name char(10)
);

create table teachers(
	id int auto_increment primary key,
	fullname char(20)
);

alter table students
add column class_id int;

alter table students
add constraint class
foreign key(class_id)
references 
class(id);

alter table class 
add column school_id int;

alter table class 
add constraint school
foreign key(school_id)
references
schools(id);

alter table students
drop foreign key class;

create table students_class(
	id int auto_increment primary key,
	student_id int,
	class_id int
);

alter table students_class
add constraint class
foreign key(class_id)
references class(id);

alter table students_class
add constraint student
foreign key(student_id)
references students(id);

alter table class
add column teacher_id int;

alter table class 
add constraint teacher
foreign key(teacher_id)
references teachers(id);

insert into schools(
	name 
) values (
	'uet'
);

alter table teachers 
add column school_id int;

alter table teachers 
drop column school_id;


insert into teachers (fullname) values ("Mr.vars");

insert into class(name, school_id, teacher_id)
values("9A1", 1, 1);

alter table students 
drop column class_id;

-- start transaction;
-- insert into students (fullname) values ("quangphuctq");
-- insert into students_class(student_id, class_id) values (1, 1);
-- commit;
-- rollback;
-- 
-- delete from students 
-- where fullname = 'quangphuctq';







