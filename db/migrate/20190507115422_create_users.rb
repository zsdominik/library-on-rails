class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password
      t.string :email, null: false

      t.timestamps
    end
  end
end
