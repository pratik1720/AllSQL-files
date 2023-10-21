drop trigger if exists tr2;
delimiter $
create trigger tr2 before update on emp_pre for each row
begin
insert into emp_hist values(old.name,old.prestatus); 

end $
delimiter ;  