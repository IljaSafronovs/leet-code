1-- Write your PostgreSQL query statement below
2SELECT 
3    p.firstName, 
4    p.lastName, 
5    a.city, 
6    a.state
7FROM Person p
8LEFT JOIN Address a ON p.personId = a.personId;