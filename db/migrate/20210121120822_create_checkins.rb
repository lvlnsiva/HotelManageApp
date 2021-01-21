class CreateCheckins < ActiveRecord::Migration[6.0]
  def change
    create_table :checkins do |t|
      t.datetime :from_date
      t.datetime :to_date
      t.string :status

      t.timestamps
    end
  end
end
