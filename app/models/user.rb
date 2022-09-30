class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products, through: :bookings, dependent: :destroy
  has_many :bookings, dependent: :destroy, through: :products

  validates :email, :password, :username, :first_name, :last_name, :phone_number, :address, presence: true
  validates :email, :username, uniqueness: true
  validates :username, length: { in: 6..30 }
end
