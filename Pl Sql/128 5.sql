-- 128 5
drop trigger if exists dayinsertion;
delimiter $
create trigger dayinsertion before insert on student for each row
begin 

if  dayname(new.dob) !='Sunday'
THEN
insert into student (id,namefirst,dob) values (new.id,new.namefirst,new.dob);
end if;
end $
delimiter ; 