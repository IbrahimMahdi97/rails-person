class PersonPass < ApplicationRecord
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 10 }
end
