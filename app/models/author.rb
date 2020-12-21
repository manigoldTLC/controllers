class Author < ApplicationRecord
  has_many :book
  validates :nome, presence: true
end
