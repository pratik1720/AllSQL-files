drop PROCEDURE if exists pro1;
delimiter .
create PROCEDURE pro1(str1 varchar(50))

BEGIN
declare x int;
set x:=1;

set @num1:="";
set @num2:="";

l:LOOP
	if ascii( substr(str1,x,1))>=ascii('A')  AND ascii(substr(str1,x,1))<= ascii('Z') THEN
		set @num1:=concat(@num1,substr(str1,x,1)); 
	ELSE
		set @num2:=concat(@num2,substr(str1,x,1));

	end if;
	set x:=x+1;



	if x > length(str1) then leave l;

	end if;
end loop l;
	end .
	delimiter ;