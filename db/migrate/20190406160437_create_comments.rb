class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :link_id
      t.text :body

      t.timestamps
    end
    add_index :comments, :link_id
  end
end
