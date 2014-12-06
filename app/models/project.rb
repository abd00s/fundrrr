class Project < ActiveRecord::Base
  belongs_to :owner, class_name: 'User'
  has_many :rewards
  # has_many :comments
  has_many :pledges, through: :rewards

  def formatted_start_date
    start_date.strftime("%b %d, %Y")
  end

  def formatted_end_date
    end_date.strftime("%b %d, %Y")
  end
end
