-- 126 3
drop procedure if exists getQualification;
delimiter $
create procedure getQualification(student_id int)
begin

if student_id in (select id from student)  THEN
select * from student  where id=student_id;
ELSE 
 SELECT "Student is not found"; 
 end if ;

end $
delimiter ;