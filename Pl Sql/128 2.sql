--  128 2
drop trigger if exists insertDuplicate;
delimiter $
create trigger insertDuplicate after insert on student for each ROW
BEGIN

insert into student_log(id,namefirst) values(new.id,new.namefirst);


end $
delimiter ;
