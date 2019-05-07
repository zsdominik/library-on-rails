class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    create_table :users_galleries, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :gallery, index: true
    end
  end
end
