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

  def self.search(title=nil, translator=nil, author=nil, work=nil, start_date=nil, end_date=nil)
    results = all
    results = results.where("submissions.title LIKE ?", "%#{title}%") unless title.blank?
    results = results.where("submissions.publication_year >= ?", "#{start_date}") unless start_date.blank?
    results = results.where("submissions.publication_year <= ? ", "#{end_date}" ) unless  end_date.blank?
    results = results.joins(:translator).where("translators.name LIKE ?", "%#{translator}%") unless translator.blank?
    results = results.joins(:author).where("authors.name LIKE ?", "%#{author}%") unless author.blank?
    results = results.joins(:work).where("works.title LIKE ?", "%#{work}%") unless work.blank?
    return results

  end

end
