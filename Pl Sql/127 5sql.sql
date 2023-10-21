127 5 
drop function if exists ran;
delimiter $
create function ran() returns int
deterministic 
begin 
declare res int;
select floor(rand()*1000000) into res;
return res;
end $
delimiter ;