class AddCategorizationsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :categorizations do |t|
      t.integer :book_id, index: true, null: false
      t.integer :category_id, index: true, null: false
    end
  end
end

# Because more than one book can have the same category and each book can have more
#  than one category, we need a join table here. Let's call it categorizations. It
#  needs two columns, book_id and category_id. Make sure you have the proper associations
#  in your Category and Book models.
