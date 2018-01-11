class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title, null: false
    end
  end
end



# You should see in the output that this generated a migration file in
# the db/migrate directory. Add an attribute to represent a book title.
# Add model constraints (validations) to match your schema constraints
# the constraints specified in your migration).
