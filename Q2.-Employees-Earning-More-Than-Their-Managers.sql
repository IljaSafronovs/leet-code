1/*
2Table: Employee
3
4+-------------+---------+
5| Column Name | Type    |
6+-------------+---------+
7| id          | int     |
8| name        | varchar |
9| salary      | int     |
10| managerId   | int     |
11+-------------+---------+
12id is the primary key (column with unique values) for this table.
13Each row of this table indicates the ID of an employee, their name, salary, and the ID of their manager.
14 
15
16Write a solution to find the employees who earn more than their managers.
17
18Return the result table in any order.
19
20The result format is in the following example.
21
22 
23
24Example 1:
25
26Input: 
27Employee table:
28+----+-------+--------+-----------+
29| id | name  | salary | managerId |
30+----+-------+--------+-----------+
31| 1  | Joe   | 70000  | 3         |
32| 2  | Henry | 80000  | 4         |
33| 3  | Sam   | 60000  | Null      |
34| 4  | Max   | 90000  | Null      |
35+----+-------+--------+-----------+
36Output: 
37+----------+
38| Employee |
39+----------+
40| Joe      |
41+----------+
42Explanation: Joe is the only employee who earns more than his manager.
43*/
44
45
46
47SELECT e.name as Employee
48FROM Employee as E
49LEFT JOIN Employee as m
50ON e.managerId = m.Id
51WHERE m.salary < e.salary