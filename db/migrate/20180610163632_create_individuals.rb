class CreateIndividuals < ActiveRecord::Migration[5.2]
  def change
    create_table :individuals do |t|
      t.string :first_name, null:false
      t.string :last_name, null:false
      t.string :job_title
      t.string :email
      t.string :phone
      t.text :comments

      t.timestamps
    end
  end
end
