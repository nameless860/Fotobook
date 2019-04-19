class Photo < ApplicationRecord
  belongs_to :user
  has_one :image, as: "imageable"
end