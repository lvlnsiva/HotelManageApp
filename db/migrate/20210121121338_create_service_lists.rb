class CreateServiceLists < ActiveRecord::Migration[6.0]
  def change
    create_table :service_lists do |t|
      t.integer :service_id
      t.float :amount
      t.integer :bill_number
      t.text :description
      t.integer :checkin_id
      t.integer :room_id

      t.timestamps
    end
  end
end
