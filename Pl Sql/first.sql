drop procedure  if exists pro1;
delimiter $
create procedure pro1()
 begin 
	select 'Hello world';
end  $
delimiter ;