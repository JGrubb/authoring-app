class Resource < ActiveRecord::Base
  belongs_to :story
  acts_as_list :scope => :story
end
