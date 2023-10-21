-- 126 1
drop procedure if exists addUser;
delimiter $
create procedure addUser(_username varchar(50),_password varchar(50),_email_id varchar(50))
begin

insert into login values (_username,_password,_email_id);

end $
delimiter ;