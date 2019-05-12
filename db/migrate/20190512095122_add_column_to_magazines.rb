class AddColumnToMagazines < ActiveRecord::Migration[5.2]
  def change
    add_column :magazines, :image, :binary
  end
end
