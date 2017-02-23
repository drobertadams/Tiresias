class Medium < ApplicationRecord
  validates :name, presence: true, length: { minimum: 5 }
end
