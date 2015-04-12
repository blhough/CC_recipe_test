class Chapter < ActiveRecord::Base
  belongs_to :cookbook
  has_many :assignments
  has_many :recipes, through: :assignments
end
