//Explicit Cursor
declare 
id sailors.sid%type;
name sailors.sname%type;
cursor s_sailors is select sid,sname from sailors;
begin
open s_sailors;
loop
fetch s_sailors into id,name;
exit when s_sailors%notfound;
dbms_output.put_line(id||' '||name);
end loop;
close s_sailors;
end;

//Curosr 2-Implicit cursor
declare 
total number(20);
begin
update sailors_view set age=age-10;
if sql%notfound then
dbms_output.put_line('No sailors are selected');
else 
total:=sql%rowcount;
dbms_output.put_line('No of rows selected '||total);
end if;
end;

//Explicit Cursor
declare name boats.bname%type;
cursor b_boats is select bname from boats where color='red';
begin
open b_boats;
loop
fetch b_boats into name;
exit when b_boats%notfound;
dbms_output.put_line(name);
end loop;
close b_boats;
end;

//Implicit
begin
insert into sailors_view values(34,'zxc',12,35);
if sql%found then
dbms_output.put_line('Value inserted');
elsif sql%notfound then
dbms_output.put_line('Value not inserted');
end if;
end;
//implicit
begin
delete from sailors where sid=34;
if sql%found then
dbms_output.put_line('Value deleted');
elsif sql%notfound then
dbms_output.put_line('Value not deleted');
end if;
end;
