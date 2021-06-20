create database QuanLySinhVien;
use QuanLySinhVien;
create table Class(
ClassID int not null primary key auto_increment,
ClassName varchar(60) not null,
StartDate datetime not null,
Status bit
);
create table Student(
StudentId int not null primary key auto_increment,
StudentName varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassId int not null,
foreign key (ClassId) references Class (ClassID)
);
create table Subject(
SubId int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default 1 check(Credit >= 1),
Status  BIT  DEFAULT 1
);
CREATE TABLE Mark
(
    MarkId    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    SubId     INT NOT NULL,
    StudentId INT NOT NULL,
    Mark      FLOAT   DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    FOREIGN KEY (StudentId) REFERENCES Student (StudentId)
);