class User < ApplicationRecord
  has_many :pictures
  has_many :comments

  validates :email, presence: true
  validates :email, uniqueness: true
  validates :username, presence: true
  validates :username, uniqueness: true

end
