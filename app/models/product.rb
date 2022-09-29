class Product < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings, dependent: :destroy
  belongs_to :user

  validates :description, :price, :images_url, :category_id, presence: true
end
