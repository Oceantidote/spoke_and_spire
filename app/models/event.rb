class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :content, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  has_rich_text :content
end
