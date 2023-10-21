-- 128.1.2
drop trigger if exists reg;
delimiter $
create trigger reg before insert on p_p for each row
begin 
if new.pid in(select pid from patient_registration where pid=new.pid)
then 
insert into p_p(pid,pdate,medicine) values(new.pid,new.pdate,new.medicine);

else 
signal sqlstate "42000" set message_text="patient not register";
end if;
end $
delimiter ;