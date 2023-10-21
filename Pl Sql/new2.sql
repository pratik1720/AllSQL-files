drop procedure if exists pro2;
delimiter $
create procedure pro2(t_name varchar(50))
Begin 
	set @x := concat("select * from ", t_name);
	prepare z from @x;
	execute z;
End $
delimiter ;
	