class CreateKens < ActiveRecord::Migration[5.2]
  def change
    create_table :kens do |t|
      t.string :ken

      t.timestamps
    end
  end
end
