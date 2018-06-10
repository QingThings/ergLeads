class CreateJoinTableOrganizationVenue < ActiveRecord::Migration[5.2]
  def change
    create_join_table :organizations, :venues do |t|
      t.index [:organization_id, :venue_id]
      t.index [:venue_id, :organization_id]
    end
  end
end
