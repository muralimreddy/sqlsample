--a. The names of all salespeople that have an order with Samsonic.
select 
    S.NAME
from ORDERS O
   JOIN CUSTOMER C ON C.ID=O.CUST_ID
   JOIN SALESPERSON S ON S.ID=O.SALESPERSON_ID
   WHERE C.NAME='Samsonic'
   
--NAME  
--Bob
--Ken
--b. The names of all salespeople that do not have any order with Samsonic.

--c. The names of salespeople that have 2 or more orders.
select s.name
from salesperson s, orders o
where s.id = o.salesperson_id
group by o.salesperson_id
having count(o.salesperson_id) > 1
   
 --http://qa.geeksforgeeks.org/4150/qa.geeksforgeeks.org/4150/write-sql-queries-important-practice-questions
 
--d. Write a SQL statement to insert rows into a table called highAchiever(Name, Age), 
--    where a salesperson must have a salary of 100,000 or greater to be included in the table.