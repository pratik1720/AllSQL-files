-- 128.1 1
drop trigger if exists eligible;
delimiter $
create trigger eligible before insert on k for each ROW

begin 
if new.age >18 then 
 INSERT into rn(id,ename,age) values(new.id,new.ename,new.age);

else
signal sqlstate "42000" set message_text="invalid voting";

 end if;
end $ 

delimiter ; 