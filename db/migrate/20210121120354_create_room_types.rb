class CreateRoomTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :room_types do |t|
      t.string :name
      t.text :facilities
      t.float :base_price

      t.timestamps
    end
  end
end
