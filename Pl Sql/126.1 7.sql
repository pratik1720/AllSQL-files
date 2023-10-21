drop procedure if exists pro1;
delimiter $
create procedure pro1(str1 varchar(500))
begin 
declare x int;
set x:=1;
set @ex:="";
lb:LOOP
if not(  substr(str1,x,1)>='a' and  substr(str1,x,1)<='z' ) then
set @ex:=concat(@ex,substr(str1,x,1));
end if;
set x:=x+1;
if x> length(str1) then 
leave lb ;
end if;
end  loop lb ;
end $
delimiter ;
