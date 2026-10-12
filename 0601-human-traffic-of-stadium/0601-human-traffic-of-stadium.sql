# Write your MySQL query statement below
with cte as (
    select *,
            id - row_number()over(order by id ) as grp
    from Stadium 
    where people >=100
) ,
visited as (
            select 
                grp
            from cte
            group by grp
            having count(*)>=3
)
select cte.id ,cte.visit_date ,cte.people 
from cte 
join visited
on cte.grp = visited.grp
order by cte.visit_date


