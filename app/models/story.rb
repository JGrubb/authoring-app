class Story < ActiveRecord::Base

  validates :title, :summary, :presence => true
  has_many :resources, -> { order("position ASC") }, :dependent => :delete_all
  accepts_nested_attributes_for :resources, :allow_destroy => true, :reject_if => :is_empty?
  
  def is_empty?(attributed)
    attributed['body'].length == 0
  end

end
