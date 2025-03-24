class Friend < ApplicationRecord
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :first_name, :last_name, :address, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: EMAIL_REGEX, message: "must be a valid email address" }

  def self.order_alphabetical
    order(:first_name)
  end
end
