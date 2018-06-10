class ClearData < ActiveRecord::Migration[5.2]
  def change
    drop_table :contacts
    drop_table :organizations
  end
end
