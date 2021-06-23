create database scuolaweb;
use scuolaweb;

create table users(
	id int primary key auto_increment,
    username varchar(50),
    password varchar(50)
 );

insert into users(username, password) values
('Admin', '1234'),
('Pippo', 'Baudo');


create table studenti(
	id int primary key auto_increment,
    name varchar(50),
   cognome varchar(50),
    datadinascita date,
    classe int,
    sezione varchar(50),
    userid int,
    foreign key (userid) references users(id)
);

create table voti(
	id int primary key,
	materia varchar(50),
    punteggio double,
     userid int,
	studenteid int,
    foreign key (id) references studente(id)
);


SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
