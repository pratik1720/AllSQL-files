drop procedure if exists pro3;
delimiter $
create procedure pro3() 
begin 
set @x:= "select * from emp";

prepare z from @x;
execute z;
end $
delimiter ;