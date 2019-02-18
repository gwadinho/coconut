class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :ending_date
      t.references :user, foreign_key: true
      t.references :island, foreign_key: true
      t.integer :total_price

      t.timestamps
    end
  end
end
