declare
under_age exception;
s_age sailors.age%type;
begin
select age into s_age from sailors where age<18;
if(s_age<18) then
raise under_age;
end if;
exception
when under_age then
dbms_output.put_line('Insufficient age');
end;

//too many rows exception
declare 
name sailors.sname%type;
begin
select sname into name from sailors;
raise too_many_rows;
end;

//divide zero exception

declare
a int:=10;
b int:=0;
x int;
begin
x:=a/b;
end;

//No data found Exception

declare 
name sailors.sname%type;
begin
select sname into name from sailors where age=100;
raise no_data_found;
end;
//Value Error Exceprtion
declare 
a number(2);
begin
a:=10000;
end;
//DUP_VAL_ON_INDEX
begin
insert into sailors values(31,'newDustin',10,56.6);
dbms_output.put_line('Row Inserted');
exception
when dup_val_on_index then
dbms_output.put_line('DUP_VAL_ON_INDEX:  '||sqlerrm);
end;
