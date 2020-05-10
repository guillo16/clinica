class Article < ApplicationRecord
  validates :title, precense: true
  validates :subtitle, precense: true
  validates :photo, precense: true
  validates :content, precense: true
end
