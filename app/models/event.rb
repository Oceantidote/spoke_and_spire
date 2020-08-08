class Event < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged
  validates :title, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  has_many_attached :photos
  has_rich_text :content

  def good_title
    if start_time < Time.now
      "LIVE NOW ends #{end_time.strftime('%d/%m')}"
    else
      "#{start_time.strftime('%d/%m')} to #{end_time.strftime('%d/%m')}"
    end
  end
end
