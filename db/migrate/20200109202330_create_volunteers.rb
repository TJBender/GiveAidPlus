class CreateVolunteers < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :phone_number
      t.string :password

      t.timestamps
    end
  end
end
