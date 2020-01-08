class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.integer :phone_number
      t.string :name
      t.string :password
      t.string :user_type
      t.string :bio

      t.timestamps
    end
  end
end
