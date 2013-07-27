class Album < ActiveRecord::Base
  resourcify
  
  belongs_to :user
  has_many :pictures
  attr_accessible :title
end
