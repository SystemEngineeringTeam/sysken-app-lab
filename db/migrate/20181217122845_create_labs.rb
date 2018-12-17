class CreateLabs < ActiveRecord::Migration[5.2]
  def change
    create_table :labs do |t|
      t.integer :university_id
      t.text :lab
      t.text :overview

      t.timestamps
    end
  end
end
