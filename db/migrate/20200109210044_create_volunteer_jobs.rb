class CreateVolunteerJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :volunteer_jobs do |t|
      t.references :volunteer, null: false, foreign_key: true
      t.references :job, null: false, foreign_key: true
      t.integer :hours_completed

      t.timestamps
    end
  end
end
