class Chapter < ActiveRecord::Base
  belongs_to :cookbook
  has_many :assignments
end
