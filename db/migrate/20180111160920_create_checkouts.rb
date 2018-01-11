class CreateCheckouts < ActiveRecord::Migration[5.1]
  def change
    create_table :checkouts do |t|
      t.integer :book_id, index: true, null: false
      t.datetime :returned_at

      t.timestamps
    end
  end

  # add_index :checkouts, :book_id
end
