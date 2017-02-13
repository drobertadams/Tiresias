class Submission < ApplicationRecord
  belongs_to :work
  belongs_to :author
  belongs_to :translator
  belongs_to :language
  belongs_to :medium

  # validates :work, presence: true
end
