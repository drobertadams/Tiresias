class Submission < ApplicationRecord
  belongs_to :work
  belongs_to :author
  belongs_to :translator
  belongs_to :language
  belongs_to :medium

  validates :medium_id, presence: true
  validates :language_id, presence: true
  validates :translator_id, presence: true
  validates :author_id, presence: true
  validates :work_id, presence: true
  validates :title, presence: true, length: { minimum: 5 }

  def self.search(search)
    if search
      self.joins(:translator).
        where("title LIKE ? OR translators.name LIKE ?", "%#{search}%", "%#{search}%")
    else
      all
    end
  end

end
