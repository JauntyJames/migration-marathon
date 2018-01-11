class RemoveFullNameFromReaders < ActiveRecord::Migration[5.1]
  def up
    remove_column :readers, :full_name
  end
  def down
    add_column :readers, :full_name, :string
  end
end
