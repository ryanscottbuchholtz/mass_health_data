-- What 3 towns have the highest population of citizens that are 65 years and older?

SELECT * FROM town_health_records ORDER BY town_health_records.population_65_and_over_2005 DESC LIMIT 3;

-- What 3 towns have the highest population of citizens that are 19 years and younger?

SELECT * FROM town_health_records ORDER BY town_health_records.population_19_and_under_2005 DESC LIMIT 3;

-- What 5 towns have the lowest per capita income?

SELECT * FROM town_health_records ORDER BY town_health_records.per_capita_income_2000 LIMIT 5;

-- Omitting Boston, Becket and Beverly, what town has the highest percentage of teen births?

SELECT * FROM town_health_records WHERE town_health_records.town != 'Boston' OR town_health_records.town != 'Becket' OR town_health_record.town != 'Beverly' ORDER BY town_health_records.pct_teen_births_20052008; 

-- Omitting Boston, what town has the highest number of infant mortalities?

SELECT * FROM town_health_records WHERE town_health_records.town != 'BOSTON' ORDER BY town_health_records.infant_death_count_20052008 DESC LIMIT 1;


