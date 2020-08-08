class Photo < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_one_attached :photo
  validates :photo, size: { less_than: 2.megabytes, message: 'cannot exceed 2MB' }
  validates :photo, attached: true
  validates :title, presence: true
  validates :alt, presence: true
end
