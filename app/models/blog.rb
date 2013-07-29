class Blog < ActiveRecord::Base
  
  
  attr_accessible :body, :title, :tag_list
  acts_as_taggable
  
 
  has_many :comments, as: :commentable
  belongs_to :user
  
  validates :title,       :presence => true,
                          length: { minimum: 5 }
                          
  validates :body,       :presence => true
  validates :user_id, presence: true
  
end
