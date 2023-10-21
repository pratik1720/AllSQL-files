-- 127 3
drop function if exists sep;
delimiter $
create function sep(emai varchar(100)) returns varchar(100)
deterministic 
begin
 
 declare user1 varchar(300);
 declare pass varchar(300);
 if   emai in (select email from login) then

select username into user1 from login where email=emai;
select password into pass from login where email=emai;

return  concat(user1," ",pass);
end if;
  if   emai not in (select email from login) then 
  return "emial id does not exists";
  end if;
end $
delimiter ;