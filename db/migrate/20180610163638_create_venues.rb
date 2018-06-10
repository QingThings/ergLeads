class CreateVenues < ActiveRecord::Migration[5.2]
  def change
    create_table :venues do |t|
      t.string :name, null:false
      t.string :kind
      t.string :address
      t.string :city
      t.string :state
      t.string :region
      t.string :zipcode
      t.string :email
      t.string :phone
      t.text :comments

      t.timestamps
    end
  end
end
