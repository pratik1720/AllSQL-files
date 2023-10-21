-- 126.12
drop procedure if exists pro4;
delimiter $
create procedure pro4(_cno int)
begin 



select * from customers natural join orders where cnum=_cno;
end $
delimiter ;