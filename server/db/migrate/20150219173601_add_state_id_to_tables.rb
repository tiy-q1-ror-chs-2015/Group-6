class AddStateIdToTables < ActiveRecord::Migration
  def change
    add_column :hotels, :state_id, :integer
    add_column :attractions, :state_id, :integer
    add_column :restaurants, :state_id, :integer
  end
end
