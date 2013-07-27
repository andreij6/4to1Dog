class Comment < ActiveRecord::Base
  resourcify
  
  attr_accessible :content
  belongs_to :commentable, polymorphic: true
  belongs_to :user
  
end
