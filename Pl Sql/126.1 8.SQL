drop procedure if exists pro1;
delimiter $
create procedure pro1(z int)
begin 
declare x int;
set x:=1;

lb:LOOP
if MOD(X,2)=0 then
INSERT into r15 values(x, concat(x," is even")); 
ELSE
INSERT into r15 values(x, concat(x," is odd")); 
end if;
set x:=x+1;
if x> z then 
leave lb ;
end if;
end  loop lb ;
end $
delimiter ;



