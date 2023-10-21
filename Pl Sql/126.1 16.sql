-- 126.1 16
drop procedure if exists pro8;
delimiter $
create procedure pro8(d1 date ,dayn varchar(30))
BEGIN
declare x int;
set x:=1;
l:LOOP

if dayname(d1)=dayn THEN
SELECT d1 da,dayname(d1) dn;
leave l;
end if;

set d1:= date_add(d1,interval x day);
end loop l;
 
 end $
 delimiter ;