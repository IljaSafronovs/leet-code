1-- Write your PostgreSQL query statement below
2
3/*
4+----------------+----------+
5| Column Name    | Type     |
6+----------------+----------+
7| id             | int      |
8| movie          | varchar  |
9| description    | varchar  |
10| rating         | float    |
11+----------------+----------+
12id is the primary key (column with unique values) for this table.
13Each row contains information about the name of a movie, its genre, and its rating.
14rating is a 2 decimal places float in the range [0, 10]
15 
16
17Write a solution to report the movies with an odd-numbered ID and a description that is not "boring".
18
19Return the result table ordered by rating in descending order.
20
21The result format is in the following example.
22
23 
24
25Example 1:
26
27Input: 
28Cinema table:
29+----+------------+-------------+--------+
30| id | movie      | description | rating |
31+----+------------+-------------+--------+
32| 1  | War        | great 3D    | 8.9    |
33| 2  | Science    | fiction     | 8.5    |
34| 3  | irish      | boring      | 6.2    |
35| 4  | Ice song   | Fantacy     | 8.6    |
36| 5  | House card | Interesting | 9.1    |
37+----+------------+-------------+--------+
38Output: 
39+----+------------+-------------+--------+
40| id | movie      | description | rating |
41+----+------------+-------------+--------+
42| 5  | House card | Interesting | 9.1    |
43| 1  | War        | great 3D    | 8.9    |
44+----+------------+-------------+--------+
45Explanation: 
46We have three movies with odd-numbered IDs: 1, 3, and 5. The movie with ID = 3 is boring so we do not include it in the answer.
47*/
48
49
50SELECT c.id, c.movie, c.description, c.rating
51FROM Cinema as c
52WHERE c.ID % 2 <> 0 AND LOWER(c.description) NOT LIKE 'boring'
53ORDER BY c.rating DESC