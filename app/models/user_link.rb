class UserLink < ApplicationRecord
  has_one :user
  validates :user_id, presence: true
  validates :url, presence: true
end
