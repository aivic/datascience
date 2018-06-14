-- GROUP BY
create table grp(
emp varchar2(20),
sal int,
gname varchar2(20)
);

insert into grp values('emp1', 10, 'A');
insert into grp values('emp2', 20, 'A');
insert into grp values('emp3', 30, 'B');
insert into grp values('emp4', 40, 'B');
insert into grp values('emp5', 50, 'B');
select * from grp;
--emp1	10	A
--emp2	20	A
--emp3	30	B
--emp4	40	B
--emp5	50	B

select gname,count(gname) from grp group by gname;
--A	2
--B	3

--HAVING (prevailing condition on group by clause)
select count(gname) from grp 
        group by gname 
        having gname = 'A';
--2

select gname, sum(sal) from grp
        group by gname
        having sum(sal) > 50;
--B  120


/*                                                  SubQueries                              */

select emp from (select emp from grp where sal >=20);
--emp2
--emp3
--emp4
--emp5

select emp from grp
    where sal in (select sal from grp);
--emp1
--emp2
--emp3
--emp4
--emp5

select emp, 
    (case when sal = 10 then 'good' else 'bad' end) "rating" from grp;
--emp1	good
--emp2	bad
--emp3	bad
--emp4	bad
--emp5	bad

select emp from grp g
    where exists(select emp from grp where g.emp like '%1'); -- exits returns true/false
--emp1
-- above could also be achieved by -> select emp from grp where emp like '%1';


/*                                                                 JOINS                                                        */

rename grp to grp1;
alter table grp1 add mng varchar(20);
update grp1 set mng = 'mng1' where emp = 'emp1';
update grp1 set mng = 'mng1' where emp = 'emp2';
update grp1 set mng = 'mng2' where emp = 'emp3';
update grp1 set mng = 'mng8' where emp = 'emp4';
update grp1 set mng = 'mng6' where emp = 'emp5';
select * from grp1;
--emp   sal gname   mng
--emp1	10	A       mng1
--emp2	20	A       mng1
--emp3	30	B       mng2
--emp4	40	B       mng8
--emp5	50	B       mng6

create table grp2(
mng varchar2(20),
sal numeric(10),
mname varchar2(20)
);
insert into grp2 values('mng1', 100, 'A');
insert into grp2 values('mng2', 200, 'B');
insert into grp2 values('mng3', 300, 'B');
insert into grp2 values('mng4', 400, 'B');
insert into grp2 values('mng5', 500, 'A');
select * from grp2;
--mng   sal mname
--mng1	100	A
--mng2	200	B
--mng3	300	B
--mng4	400	B
--mng5	500	A


-- INNER JOIN or EQUI JOIN
-- theta-style
select g1.emp, g2.mng 
    from grp1 g1, grp2 g2
    where g1.mng = g2.mng;
--emp2	mng1
--emp1	mng1
--emp3	mng2

-- alternative way (ansi-style)
select g1.emp, g2.mng
    from grp1 g1 inner join grp2 g2
    on g1.mng = g2.mng;
--emp2	mng1
--emp1	mng1
--emp3	mng2

--LEFT JOIN
select g1.emp, g2.mng
    from grp1 g1 left join grp2 g2
    on g1.mng = g2.mng;
--emp2	mng1
--emp1	mng1
--emp3	mng2
--emp5	null
--emp4	null

-- theta  style (+ will come opposite side of join name. E.g. for left join + is on right and vice-versa)
select g1.emp, g2.mng
    from grp1 g1, grp2 g2
    where g1.mng = g2.mng(+);
    
    
--RIGHT JOIN
select g1.emp, g2.mng
    from grp1 g1 right join grp2 g2
    on g1.mng = g2.mng;
--emp1	mng1
--emp2	mng1
--emp3	mng2
--null	mng4
--null	mng5
--null	mng3

-- theta style with same results
select g1.emp, g2.mng
    from grp1 g1, grp2 g2
    where g1.mng(+) = g2.mng;
    
-- SELF JOIN
select g1.emp 
    from grp1 g1, grp1 g2
    where g1.emp = g2.mng; -- none of the given employee is manager
--empty

select g1.emp 
    from grp1 g1, grp1 g2
    where g1.emp <> g2.emp; -- on first iteration g1.emp1 is equal to g2.emp1, later g1.emp1 not equal to (<>) g2.emp2 and hence prints and so on
--emp1
--emp1
--emp1
--emp1
--emp2
--emp2
--emp2
--emp2
--emp3
--emp3
--emp3
--emp3
--emp4
--emp4
--emp4
--emp4
--emp5
--emp5
--emp5
--emp5


-- CROSS JOIN
select g1.emp, g2.mng
    from grp1 g1 cross join grp2 g2;
--emp1	mng1
--emp1	mng2
--emp1	mng3
--emp1	mng4
--emp1	mng5
--emp2	mng1
--emp2	mng2
--emp2	mng3
--emp2	mng4
--emp2	mng5
--emp3	mng1
--emp3	mng2
--emp3	mng3
--emp3	mng4
--emp3	mng5
--emp4	mng1
--emp4	mng2
--emp4	mng3
--emp4	mng4
--emp4	mng5
--emp5	mng1
--emp5	mng2
--emp5	mng3
--emp5	mng4
--emp5	mng5



/*                                                  SET OPEARTIONS                                                              */

select emp as all_names from grp1
union
select mng from grp2;
--all_names
--emp1
--emp2
--emp3
--emp4
--emp5
--mng1
--mng2
--mng3
--mng4
--mng5

select mng from grp1
intersect
select mng from grp2;
--mng1
--mng2

select mng from grp1
minus
select mng from grp2;
--mng6
--mng8