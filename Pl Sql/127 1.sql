-- 127 1
drop function if exists f1;
delimiter $
create function f1(_deptno int) returns int 
deterministic 
begin 
declare z int;
select sum(sal) into z from emp where deptno=_deptno;
return z;
end $
delimiter ; 