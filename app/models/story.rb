class Story < ActiveRecord::Base

  validates :title, :summary, :presence => true
  accepts_nested_attributes_for :resources, :allow_destroy => true
  has_many :resources, -> { order("position ASC") }

end
