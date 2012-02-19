class PostComment < ActiveRecord::Base
  belongs_to :mircopost
  belongs_to :user
  
  validates :comment, :length => {:maximum => 60}
end
