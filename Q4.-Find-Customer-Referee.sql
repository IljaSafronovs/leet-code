1-- Write your PostgreSQL query statement below
2/*
3Table: Customer
4
5+-------------+---------+
6| Column Name | Type    |
7+-------------+---------+
8| id          | int     |
9| name        | varchar |
10| referee_id  | int     |
11+-------------+---------+
12In SQL, id is the primary key column for this table.
13Each row of this table indicates the id of a customer, their name, and the id of the customer who referred them.
14 
15
16Find the names of the customer that are either:
17
18referred by any customer with id != 2.
19not referred by any customer.
20Return the result table in any order.
21
22The result format is in the following example.
23
24 
25
26Example 1:
27
28Input: 
29Customer table:
30+----+------+------------+
31| id | name | referee_id |
32+----+------+------------+
33| 1  | Will | null       |
34| 2  | Jane | null       |
35| 3  | Alex | 2          |
36| 4  | Bill | null       |
37| 5  | Zack | 1          |
38| 6  | Mark | 2          |
39+----+------+------------+
40Output: 
41+------+
42| name |
43+------+
44| Will |
45| Jane |
46| Bill |
47| Zack |
48+------+
49*/
50
51
52SELECT c.name
53FROM Customer as c
54WHERE c.referee_id IS DISTINCT FROM 2