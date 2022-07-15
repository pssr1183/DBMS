//Procedure 1 "Hello World"
create or replace procedure Greetings 
as
begin
dbms_output.put_line('Hello World');
end;

begin
Greetings;
end;

//sum of two numbers
create or replace procedure sum(a in int, b in int) as
begin
dbms_output.put_line(a+b);
end;
begin
dbms_output.put_line('The sum of two numbers is ');
sum(2,3);
end;

create or replace procedure sum1(a in int, b in int, c in out int) as 
begin
c:=a+b+c;
end;
declare 
a int:=10;
b int:=20;
c int:=30;
begin
sum1(a,b,c);
dbms_output.put_line('The sum of three numbers is '||c);
end;

//square of a number
create or replace procedure Square(a in int, x out int) as 
begin
x:=a*a;
end;
declare
a int:=10;
x int;
begin
Square(a,x);
dbms_output.put_line('The square of the number is '||x);
end;

//Even or Odd
create or replace procedure EO(a in int) as
begin
if(mod(a,2)=0) then
dbms_output.put_line('even');
else
dbms_output.put_line('odd');
end if;
end;
begin
EO(5);
end;

//Prime numbers

create or replace procedure Prime(i in int, j in int, c in out int) as
begin
for i in 1..10
loop
c:=0;
for j in 1..10
loop
if(mod(i,j)=0) then
c:=c+1;
end if;
end loop;
if(c=2) then 
dbms_output.put_line(i||' ');
end if;
end loop;
end;
declare 
i int:=0;
j int:=0;
c int:=0;
begin
Prime(i,j,c);
end;
