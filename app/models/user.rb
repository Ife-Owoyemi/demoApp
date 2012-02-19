class User < ActiveRecord::Base
  has_many :microposts
  has_many :post_comments
end