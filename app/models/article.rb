class Article < ApplicationRecord
  validates :title, presence: true
  validates :subtitle, presence: true
  validates :photo, presence: true
  validates :content, presence: true
end
