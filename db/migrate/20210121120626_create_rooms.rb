class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :room_type_id
      t.string :number
      t.string :status

      t.timestamps
    end
  end
end
