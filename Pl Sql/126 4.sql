-- 126 4
drop procedure if exists addStudent;
delimiter $
create procedure addStudent(studentid int, phone varchar(50), address varchar(50))
begin
insert into student (id) values(studentid) ; 
insert into student_phone (id,studentid,number) values (42,studentid,phone); 
insert into  student_address (id,studentid,address) values(29,studentid,address) ; 
end $
delimiter ;