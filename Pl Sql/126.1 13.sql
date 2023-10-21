-- 126.1 13
drop procedure if exists pro5;
delimiter $ 
create procedure pro5(num int)
  begin 
  declare z varchar(100);
  declare x int;
  declare len1 int;
  declare curdigit int;
  set z="";
  set x:=0;
  set num:=reverse(num);
  set len1:=length(num);
l:LOOP
   set x:=x+1;
     if x>len1 
then  
leave l;
end if;
  set curdigit := mod(num,10);
  set num=num DIV 10;
if curdigit=1 then 
 set z:=concat(z,"One ");
   end if;
 if curdigit=2 then 
  set z:=concat(z,"Two ");
  end if;
  if curdigit=3 then 
  set z:=concat(z,"Three ");
  end if;
if curdigit=4 then 
  set z:=concat(z,"Four ");
 end if;
if curdigit=5 then 
  set z:=concat(z,"Five ");
   end if;
if curdigit=6 then 
  set z:=concat(z,"Six ");
end if;
if curdigit=7 then 
  set z:=concat(z,"Seven ");
end if;
if curdigit=8 then 
  set z:=concat(z,"Eight ");
end if;
if curdigit=9 then 
  set z:=concat(z,"Nine ");
  end if;
  end loop l;
select z;
end $
delimiter ;