class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true , format: {with: /[^@\s]+@[^@\s]+\z/,message: "Incorrect format"}
end
