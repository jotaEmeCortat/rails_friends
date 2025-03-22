class Friend < ApplicationRecord
  validates :first_name, :last_name, :email, :address, presence: true, uniqueness: true
end
