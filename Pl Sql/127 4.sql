-- 127 4
drop function if exists sumq;
delimiter $
create function sumq(stu int) returns INT
deterministic 
begin 
declare res int;


select sum(marks) into res from student_qualifications where studentid in (select studentid from student_qualifications where  name="be" or name ='12' and name='10')and studentid=stu ;
return res;
 end $
 delimiter ;