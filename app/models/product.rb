class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many_attached :photos

  validates :title, :description, :price, :category_id, presence: true
  validates :title, length: { in: 6..30 }
  validates :description, length: { in: 10..1000, wrong_length: "La descripción debe tener entre 10 y 1000 caracteres" }
end
