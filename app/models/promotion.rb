class Promotion < ApplicationRecord
  validates :title, presence: true
  after_save :feature
  after_create :feature

  def feature
    if featured
      self.class.where.not(id: id, featured: false).update_all(featured: false)
    end
  end
end
