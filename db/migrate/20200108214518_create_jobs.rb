class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :name
      t.integer :total_hours

      t.timestamps
    end
  end
end
