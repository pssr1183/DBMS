
SQL> select 156.56 as "number", ceil(156.56) from dual;

    number CEIL(156.56)
---------- ------------
    156.56          157

SQL> select ceil(45.56) from dual;

CEIL(45.56)
-----------
         46

SQL> select ceil(45.56) result from dual;

    RESULT
----------
        46

SQL> select 45.56 number, ceil(45.56) result from dual;
select 45.56 number, ceil(45.56) result from dual
             *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select 45.56 as "number", ceil(45.56) result from dual;

    number     RESULT
---------- ----------
     45.56         46

SQL> select floor(34.5) from dual;

FLOOR(34.5)
-----------
         34

SQL> select log(10,1000) from dual;

LOG(10,1000)
------------
           3

SQL> select power(3,4) from dual;

POWER(3,4)
----------
        81

SQL> select ascii('A') from dual;

ASCII('A')
----------
        65

SQL> select chr(34) from dual;

C
-
"

SQL> select chr('65') from dual;

C
-
A

SQL> select chr(65) from dual;

C
-
A

SQL> select concat("abc","cde") from dual;
select concat("abc","cde") from dual
                    *
ERROR at line 1:
ORA-00904: "cde": invalid identifier


SQL> select concat('abc','cde') from dual;

CONCAT
------
abccde

SQL> select initcap('abcdef') from dual;

INITCA
------
Abcdef

SQL> select instr('this is a string','s');
select instr('this is a string','s')
                                   *
ERROR at line 1:
ORA-00923: FROM keyword not found where expected


SQL> select instr('this is a string','s') from dual;

INSTR('THISISASTRING','S')
--------------------------
                         4

SQL> select length('This is a string') from dual;

LENGTH('THISISASTRING')
-----------------------
                     16

SQL> select lower('ABC') from dual;

LOW
---
abc

SQL> select upper('aBC') from dual;

UPP
---
ABC



SQL> select sname from sailors where sid in(select sid from reserves where bid in(select bid from boats where color=any('red','green')));

SNAME
--------------------
Dustin
Lubber
Horatio
Horatio

SQL> select sname from sailors where sid not in(select sid from reserves) and age>20;

SNAME
--------------------
Brutus
Andy
Rusty
Art
BOb


SQL> select sname,age from sailors where sid in(select sid from reserves) or age=(select max(age) from sailors);

SNAME                       AGE
-------------------- ----------
Dustin                       45
Lubber                     55.5
Horatio                      35
Horatio                      35
BOb                        63.5

SQL> select sname,age from sailors where age in(select max(age) from sailors where sid in(select sid from reserves));

SNAME                       AGE
-------------------- ----------
Lubber                     55.5


SQL> select sname from sailors where sname like '%B_%b';

SNAME
--------------------
BOb

SQL> select s.sname from sailors s where not exists(select b.bid from boats b where not exists(select r.bid from reserves r where r.bid=b.bid and r.sid=s.sid));

SNAME
--------------------
Dustin


SQL> select * from reserves;

       SID        BID DAY
---------- ---------- ---------
        22        101 10-OCT-98
        22        102 10-OCT-98
        22        103 10-AUG-98
        22        104 10-JUL-98
        31        102 11-OCT-98
        31        103 11-JUN-98
        31        104 09-MAY-98
        64        101 09-MAY-98
        64        102 09-MAY-98
        74        103 09-MAY-98

10 rows selected.

SQL> select * from sailors;

       SID SNAME                    RATING        AGE
---------- -------------------- ---------- ----------
        22 Dustin                        7         45
        29 Brutus                        1         33
        31 Lubber                        8       55.5
        32 Andy                          8       25.5
        58 Rusty                        10         35
        64 Horatio                       7         35
        74 Horatio                       9         35
        71 Zorba                        10         16
        85 Art                           3       25.5
        95 BOb                           3       63.5

10 rows selected.

SQL>
