class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rewards
  # has_many :comments
  has_many :pledges, through: :rewards
end
