drop PROCEDURE if exists pro1;
delimiter .
create PROCEDURE pro1(str1 varchar(50))

BEGIN
declare x int;
set x=1;

set @ch:="";
set @num:="";

l:LOOP
if (substr(str1,x,1) >='0' AND substr(str1,x,1) <='9') THEN
set @num:=concat(@num,'',substr(str1,x,1)); 
ELSE
set @ch:=concat(@ch,'',substr(str1,x,1));

end if;
set x:=x+1;



if x > length(str1) then leave l;

end if;
end loop l;
end .
delimiter ;







