class Blog < ActiveRecord::Base
  attr_accessible :body, :title, :tag_list
  acts_as_taggable
  
  belongs_to :user
  
  validates :title,       :presence => true
  validates :body,       :presence => true
  
  
end
