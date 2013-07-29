class Video < ActiveRecord::Base
  
  
  attr_accessible :code, :series, :title, :tag_list
  acts_as_taggable
  
  has_many :comments, as: :commentable
  
  validates :code,  :presence => true
  validates :title,  :presence => true
  
end
