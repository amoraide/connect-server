class User < ApplicationRecord
  has_secure_password

  has_many :links, foreign_key: 'user_id', class_name: 'UserLink', dependent: :delete_all
  belongs_to :role, optional: true

  delegate :is_admin, to: :role

  validates :username, presence: true
end
