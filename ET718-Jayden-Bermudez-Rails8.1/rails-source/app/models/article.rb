class Article < ApplicationRecord
  SECTIONS = ['Sports', 'Culture', 'Technology', 'School'].freeze

  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: { minimum: 5, maximum: 150 }
  validates :body, presence: true, length: { minimum: 20 }
  validates :section, presence: true, inclusion: { in: SECTIONS }

end
