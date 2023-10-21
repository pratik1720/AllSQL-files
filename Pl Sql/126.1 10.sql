-- 126.1 10 
drop procedure if exists pro3;
delimiter $
create procedure pro3()
BEGIN
  declare _empno,_ename,_deptno varchar(100);
  declare _sal int;
  declare c1 cursor for select  empno,ename,sal,deptno from emp where deptno  =10;
  declare c2 cursor for select  empno,ename,sal,deptno from emp where deptno =20;
  declare c3 cursor for select  empno,ename,sal,deptno from emp where deptno =30; 
declare exit handler for 1329 select "EOF"; 
open c1;
open c2;
open c3;
  l:loop
   fetch c1 into _empno,_ename,_sal,_deptno;
   INSERT INTO EMP10(EMPNO,ENAME,SAL,DEPTNO)
   VALUES( _empno,_ename,_sal,_deptno);
   fetch c2 into _empno,_ename,_sal,_deptno;
   INSERT INTO EMP20(EMPNO,ENAME,SAL,DEPTNO)
   VALUES( _empno,_ename,_sal,_deptno);
   fetch c3 into _empno,_ename,_sal,_deptno;
   INSERT INTO EMP30(EMPNO,ENAME,SAL,DEPTNO)
    VALUES( _empno,_ename,_sal,_deptno);
	end loop l;
	close c1;

close c2;
close c3;

end $
delimiter ;