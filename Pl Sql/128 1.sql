-- 128 1
drop trigger if exists tr2;
delimiter $
create trigger tr2 after insert on  s1 for each row

begin 
insert into logas values("Record got inserted");

end $
delimiter ;
