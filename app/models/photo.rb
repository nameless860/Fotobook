class Photo < ApplicationRecord
  validates :title, presence: true, length: { maximum: 140 }
  validates :description, presence: true, length: { maximum: 300 }

  belongs_to :user
  belongs_to :album
  # has_one :image, as: "imageable"
end
