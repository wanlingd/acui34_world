class Article < ApplicationRecord
    belongs_to :category
    validates :title, :presence => true
    validates :content, :presence => true
    scope :alphabetical, -> { order('title') }
    scope :active, -> { where('active = ?', true) }
end
