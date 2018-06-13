-- Primary Key 

--1. defined at column level
create table pk1(
pname varchar2(20),
pid varchar2(20) primary key,
dob date
);
descr pk1;
--Name  Null?    Type         
------- -------- ------------ 
--PNAME          VARCHAR2(20) 
--PID   NOT NULL VARCHAR2(20) 
--DOB            DATE  
drop table pk1;

--2. defined at table level
create table pk1(
pname varchar2(20),
pid varchar2(20),
dob date,
primary key(pid)
);
descr pk1;
--Name  Null?    Type         
------- -------- ------------ 
--PNAME          VARCHAR2(20) 
--PID   NOT NULL VARCHAR2(20) 
--DOB            DATE 

drop table pk1;


-- Foreign key (a column or group of columns)

--1. defined at column level
create table pk1(
pname varchar2(20),
pid varchar2(20),
dob date,
primary key(pid)
);

create table pk2(
pname varchar2(20),
pid varchar2(20) references pk1,
dob date
);
descr pk2;
--Name  Null?    Type         
------- -------- ------------ 
--PNAME          VARCHAR2(20) 
--PID            VARCHAR2(20) 
--DOB            DATE 
drop table pk2;

--2. defined at table level
create table pk2(
pname varchar2(20),
pid varchar2(20),
dob date,
foreign key(pid) references pk1(pid)
);
descr pk2;
--Name  Null?    Type         
------- -------- ------------ 
--PNAME          VARCHAR2(20) 
--PID            VARCHAR2(20) 
--DOB            DATE 

drop table pk2;
drop table pk1;

--3. ON DELETE CASCADE (a delete operation for an entry in the master table here pk1 
--                      will trigger a delete operation for all other detail table here pk2 for the same entry)
create table pk1(
pid varchar2(20) primary key,
vinfo varchar2(20)
);

create table pk2(
pid varchar2(20),
dob date,
constraint cname foreign key(pid) references pk1(pid) on delete cascade
);

insert into pk1 values('PID0', 'row 1');
insert into pk1 values('PID1', 'row 2');
select * from pk1;
--PID0	row 1
--PID1	row 2

insert into pk2 values('PID0', '28-June-2018');
insert into pk2 values('PID1', '29-June-2018');
select * from pk2;
--PID0	28-JUN-18
--PID1	29-JUN-18

delete from pk1 where pid = 'PID0';

select * from pk1;
--PID1	row 2
select * from pk2;
--PID1	29-JUN-18

drop table pk2;
drop table pk1;

--4. ON DELETE SET NULL (this time it replaces with null)
create table pk1(
pid varchar2(20) primary key,
vinfo varchar2(20)
);

create table pk2(
pid varchar2(20),
dob date,
foreign key(pid) references pk1(pid) on delete set null
);

insert into pk1 values('PID0', 'row 1');
insert into pk1 values('PID1', 'row 2');
select * from pk1;
--PID0	row 1
--PID1	row 2

insert into pk2 values('PID0', '28-June-2018');
insert into pk2 values('PID1', '29-June-2018');
select * from pk2;
--PID0	28-JUN-18
--PID1	29-JUN-18

delete from pk1 where pid = 'PID0';

select * from pk1;
--PID1	row 2
select * from pk2;
--null	28-JUN-18
--PID1	29-JUN-18

drop table pk2;
drop table pk1;


--Unique key (can be more than 1 in a table which is not the case with PK)

--1. defined at column level
create table uk(
pid varchar2(20) unique
);
descr uk;
--Name Null? Type         
------ ----- ------------ 
--PID        VARCHAR2(20)
drop table uk;

--2. defined at table level
create table uk(
pid varchar2(2),
uuid varchar2(5),
unique(pid, uuid)
);
drop table uk;


-- null (empty strings are also treated as null)
create table n(
pid varchar2(50) not null,
uuid varchar2(12) -- even using only varchar doesn't help distinguishing between empty string and null
);

insert into n values('hello', '');
select * from n;
--hello	null

drop table n;


--Default
create table d(
pid int default 5,
pn varchar2(20)
);

insert into d(pn) values('hello');
select * from d;
--5	hello

drop table d;


-- Check (provides a constraint for upcoming value, should result in bool)

--1. at column level
create table ck(
pid int check(pid >= 50),
pname varchar2(50) check(pname = upper(pname))
);

insert into ck values(140, 'HI');
select * from ck;
-- 140  HI

drop table ck;

--2. at table level
create table ck(
pid int,
pname varchar2(50),
check(pid >= 50), 
check(pname = upper(pname))
);

insert into ck values(540, 'HI');
select * from ck;
-- 540  HI

drop table ck;


-- giving constraint name
create table cname(
pid int,
constraint c1 check(pid >= 200)
);

drop table cname;


--ALTER (define and drop constraints)
--1. define constraint
create table c1(
pid int
);

descr c1;
--Name Null? Type       
------ ----- ---------- 
--PID        NUMBER(38)

alter table c1 add constraint pk primary key(pid);
descr c1;
--Name Null?    Type       
------ -------- ---------- 
--PID  NOT NULL NUMBER(38)

--2. dropping constraint
alter table c1 drop constraint pk;  -- always requires constraint name
descr c1;
--Name Null? Type       
------ ----- ---------- 
--PID        NUMBER(38)