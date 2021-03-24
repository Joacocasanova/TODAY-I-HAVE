class Update < ApplicationRecord
  has_many :tags, through: :update_categories
  belongs_to :user
  has_many :update_categories

  validates :title, :content, presence: true
  validates_associated :tags
  validates_uniqueness_of :title, scope: [:content, :created_at]
end
