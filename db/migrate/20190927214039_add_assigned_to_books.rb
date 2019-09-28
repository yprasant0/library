class AddAssignedToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :assigned, :string
  end
end
