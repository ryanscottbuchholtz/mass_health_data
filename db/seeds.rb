# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 require 'csv'

 def valid(data)
  data.gsub(',','').gsub('$','').gsub('N/A','')
 end


 directory = "db/data/"

 filename = "mass_health_data.csv"
 path_to_file = directory + filename

 puts 'Loading Massachusetts Health Data Records'

 CSV.foreach(path_to_file, headers: true) do |row|
  unless TownHealthRecord.exists?("town" => row[0])
  TownHealthRecord.create!("town" => row[0], 
                          "total_population_2005" => valid(row[1]), 
                          "population_19_and_under_2005" => valid(row[2]), 
                          "population_65_and_over_2005" => valid(row[3]), 
                          "per_capita_income_2000" => valid(row[4]), 
                          "persons_below_200pct_poverty_2000" => valid(row[5]), 
                          "percent_below_200pct_poverty_2000" => valid(row[6]), 
                          "pct_adequacy_prenatal_care_2000" => valid(row[7]), 
                          "pct_csection_delivery_20052008" => valid(row[8]), 
                          "infant_death_count_20052008" => valid(row[9]), 
                          "infant_mortality_per_1000_live_births" => valid(row[10]), 
                          "pct_low_birthweight_20052008" => valid(row[11]), 
                          "pct_multiple_births_20052008" => valid(row[12]), 
                          "pct_public_financed_prenatal_care_20052008" => valid(row[13]), 
                          "pct_teen_births_20052008" => valid(row[14])
                            )
  end
end