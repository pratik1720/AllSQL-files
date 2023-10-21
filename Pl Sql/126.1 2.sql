drop procedure if exists pro1;
delimiter $
create procedure pro1(str varchar(20))
BEGIN

declare x int;
set @y:="";
set x:=1;
lb1:LOOP
if x=1 then
 SET @y:= CONCAT(@y,'',substr(str,x,1)) ;
else  
SET @y:= CONCAT(@y,',',substr(str,x,1)) ;
 end if;
 set x=x+1;

if x>length(str) THEN
leave lb1 ;

end if;
end  loop lb1;

end $
delimiter ;