class Photo < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_one_attached :photo
  validates :photo, attached: true
  validates :title, presence: true
  validates :alt, presence: true
end
