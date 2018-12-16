class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :sex
      t.integer :grade
      t.integer :lab_id
      t.text :content

      t.timestamps
    end
  end
end
