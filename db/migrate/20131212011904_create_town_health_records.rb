class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :town
      t.integer :total_population_2005
      t.integer :population_19_and_under_2005
      t.integer :population_65_and_over_2005
      t.integer :per_capita_income_2000
      t.integer :persons_below_200pct_poverty_2000
      t.decimal :percent_below_200pct_poverty_2000
      t.decimal :pct_adequacy_prenatal_care_2000
      t.decimal :pct_csection_delivery_20052008
      t.integer :infant_death_count_20052008
      t.decimal :infant_mortality_per_1000_live_births
      t.decimal :pct_low_birthweight_20052008
      t.decimal :pct_multiple_births_20052008
      t.decimal :pct_public_financed_prenatal_care_20052008
      t.decimal :pct_teen_births_20052008

      t.timestamps
    end
  end
end
