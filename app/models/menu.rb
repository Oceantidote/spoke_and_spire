class Menu < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :content, presence: true
  has_rich_text :content
end
