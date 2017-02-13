class Submission < ApplicationRecord
  belongs_to :work
  belongs_to :author
  belongs_to :translator
  belongs_to :language
  belongs_to :medium

  # validates :work, presence: true

  def self.search(search)
    self.joins(:author).joins(:translator).
      where("title LIKE ? OR translators.name LIKE ?", "%#{search}%", "%#{search}%")
  end

end
