-- new
drop trigger if exists tr2;
delimiter $
create trigger tr2 before insert on dn for each row
begin
insert into d1 values(new.deptno,new.dname,new.loc,new.pwd,new.startedon);

end $
delimiter ;  