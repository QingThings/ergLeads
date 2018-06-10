class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name, null:false
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :region
      t.string :website
      t.text :comments

      t.timestamps
    end
  end
end
