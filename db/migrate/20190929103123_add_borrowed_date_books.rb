class AddBorrowedDateBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :borrowed_date, :date
  end
end
