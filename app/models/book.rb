class Book < ApplicationRecord
  validates :book_name, presence: true
  validates :author, presence: true
  validates :description, presence: true

end
