class User < ApplicationRecord
  validates :first_name, presence: true, length: { maximum: 25 }
  validates :last_name, presence: true, length: { maximum: 25 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true

  has_many :photos
  has_many :albums
  # Include default devise modules. Others available are:
  :confirmable#, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
