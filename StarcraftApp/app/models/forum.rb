class Forum < ActiveRecord::Base
	attr_accessible :name
	attr_accessible :description
	attr_accessible :body
  validates :name, :presence => true,
                   :length => {:minimum => 10}
  validates :body, :presence => true,
   :length => {:maximum => 250}
  
  before_create :create_permalink
  def to_param
   permalink
  end
  private
  def create_permalink
   permalink = self.name.gsub(' ', '-').gsub(/[^a-zA-Z0-9\_\-\.]/, '')
    self.permalink = permalink
  end
end

