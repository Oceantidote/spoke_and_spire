class Drink < ApplicationRecord
	validates :name, :description, presence: true
	validates :category, inclusion: { in: ["Craft Ales", "Continental Lagers", "British Ciders", "Wines from around the world"] }
	has_one_attached :photo 
end
