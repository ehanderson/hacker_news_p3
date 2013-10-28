class Postvotes < ActiveRecord::Base
  attr_accessible :post_id, :user_id, :vote_counter

  belongs_to :post
  belongs_to :user
end
