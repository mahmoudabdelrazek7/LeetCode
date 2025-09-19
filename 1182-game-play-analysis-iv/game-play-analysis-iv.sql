WITH FirstLogin AS (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
)

SELECT 
    ROUND(
        CAST(COUNT(*) AS FLOAT) / (SELECT COUNT(*) FROM FirstLogin), 
        2
    ) AS fraction
FROM FirstLogin f
WHERE EXISTS (
    SELECT 1
    FROM Activity a
    WHERE a.player_id = f.player_id
      AND a.event_date = DATEADD(DAY, 1, f.first_login)
);
