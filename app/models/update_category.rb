class UpdateCategory < ApplicationRecord
  belongs_to: :update
  belongs_to: :tag
end
