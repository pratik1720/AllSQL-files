drop procedure if exists pro1;
delimiter .

create procedure pro1(str1 varchar(200))

begin
 declare x int;
 set @digit:=0;
 set @vowles:=0;
 set @spaces:=0;
 set x:=1;
 
 l:LOOP
 
 if substr(str1,x,1)='a' or substr(str1,x,1)='e' or substr(str1,x,1)='i' or substr(str1,x,1)='o' or substr(str1,x,1)='u' THEN set @vowles:=@vowles+1;
 end if;
 if substr(str1,x,1)=' ' then set @spaces:=@spaces+1;
 end if;
 if substr(str1,x,1)>='0' and substr(str1,x,1)<='9' THEN set @digit:=@digit+1;
 
 end if;
 set x:=x+1;
 if x> length(str1) then 
 leave l;
 end if;
 end loop l;
 


end .
delimiter ;