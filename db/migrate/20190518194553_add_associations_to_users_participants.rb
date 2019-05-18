class AddAssociationsToUsersParticipants < ActiveRecord::Migration[5.2]
  def change
    change_table :participants do |t|
      t.references :user, foreign_key: true, null: false
    end
  end
end
