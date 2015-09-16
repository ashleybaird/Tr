class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :total
      t.integer :hotel
      t.integer :food
      t.integer :activities
      t.integer :travel
      t.integer :num_days
      t.integer :avg_days
      t.integer :avg_hotel
      t.integer :avg_food
      t.integer :avg_travel
      t.integer :avg_activities
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
