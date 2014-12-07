class Reward < ActiveRecord::Base
  belongs_to :project
  has_many :pledges

  def backers
    backers = []
    pledges.each {|pledge| backers << pledge.backer}
    backers
  end
end
