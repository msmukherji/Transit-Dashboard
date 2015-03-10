class AddUserColumnToStations < ActiveRecord::Migration
  def change
    add_column :stations, :user_id, :integer
  end
end
