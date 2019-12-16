DROP TABLE Salesperson IF exists;
create table Salesperson
(
   id integer not null,
   name varchar(30) not null,
   age integer not null,
   salary integer,
   primary key(id)
);
DROP TABLE Customer IF exists;
create table Customer
(
   id integer not null,
   name varchar(30) not null,
   city varchar(30) not null,
   industry varchar(30),
   primary key(id)
);
DROP TABLE Orders IF exists;
create table Orders
(
   Number integer not null,
   order_date date not null,
   cust_id integer not null,
   salesperson_id integer not null, 
   amount decimal(10.2)
);

DROP TABLE Students IF exists;
create table Students
(
   studentid integer not null,
   firstname varchar(30) not null,
   lastname varchar(30) not null,
   address varchar(30) ,
   city varchar(20),
   state varchar(10),
   zip varchar(5),
   country varchar(10),
   phone varchar(12),
   email varchar(30),
   graduationYear varchar(4),
   primary key(studentid)
);

DROP TABLE Employees IF exists;
create table Employees
(
   employeeid integer not null,
   firstname varchar(30) not null,
   lastname varchar(30) not null,
   address varchar(30) ,
   city varchar(20),
   state varchar(10),
   zip varchar(5),
   country varchar(10),
   phone varchar(12),
   email varchar(30),
   salary decimal(10.2),
   departmentid integer not null,
   primary key(employeeid)
);

DROP TABLE Departments IF exists;
create table Departments
(
	departmentid integer not null,
	description varchar(10),
	primary key(departmentid)
);

DROP TABLE Sections IF exists;
create table Sections
(
	courseid integer not null,
	section varchar(10) not null,
	days int,
	starttime date,
	length int,
	professorId integer not null,
	capacity int,
	primary key(courseid)
);

DROP TABLE Enrollments IF exists;
create table Enrollments
(
	courseid integer not null,
	section integer not null,
	studentid integer not null
);

DROP TABLE Courses IF exists;
create table Courses
(
	courseid integer not null,
	departmentid integer not null,
	name varchar(30),
	units int,
	cost decimal(10.2)
);

DROP TABLE Grades IF exists;
create table Grades
(
	studentid integer not null,
	courseid integer not null,
	year integer,
	semester integer,
	grade varchar(1)
);

DROP TABLE StudentTransactions IF exists;
create table StudentTransactions
(
	transactionid integer not null,
	studentid integer not null,
	postdate date,
	amount decimal(10.2),
	description varchar(30)
);