drop procedure if exists pr2;
delimiter $
create procedure pr2(_tname varchar(20),p1 varchar(20), p2 varchar(20))
BEGIN
	DECLARE EXIT handler for 1146 select "Table not exist" Error;
	DECLARE EXIT handler for 1366 select "invalid entry" Error;
	
	set @tname = _tname;
	set @c1 = p1;
	set @c2 = p2;
	
	set @x = concat("insert into ", @tname ," values (?,?)");
	
	prepare z from @x;
	execute z using @c1,@c2;
	
END $
delimiter ;