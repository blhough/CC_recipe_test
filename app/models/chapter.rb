class Chapter < ActiveRecord::Base
  belongs_to :cookbook
  has_many :assignments, dependent: :destroy
  has_many :recipes, through: :assignments
end
