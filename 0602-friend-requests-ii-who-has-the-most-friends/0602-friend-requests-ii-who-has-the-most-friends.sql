# Write your MySQL query statement below
SELECT id, COUNT(*) AS num
FROM (
    SELECT requester_id AS id
    FROM RequestAccepted
 
union all
     SELECT accepter_id  AS num
    FROM RequestAccepted
) as friends 
group by id
order by num desc
limit 1