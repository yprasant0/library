class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :book_name
      t.string :author
      t.text   :description
    end
  end
end
