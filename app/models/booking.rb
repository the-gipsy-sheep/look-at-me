class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :start_date, :finish_date, presence: true
  validates :finish_date, comparison: { greater_than: :start_date }
end
