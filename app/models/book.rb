class Book < ApplicationRecord
  belongs_to :author
  validates :nome, presence: true
  validates :escritor, presence: true
end
