-- 126.1 15
drop procedure if exists pro7;
delimiter $
create procedure pro7(d1 date ,d2 date)
BEGIN
 select concat( count(hiredate)," Sundays") from emp where hiredate between(d1) and (d2) and dayname(hiredate)='Sunday';
 
 end $
 delimiter ;