
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
