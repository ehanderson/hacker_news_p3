class Commentvotes < ActiveRecord::Base
  attr_accessible :comment_id, :user_id, :vote_counter

  belongs_to :comment
  belongs_to :user
end
