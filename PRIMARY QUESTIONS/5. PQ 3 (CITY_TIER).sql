with CITY_TIER_status as (
	SELECT 
		CITY_TIER,
		sum(case when platform="liocinema" then 1 else 0 end) AS Lio_user,
		sum(case when platform="jotstar" then 1 else 0 end) AS Jot_user
	FROM 
		jotstar_db.combined_subscribers
	group by
		CITY_TIER
	order by
		case when
			CITY_TIER="TIER 1" then 1
			when CITY_TIER="TIER 2" then 2
			when CITY_TIER="TIER 3" then 3
			else 0
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
	CITY_TIER,
    LIO_USER,
    CAST(LIO_USER*100/LIO_TUC.TOTAL_USER AS DECIMAL(10,2)) AS LIO_USER_PCT,
    JOT_USER,
    CAST(JOT_USER*100/JOT_TUC.TOTAL_USER AS DECIMAL(10,2)) AS JOT_USER_PCT
FROM
	CITY_TIER_status AGS
LEFT JOIN
	TOTAL_USERS_COUNT LIO_TUC ON LIO_TUC.PLATFORM="LIOCINEMA"
LEFT JOIN
	TOTAL_USERS_COUNT JOT_TUC ON JOT_TUC.PLATFORM="JOTSTAR"

    
    
        
        