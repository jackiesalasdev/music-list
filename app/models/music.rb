class Music < ApplicationRecord
  validates :title, presence: true, length: { minimum: 1, maximum: 50 }
  validates :artist, presence: true, length: { minimum: 1, maximum:  50}
end

