class Task < ApplicationRecord
  belongs_to :user
  has_many :task_categories
  has_many :tags, through: :task_categories

  accepts_nested_attributes_for :tags
  validates :title, :content, presence: true
  validates_associated :tags
  validates_uniqueness_of :title, scope: [:content, :created_at] #validate that title, content and date are unique
end
