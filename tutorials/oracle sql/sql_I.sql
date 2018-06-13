drop table demo1;

create table demo1(
pname varchar2(50),
age integer
);


INSERT INTO demo1(pname, age) VALUES('abc',12);
INSERT INTO demo1(pname, age) VALUES('abc',12);
INSERT INTO demo1(pname, age) VALUES('def',15);

select * from demo1;
--abc	12
--abc	12
--def	15

select distinct pname, age from demo1;
--abc	12
--def	15

select * from demo1 where age >=15;
--def	15

select * from demo1 order by age;
--abc	12
--abc	12
--def	15

select * from demo1 order by age desc;
--def	15
--abc	12
--abc	12


--CREATING A TABLE FROM A TABLE
--drop table demo2;

create table demo2(ename, age1) as 
    select pname, age from demo1;

select * from demo2;
--abc	12
--abc	12
--def	15

-- adding new instance to demo1 and then inserting that instance in demo2 using demo1
insert into demo1 values('xyz',78);
insert into demo2 select * from demo1 where pname = 'xyz';

select * from demo2;
--abc	12
--abc	12
--def	15
--xyz	78


-- DELETE
select * from demo1;
--abc	12
--abc	12
--def	15
--xyz	78

delete from demo1 where age = '12';

select * from demo1;
--def	15
--xyz	78


--UPDATE
update demo1 set age = 56 where pname = 'def';
select * from demo1;
--def	56
--xyz	78


-- ALTER

--1.adding new column
alter table demo1 add(city varchar2(30));
select * from demo1;
--def	56	(null)
--xyz	78	(null)

update demo1 set city = 'mys' where pname = 'def';
update demo1 set city = 'bng' where pname = 'xyz';
select * from demo1;
--def	56	mys
--xyz	78	bng

--2. Dropping a column from a table
alter table demo1 drop column city;
select * from demo1;
--def	56
--xyz	78

--3. Modifying existing column datatype
alter table demo1 modify (pname varchar2(20)); -- initially it was 50
-- however, to change the datatype of a column with data do the following (changing int -> long | varchar2 to char works with above line)

-- Method - add a new column and copy the data into it and delete the previous column
alter table demo1 add(age2 long);
select * from demo1;
--def 56 null	
--xyz 78 null
update demo1 set age2 = age;
select * from demo1;
--def 56 56	
--xyz 78 78
alter table demo1 drop column age;
select * from demo1; -- PNAME and AGE2
--def 56
--xyz 78

--4. Renaming column names
alter table demo1 rename column age2 to age;


--Renaming table
rename demo2 to demo3;
select * from demo3; --now using demo2 will result in an error
--abc	12
--abc	12
--def	15
--xyz	78


--Truncating table (similar to delete but much faster as it drop and re-create the table in spite of deleting rows one at a time)
truncate table demo3;
select * from demo3; -- table exists but no rows


--Synonyms (helpful to reference users from other schema to use synonym table name without changing original table name)
create public synonym main_demo for current_schema_name.demo1;
drop public synonym main_demo;

-- Describe
DESCR demo1;
--Name  Null? Type         
------- ----- ------------ 
--PNAME       VARCHAR2(20) 
--AGE         LONG  


-- -----------------------------------------------------------------------------------------------------------------------------
drop table demo1;
drop table demo3;

