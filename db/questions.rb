#What 3 towns have the highest population of citizens that are 65 years and older?

TownHealthRecord.all.order('population_65_and_over_2005 DESC').limit(3)

#What 3 towns have the highest population of citizens that are 19 years and younger?

TownHealthRecord.all.order('town_health_records.population_19_and_under_2005 DESC').limit(3)

#What 5 towns have the lowest per capita income?

TownHealthRecord.all.order('per_capita_income_2000').limit(5)

#Omitting Boston, Becket and Beverly, what town has the highest percentage of teen births?

TownHealthRecord.where.not('town_health_records.town = Boston OR town_health_records.town != Becket OR town_health_record.town != Beverly').order('town_health_records.pct_teen_births_20052008 DESC').limit(1)

#Omitting Boston, what town has the highest number of infant mortalities?

TownHealthRecord.where.not('town_health_records.town = BOSTON').order('town_health_records.infant_death_count_20052008 DESC').limit(1)
