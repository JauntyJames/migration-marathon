class AddReaderTable < ActiveRecord::Migration[5.1]
  def change
    create_table :readers do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :phone_number, null: false

      t.timestamps
    end
  end
end

# Since we now have a readers table, we can normalize our checkouts table to refer
# to a reader's foreign key instead of their name.
#
# Add the proper associations to the Book, Checkout and Reader models. Then generate
# a migration to add and populate a foreign key field on the checkouts table.
