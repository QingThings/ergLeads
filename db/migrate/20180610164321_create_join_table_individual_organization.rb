class CreateJoinTableIndividualOrganization < ActiveRecord::Migration[5.2]
  def change
    create_join_table :organizations, :individuals do |t|
      t.index [:organization_id, :individual_id], name: 'org_idv'
      t.index [:individual_id, :organization_id], name: 'idv_org'
    end
  end
end
