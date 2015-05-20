class AddHiddenToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :hidden, :boolean, :default => true

    Channel.all.each do |channel|
      channel.messages.update_all(hidden: channel.hidden)
    end
  end
end
