-- 126.1 14 
-- 126.1 13
drop procedure if exists pro5;
delimiter $ 
create procedure pro5(num int)
  begin 
  declare tsum, x , p, len1, curdigit, tlen int;
  declare tchar varchar(100);
  set tchar = "";
  set p=0;
  set tsum=0;
  set x:=0;
  set len1:=length(num);
l:LOOP
   set x:=x+1;
     if x>len1 then  
leave l;
end if;
  set curdigit := mod(num,10);
  set tsum:=tsum+curdigit;
  set num=num DIV 10;
  end loop l;
  select tsum;
  set tlen:=length(tsum);
  ll:loop
  set p:=p+1;
  IF p>tlen -1
  then  leave ll;
  end if;
   if tlen=2 THEN
   if tsum=10 then 
 set tchar:=concat(tchar,"Ten ");
   end if;
 if tsum=11 then 
  set tchar:=concat(tchar,"Eleven ");
  end if;
  if tsum=12 then 
  set tchar:=concat(tchar,"twelve ");
  end if;
if tsum=13 then 
  set tchar:=concat(tchar,"thirteen ");
 end if;
if tsum=14 then 
  set tchar:=concat(tchar,"fourteen ");
   end if;
if tsum=15 then 
  set tchar:=concat(tchar,"fifteen ");
end if;
if tsum=16 then 
  set tchar:=concat(tchar,"sixteen ");
end if;
if tsum=17 then 
  set tchar:=concat(tchar,"seventeen ");
end if;
if tsum=18 then 
  set tchar:=concat(tchar,"Eighteen ");
  end if;
  if tsum=19 then 
  set tchar:=concat(tchar,"Nineteen ");
  end if;
   end if;
  end loop ll;
  select tchar;
  
end $
delimiter ;