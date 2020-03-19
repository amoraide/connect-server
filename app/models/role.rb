class Role < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :users

  def set_user(user)
    binding.pry
    user.update(role_id: self.id)
  end
end
