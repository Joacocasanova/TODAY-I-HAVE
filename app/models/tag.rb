class Tag < ApplicationRecord
  has_many :updates_categories
  has_many :updates, through: :update_categories

  validates :name, presence: true
end
