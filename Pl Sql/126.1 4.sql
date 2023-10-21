drop PROCEDURE if exists pro1;
delimiter .
create PROCEDURE pro1()

    BEGIN
	-- select * from emp;
   SELECT concat(substr(ename,1,1),'(',substr(ename,2),')', " is " , job) from emp;


	end .
	delimiter ;