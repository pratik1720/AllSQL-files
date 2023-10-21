drop procedure pro1 if exists;
delimiter $
create procedure pro1 ()
 begin 
declare x int;
set x:=0;

 l:loop
set x:=x+1;
if(x>10)
then leave l;
end if;
select x;
end loop l;

end  $
delimiter ;