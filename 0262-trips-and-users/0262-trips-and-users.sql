SELECT 
    T.request_at AS Day,
    ROUND(
    SUM(
    CASE 
    WHEN T.status IN ('cancelled_by_client', 'cancelled_by_driver') 
    THEN 1 
    ELSE 0 
    END
) / COUNT(*),
    2
) AS `Cancellation Rate`
FROM Trips T
JOIN Users C
ON T.client_id = C.users_id
JOIN Users D
ON T.driver_id = D.users_id
WHERE C.banned = 'No'
AND D.banned = 'No'
AND T.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY T.request_at;