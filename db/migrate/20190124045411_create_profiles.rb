class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :zip_code
      t.string :contact_email
      t.text   :description
      t.timestamps
    end
  end
end
