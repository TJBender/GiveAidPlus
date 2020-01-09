class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.integer :volunteer_id
      t.integer :company_id
      t.string :name
      t.integer :hours

      t.timestamps
    end
  end
end
