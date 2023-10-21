drop procedure if exists pro1;
delimiter $
create procedure pro1(str varchar(20))
BEGIN
declare x int;
set x:=1;
lb1:LOOP
 select substr(str,x,1) result1;
 set x=x+1;
if x>length(str) THEN
leave lb1 ;
end if;
end  loop lb1;
end $
delimiter ;