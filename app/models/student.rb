class Student < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :section, presence: true
end