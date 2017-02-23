class Submission < ApplicationRecord
  belongs_to :work
  validates :work_id, presence: true

  belongs_to :author
  validates :author_id, presence: true

  belongs_to :translator
  validates :translator_id, presence: true

  belongs_to :language
  validates :language_id, presence: true

  belongs_to :medium
  validates :medium_id, presence: true

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
