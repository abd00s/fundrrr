class Pledge < ActiveRecord::Base
  belongs_to :reward
  belongs_to :backer, class_name: "User",
                  foreign_key: "backer_id"
end
