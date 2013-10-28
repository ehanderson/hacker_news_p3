class Post < ActiveRecord::Base
  attr_accessible :link, :title, :user_id, :vote

  belongs_to :user
  has_many :comments
  has_many :commentvotes, through: :comments
  has_many :postvotes
end
