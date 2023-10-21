drop procedure if exists pro1;
delimiter $
create procedure pro1()
BEGIN
	declare _deptno int;
	declare _dname, _loc, _pwd, _startedon varchar(40);
	declare c1 cursor for select * from dept;
	declare exit handler for 1329 select 'EOF';
	open c1;
		lb1: loop
			fetch c1 into _deptno , _dname, _loc, _pwd, _startedon;	
			select _deptno, _dname, _loc, _pwd, _startedon;			
			begin
				declare _ename, _job, _sal, _deptno varchar(40);
				declare c2 cursor for select e.ename, e.job, e.sal, e.deptno from emp e join dept d on e.deptno = d.deptno;
				open c2;
					lb2 : LOOP
						fetch c2 into _ename, _job, _sal, _deptno;
						select _ename, _job, _sal, _deptno;
					end loop lb2;
				close c2;
			end ;			
		end loop lb1;
	close c1;
	
end $
delimiter ;