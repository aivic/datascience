/*OPERATIONS*/

create table op(
c1 int,
c2 int
);

insert into op values(12,8);
insert into op values(10,5);
select * from op;
--12	8
--10	5

select c1+c2 as new_col from op;
--new_col
--20
--15

select c1/c2 from op;
--1.5
--2

select c1*c2 from op;
--96
--50

select round(c1/c2) from op;
--2
--2

select mod(c1, c2) from op;
--4
--0

select c1 from op where c1 = 12 and c2 = 8;
--12

select c1 from op where c1 >= 10 or c2 = 8;
--12
--10

alter table op add str varchar2(20);
update op set str = 'Hello' where c1 = 12;
update op set str = 'World' where c1 = 10;
select * from op;
--12	8	Hello
--10	5	World

-- % means any number of character (0,1,or more). It could be put before, after or both sides of a word as shown
select * from op where str like 'H%';
--12	8	Hello
select * from op where str like '%o';
--12	8	Hello
select * from op where str like '%e%';
--12	8	Hello

-- _ means just one character
select * from op where str like 'Hell_';
--12	8	Hello
select * from op where str like '_ell_';
--12	8	Hello

alter table op add dt date;
update op set dt = '25-Jun-2099' where str = 'Hello';
update op set dt = '14-Dec-2090' where str = 'World';
select * from op;
--12	8	Hello	25-JUN-99
--10	5	World	14-DEC-90

select to_char(dt,'mm') from op;
--06
--12

select * from op where to_char(dt,'dd') > 11;
--12	8	Hello	25-JUN-99
--10	5	World	14-DEC-90

select * from op where to_char(dt,'mm') between 01 and 12;
--12	8	Hello	25-JUN-99
--10	5	World	14-DEC-90

select * from op where to_char(dt,'mm') not between 08 and 12;
--12	8	Hello	25-JUN-99

select * from op where str in ('Hello','hi');
--12	8	Hello	25-JUN-99



/*                                             INBUILT FUNCTIONS                                     */

select * from op;
--12	8	Hello	25-JUN-99
--10	5	World	14-DEC-90

select sum(c1) as sum, min(c1) as min, max(c1) as max, avg(c1) as avg from op;
--sum min max avg
--22	10	12	11

select round(sqrt(c1)) as sqrt, abs(c1) as abs from op;
--sqrt abs
--3 12
--3 10

select count(*) as tot_count_including_duplicates from op;
--tot_count_including_duplicates
--2

select count(*) as distinct_rows from (select distinct * from op);
--distinct_rows
--2

select trunc(sqrt(c1),3) from op;
--3.464
--3.162

select ceil(sqrt(c1)) from op;
--4
--4

select floor(sqrt(c1)) from op;
--3
--3

select lower(str), upper(str), initcap(str) from op;
--hello	HELLO	Hello
--world	WORLD	World

select substr(str,1,4) from op;
--Hell
--Worl

select ascii(str) from op; -- return ascii value of first encountered character here H and W
--72
--87

select instr(str,'l') from op; -- returns the first index of substring 
--3
--4

select translate(str, 'el','pq') from op; -- replaces extact index value at all the places -> e with p | l with q (every instance of l)
--Hpqqo
--Worqd

select length(str) from op;
--5
--5

select ltrim(str, 'He') from op; -- removes value encountered from first index 
--llo
--World

select rtrim(str, 'd') from op; -- removes value encountered from last index 
--Hello
--Worl

select lpad(str,8,'***') from op; -- pads necessary string in front. Make sure length = initial string + new string
--***Hello
--***World

select rpad(str,8,'***') from op; -- pads necessary string at last. Make sure length = initial string + new string
--Hello***
--World***

select to_number('50') from dual; -- converts a string number back to numeric format
--50

drop table op;


/*                                                  DATE FUNCTIONS                                  */

create table op(
dt date
);

insert into op values('1-Jan-2018');
insert into op values('12-Feb-2018');
insert into op values('25-Dec-2018');
select * from op;
--01-JAN-18
--12-FEB-18
--25-DEC-18

select add_months(dt,2) from op; -- adding 2 months
--01-MAR-18
--12-APR-18
--25-FEB-19

select last_day(dt) from op; -- last day along with the date
--31-JAN-18
--28-FEB-18
--31-DEC-18

select next_day(dt, 'Sat') from op; -- returns upcoming specified weekday 
--06-JAN-18
--17-FEB-18
--29-DEC-18

select ceil(months_between('15-Sep-2018', dt)) from op;
--  9
--  8
-- -3

select to_char(dt,'mm') from op;
--01
--02
--12

alter table op add str varchar2(20);
update op set str = '2/5/18' where dt = '01-JAN-18';
update op set str = '8/9/18' where dt = '12-FEB-18';
update op set str = '3/3/18' where dt = '25-dec-18';
select * from op;
--01-JAN-18	2/5/18
--12-FEB-18	8/9/18
--25-DEC-18	3/3/18

select to_date(str,'dd/mm/yy') from op; -- converts a string date format to actual date
--02-MAY-18
--08-SEP-18
--03-MAR-18

select to_char(dt, 'ddth-mm-yy') from op; --th
--01st-01-18
--12th-02-18
--25th-12-18

select to_char(dt, 'ddsp-mm-yy') from op; --date with spelling
--one-01-18
--twelve-02-18
--twenty-five-12-18

select to_char(dt, 'ddspth-mm-yy') from op; --date with spelling + th
--first-01-18
--twelfth-02-18
--twenty-fifth-12-18

select uid, user from dual;