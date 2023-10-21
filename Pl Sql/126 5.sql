-- 126 5
drop procedure if exists addQualification;
delimiter $
create procedure addQualification(student_id int, marks varchar(50) , college varchar(50))
begin
if student_id in (select id from student)  THEN 
  insert into student_qualifications (id,studentid,marks,college) values(86,student_id,marks,college);
  ELSE 
 SELECT "Student is not found"; 
 end if ;

end $
delimiter ;