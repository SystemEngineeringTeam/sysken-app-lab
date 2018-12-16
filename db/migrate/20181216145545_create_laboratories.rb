class CreateLaboratories < ActiveRecord::Migration[5.2]
  def change
    create_table :laboratories do |t|
      t.integer :university_id
      t.text :lab_name
      t.text :lab_overview

      t.timestamps
    end
  end
end
