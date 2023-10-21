-- 128 3
drop trigger if exists up;
delimiter $
create trigger up  after update on student for each row
BEGIN

insert into student_log (id,namefirst) values(new.id,new.namefirst);


end $
delimiter ;




