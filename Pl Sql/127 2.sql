--  127 2
drop function if exists autoNumber;
delimiter $
create function autoNumber() returns INT
deterministic 
begin 
declare z int;

select max(studentid)+1 from student_new into z;
insert into student_new(studentid) values (z); 

return z;
end $ 
delimiter ;
