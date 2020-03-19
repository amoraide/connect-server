class User < ApplicationRecord
  has_secure_password
  has_many :links, foreign_key: 'user_id', class_name: 'UserLink'

  validates :username, presence: true
  validates :password, presence: true
end
