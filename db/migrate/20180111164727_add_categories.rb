class AddCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, null: false, index: { unique: true }
    end

    add_column :books, :category_id, :integer, index: true
    # add_index :categories, :name, unique: true
  end

  # def down
  #   remove_index :categories, :name
  #   drop_table :categories
  # end
end
