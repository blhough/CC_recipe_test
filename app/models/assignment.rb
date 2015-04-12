class Assignment < ActiveRecord::Base
  belongs_to :recipe
  belongs_to :chapters
end
