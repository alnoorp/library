class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.datetime :checkout_date, null: false
      t.datetime :return_date, null: false
      t.integer :book_id

      t.timestamps
    end
  end
end
