class Picture < ApplicationRecord

  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :comments

  validates :image_url, presence: true
  validates :title, presence: true

end
