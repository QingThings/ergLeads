class CreateJoinTableIndividualVenue < ActiveRecord::Migration[5.2]
  def change
    create_join_table :individuals, :venues do |t|
      t.index [:individual_id, :venue_id]
      t.index [:venue_id, :individual_id]
    end
  end
end
