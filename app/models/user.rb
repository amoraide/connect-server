class User < ApplicationRecord
  has_secure_password

  has_many :links, foreign_key: 'user_id', class_name: 'UserLink', dependent: :delete_all
  belongs_to :role, optional: true

  [
    :is_admin
  ].each do |role_action|
    delegate role_action, to: :role, allow_nil: true
  end

  validates :username, presence: true
end
