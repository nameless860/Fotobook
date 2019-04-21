class Album < ApplicationRecord
  validates :title, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 300 }

  has_many :photos
  belongs_to :user

end
