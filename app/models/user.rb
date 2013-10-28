class User < ActiveRecord::Base
  attr_accessible :about, :password, :username

  has_many :comments
  has_many :posts
  has_many :post_votes
  has_many :comment_votes
  
  has_secure_password
  validates_uniqueness_of :username
end
