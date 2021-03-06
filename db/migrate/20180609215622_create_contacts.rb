class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :organization_id

      t.timestamps
    end
  end
end
