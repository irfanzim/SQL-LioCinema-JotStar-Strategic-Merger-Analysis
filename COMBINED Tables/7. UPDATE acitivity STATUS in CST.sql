update jotstar_db.combined_subscribers
set activity="Active"
where
	LAST_ACTIVE_DATE IS NULL OR LAST_ACTIVE_DATE >"2024-11-30";
    

update jotstar_db.combined_subscribers
set activity="Inactive"
where
	LAST_ACTIVE_DATE IS not NULL and LAST_ACTIVE_DATE <="2024-11-30";
