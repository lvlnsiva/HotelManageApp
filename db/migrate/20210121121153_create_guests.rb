class CreateGuests < ActiveRecord::Migration[6.0]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :sex
      t.string :photo
      t.text :address
      t.string :mobile
      t.string :email
      t.date :dob

      t.timestamps
    end
  end
end
