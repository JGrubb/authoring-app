class Story < ActiveRecord::Base

  validates :title, :summary, :presence => true

end
