class Tag < ApplicationRecord
  has_many :task_categories
  has_many :tasks, through: :task_categories

  validates :name, presence: true
end
