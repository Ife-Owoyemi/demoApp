class Mircopost < ActiveRecord::Base
  belongs_to :user
  has_many :post_comments
  
  validates :content, :length => { :maximum => 140}
end
