with age_group_status as (
	SELECT 
		age_group,
		sum(case when platform="liocinema" then 1 else 0 end) AS Lio_user,
		sum(case when platform="jotstar" then 1 else 0 end) AS Jot_user
	FROM 
		jotstar_db.combined_subscribers
	group by
		age_group
	order by
		case when
			age_group="18-24" then 1
			when age_group="25-34" then 2
			when age_group="35-44" then 3
			else 4
		end
),
TOTAL_USERS_COUNT AS(
	SELECT
		PLATFORM,
		COUNT(DISTINCT USER_ID) AS TOTAL_USER
	FROM
		jotstar_db.combined_subscribers
	GROUP BY
		PLATFORM
)

SELECT
	AGE_GROUP,
    LIO_USER,
    CAST(LIO_USER*100/LIO_TUC.TOTAL_USER AS DECIMAL(10,2)) AS LIO_USER_PCT,
    JOT_USER,
    CAST(JOT_USER*100/JOT_TUC.TOTAL_USER AS DECIMAL(10,2)) AS JOT_USER_PCT
FROM
	Age_group_status AGS
LEFT JOIN
	TOTAL_USERS_COUNT LIO_TUC ON LIO_TUC.PLATFORM="LIOCINEMA"
LEFT JOIN
	TOTAL_USERS_COUNT JOT_TUC ON JOT_TUC.PLATFORM="JOTSTAR"

    
    
        
        