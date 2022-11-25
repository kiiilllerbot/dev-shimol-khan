class User < ApplicationRecord
  acts_as_voter
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :articles
end
