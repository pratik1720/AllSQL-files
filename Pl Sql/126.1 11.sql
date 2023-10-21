-- 126.1 11 
drop procedure if exists pro3;
delimiter $
create procedure pro3()
BEGIN
declare x int;

  declare _ename varchar(30);
  declare _deptno int;
  declare c1 cursor for select  ename,deptno from emp ;
  declare exit handler for 1329 select deno ,group_concat(name) from demo group by (deno);
set x=10;
set @z="";  
open c1;
l:loop
     fetch c1 into  _ename,_deptno;
	 if _deptno=x
	 then 
	 insert into demo(name,deno) values (_ename,_deptno);
	 else
     insert into demo(name,deno) values("No  dept" x);
	  end if;
	if x=60 then 
	 leave l;
	end if;
	set x=x+10;
    end loop l;
	close c1;
end $
delimiter ;