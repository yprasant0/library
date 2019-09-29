class RemoveStudentIdFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :student_id, :integer
  end
end
