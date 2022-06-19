class Role < ApplicationRecord
  self.primary_key = 'role_id'

  validates :title, presence: true
end
