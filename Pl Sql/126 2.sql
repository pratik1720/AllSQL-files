-- 126 1
drop procedure if exists checkUser;
delimiter $
create procedure checkUser(_email_id varchar(50))
begin

if _email_id in (select email from login)  THEN
select username,password from login;
ELSE 
insert into log(curr_date,curr_time,message) values (CURRENT_DATE,CURRENT_TIME,"In the present"); 
 end if ;

end $
delimiter ;