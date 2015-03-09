class CreateUserStations < ActiveRecord::Migration
  def change
    create_table :user_stations do |t|
      t.integer :station_id
      t.integer :user_id
    end
  end
end
