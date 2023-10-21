/* drop trigger if exists tr1;
delimiter $
create trigger tr1 before insert on acc for each row
begin 
	if (select count(*) from acc) <> 0 THEN
		
	
		if new.c2 like 's' then 
			if isnull(@z) then 
				set @z=0;
			end if;
			set new.c1=@z;
			select max(new.c1) +1 into @z from acc;
			set new.c1=concat("SA/23-" ,@z);
		end if;
		if new.c2 like 'c' then 
			if isnull(@x) then 
				set @x=0;
			end if;
			set new.c1=@x;
			select max(new.c1) +1 into @x from acc;
			set new.c1=concat("CA/23-" ,@x);
		end if;
	end if;
	
end $
delimiter ;

*/


drop trigger if exists tr1;
delimiter $
create trigger tr1 before insert on acc for each row
begin 
	declare z int;
	declare a int;
	declare x int;
	declare b int;
		if new.c2 = 's' then 
			set a := (select max(substr(c1,7)) + 1 from acc);
			if a is null THEN
				set new.c1 = 'SA/23-1';
			ELSE
				set new.c1 = concat('SA/23-', a);
			end if;
		end if;
	
	    
		if new.c2 = 'c' then 
			set b := (select max(substr(c1,7)) + 1 from acc);
			if b is null THEN
				set new.c1 = 'CA/23-1';
			ELSE
				set new.c1 = concat('CA/23-', b);
			end if;
		end if;
	
end $
delimiter ;