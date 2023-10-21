-- first 5 highest paid employee
drop procedure if exists pro2;
delimiter $
create procedure pro2(x int)
BEGIN
declare _ename varchar(200);
declare _sal int;
declare  c1 cursor for select ename,sal from  emp order by sal desc ;
open c1;
l:LOOP
fetch c1 into _ename,_sal;
select _ename,_sal;
set x=x-1;
if x=0 THEN
leave l;
end if;
end loop l;
end $
delimiter ;

