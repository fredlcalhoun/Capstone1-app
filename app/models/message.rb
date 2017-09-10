class Message < ApplicationRecord
  belongs_to :user
  belongs_to :other_user

  has_many :users
  has_many :other_users
end
