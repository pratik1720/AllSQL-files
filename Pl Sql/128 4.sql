---  128 4
drop trigger if exists d1;
delimiter $
create trigger d1 after delete on  student for each ROW
begin 
insert into student_log(id,namefirst) values(old.id,old.namefirst);
end $
delimiter ; 