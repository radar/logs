class AddCreatedAtToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :created_at, :datetime
  end
end
