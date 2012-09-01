class AddCreatedAtToPeople < ActiveRecord::Migration
  def change
    add_column :people, :created_at, :datetime
  end
end
