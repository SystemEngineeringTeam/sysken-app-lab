class AddPictureToLabs < ActiveRecord::Migration[5.2]
  def change
    add_column :labs, :picture, :string
  end
end
