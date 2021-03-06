class User < ActiveRecord::Base
  has_many :pledges,
        foreign_key: "backer_id"
  has_many :owned_projects, class_name: "Project",
                          foreign_key: "owner_id"

  authenticates_with_sorcery!
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
