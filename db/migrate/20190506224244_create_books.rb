class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false, presence: true
      t.string :isbn, null: false, presence: true
      t.string :description
      t.binary :image
      t.belongs_to :author, index: true, null: false, presence: true

      t.timestamps
    end

    create_table :books_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :book, index: true, uniqueness: true
    end
  end
end
