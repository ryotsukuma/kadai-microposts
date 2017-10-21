class Micropost < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  #has_many :favorites, through: :bookmarks, source: :users
  
  validates :user_id,presence: true
  validates :content,presence: true, length: {maximum: 255 }
end
