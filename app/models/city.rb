class City < ApplicationRecord
  validates :ciudad, uniqueness: true
  has_many :articles

end
