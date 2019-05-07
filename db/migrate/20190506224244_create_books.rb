class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :description
      t.binary :image
      t.belongs_to :author, index: true

      t.timestamps
    end

    create_table :users_books, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :book, index: true
    end
  end
end
