class Banner < ApplicationRecord
  belongs_to :slide_one, class_name: "Photo"
  belongs_to :slide_two, class_name: "Photo"
  belongs_to :slide_three, class_name: "Photo"
  belongs_to :card_one, class_name: "Photo"
  belongs_to :card_two, class_name: "Photo"
  belongs_to :card_three, class_name: "Photo"
  has_rich_text :card_one_content
  has_rich_text :card_two_content
  has_rich_text :card_three_content
end
