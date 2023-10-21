drop procedure  if exists pro1;
delimiter $
create procedure pro1 (in x  int)
 begin 
	l:loop
		if(x%2=0) then select x;
			
		end if;
		
		if(x=0) then leave l;
		end if;
		set x:=x-1;
	end loop l;
end  $
delimiter ;