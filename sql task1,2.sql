create table categories(
categoryId int primary key identity,
categoryName varchar(255) not null);


insert into categories values('electronic'),('auto machine'),('antenna');


select * from categories;


create table products(
productId int primary key identity,
productName varchar(255) not null,
productPrice decimal(18,0) not null,
categoryId int foreign key references categories(categoryId),
brand varchar(255) not null,
size varchar(255),
color varchar(255),
mfgDate varchar(255) not null
);


insert into products values('mobile',19000,1,'vivo','9mm','blue','2022-09-13'),('motor',25000,2,'tata','200cm','brown','2023-12-23'),('setupbox',5000,3,'dishTv','2mm','black','2019-08-19');


select * from products;

create table users(
userId int primary key identity,
userName varchar(255),
userEmail varchar(255),
userDOB varchar(255));

insert into users values('chandu','chandu@gmaul.com','2001-05-19');

select *from users;

create table orders(
orderId int primary key identity,
orderDate date not null,
productId int foreign key references products(productId),
userId int foreign key references users(userId),
quantity int not null,
price decimal(18,0) not null,
);


insert into orders values('2001-05-19',1,1,1,18000);


select *from orders;



drop table orders;
