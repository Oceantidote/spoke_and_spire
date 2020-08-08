class Banner < ApplicationRecord
  belongs_to :slide_one, class_name: "Photo"
  belongs_to :slide_two, class_name: "Photo"
  belongs_to :slide_three, class_name: "Photo"
  belongs_to :slide_four, class_name: "Photo"
  belongs_to :card_one, class_name: "Photo"
  belongs_to :card_two, class_name: "Photo"
  belongs_to :card_three, class_name: "Photo"
  has_rich_text :card_one_content
  has_rich_text :card_two_content
  has_rich_text :card_three_content

  validates :title, presence: true
  validates :slide_one_id, presence: true
  validates :slide_two_id, presence: true
  validates :slide_three_id, presence: true
  validates :slide_four_id, presence: true
  validates :slide_four_title, presence: true
  validates :card_one_id, presence: true
  validates :card_two_id, presence: true
  validates :card_three_id, presence: true
  validates :card_one_content, presence: true
  validates :card_two_content, presence: true
  validates :card_three_content, presence: true
  validates :slide_one_image_alt_text, presence: true
  validates :slide_one_title, presence: true
  validates :slide_two_image_alt_text, presence: true
  validates :slide_two_title, presence: true
  validates :slide_three_image_alt_text, presence: true
  validates :slide_three_title, presence: true
  validates :card_one_title, presence: true
  validates :card_one_image_alt_text, presence: true
  validates :card_two_image_alt_text, presence: true
  validates :card_two_title, presence: true
  validates :card_three_title, presence: true
  validates :card_three_image_alt_text, presence: true
  validates :slide_one_image_alt_text, presence: true
  validates :slide_one_title, presence: true
  validates :slide_two_image_alt_text, presence: true
  validates :slide_two_title, presence: true
  validates :slide_three_image_alt_text, presence: true
  validates :slide_three_title, presence: true
  validates :card_one_title, presence: true
  validates :card_one_image_alt_text, presence: true
  validates :card_two_image_alt_text, presence: true
  validates :card_two_title, presence: true
  validates :card_three_title, presence: true
  validates :card_three_image_alt_text, presence: true
end
