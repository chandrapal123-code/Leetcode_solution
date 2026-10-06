# Write your MySQL query statement below
select distinct l1.num as ConsecutiveNums
from Logs l1
join Logs l2
on l2.id =l1.id + 1
JOIN Logs l3
    ON l3.id = l1.id + 2
WHERE l1.num = l2.num
  AND l2.num = l3.num;
;
