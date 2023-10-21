drop procedure if exists vowles;
delimiter .
create procedure vowles(in str varchar(50),out ans varchar(50))
begin
declare i int;
set i:=0;
l:LOOP

if substr(str,i,1) = 'a' then
 ans := str;
end if;
set i:=i+1;
if i> length(str) then leave l;
end if;
end loop l
end .
delimiter ;


