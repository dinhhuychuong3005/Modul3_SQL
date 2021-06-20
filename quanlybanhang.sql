create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer
(cID int not null primary key,
cName varchar(50) not null,
cAge int not null);
create table Orders
(oId int primary key not null,
cId int not null,
oDate datetime not null,
oTotalPrice double not null,
foreign key(cId) references Customer (cId));
create table Product
(pId int not null primary key,
pName varchar(50) not null,
pPrice double not null
);
create table OrderDetail(
oId int not null,
pId int not null,
odQTY int not null,
foreign key(oId) references Orders(oId),
foreign key(pId) references Product(pId),
primary key(oId,pId)
);