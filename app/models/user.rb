class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, length: { maximum: 25 }
  validates :password, length: { in: 6..20 }
end
