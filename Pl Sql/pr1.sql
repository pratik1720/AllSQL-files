drop procedure if exists pr1;
delimiter $
create procedure pr1(_tname varchar(20),p1 int, p2 int)
BEGIN
	set @tname = _tname;
	set @c1 = p1;
	set @c2 = p2;
	set @x = "insert into \? values (?,?)";
	prepare z from @x;
	execute z using @tname,@c1,@c2;
END $
delimiter ;