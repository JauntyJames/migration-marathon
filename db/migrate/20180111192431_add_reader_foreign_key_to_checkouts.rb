class AddReaderForeignKeyToCheckouts < ActiveRecord::Migration[5.1]
  def change
    add_column :checkouts, :reader_id, :integer
  end
end
