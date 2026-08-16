# Write your MySQL query statement below
/*select salary as SecondHighestSalary from 
((select salary,row_number() over( order by salary desc) as rn  from Employe )where rn = 2 ;
*/

select max(salary) as SecondHighestSalary  from Employee where salary < ( select max(salary) from Employee );