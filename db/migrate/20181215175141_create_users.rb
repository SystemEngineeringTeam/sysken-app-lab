class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :gender_id
      t.integer :grade_id
      t.integer :lab_id
      t.text :context
      t.string :email
      t.string :password
      t.timestamps
    end
  end
end

