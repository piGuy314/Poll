class AddTopicToLinks < ActiveRecord::Migration[5.1]
  def change
    add_column :links, :topic, :string
    add_index :links, :topic
  end
end
