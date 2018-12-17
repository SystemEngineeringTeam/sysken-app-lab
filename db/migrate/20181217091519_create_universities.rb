class CreateUniversities < ActiveRecord::Migration[5.2]
  def change
    create_table :universities do |t|
      t.string :university
      t.integer :ken_id

      t.timestamps
    end
  end
end
