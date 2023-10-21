drop procedure if exists pro1;
delimiter $
create procedure pro1(x int)
BEGIN
declare _deptno int;
declare _dname,_loc,_pwd,_startedon varchar(40);
declare c1 cursor for select * from dept;
declare exit handler for 1329 select "EOF";
open c1;
lb1:LOOP
fetch c1 into _deptno,_dname,_loc,_pwd,_startedon;
if x=_deptno then 
select _deptno,_dname,_loc,_pwd,_startedon ;
end if;
end loop lb1;
close c1;
end $
 delimiter ;