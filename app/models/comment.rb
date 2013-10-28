class Comment < ActiveRecord::Base
  attr_accessible :comment_id, :paragraph, :post_id, :user_id, :vote
  
  belongs_to :post
  belongs_to :user
  has_many :commentvotes
end
