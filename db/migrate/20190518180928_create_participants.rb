class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.integer :age, null: false
      t.date :date, null: false
      t.integer :height, null: false
      t.integer :weight, null: false
      t.string :eye_color, null: false
      t.string :hair_color, null: false
      t.integer :hair_length, null: false
      t.integer :shoe_size, null: false
      t.string :type, null: false

      t.timestamps
    end
  end
end
