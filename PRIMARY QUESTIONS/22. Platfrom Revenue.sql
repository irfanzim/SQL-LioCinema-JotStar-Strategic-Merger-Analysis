SELECT 
	platform,
    sum(final_revenue) as Revenue
FROM jotstar_db.revenue_table
Group by platform