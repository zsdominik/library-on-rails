class CreateMagazines < ActiveRecord::Migration[5.2]
  def change
    create_table :magazines do |t|
      t.string :name
      t.string :description
      t.belongs_to :publisher, index: true

      t.timestamps
    end

    create_table :magazines_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :magazine, index: true
    end
  end
end
