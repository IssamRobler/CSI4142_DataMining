
with distinct_joined_fact_country_dimension as (
	select distinct P.*, H.*,F.development_index
	from country_trends_fact_table as F, country_dimension as P,health_dimension as H
where F.country_id = P.country_id and F.health_id = H.health_id
) select *
from distinct_joined_fact_country_dimension as L 
