class User < ActiveRecord::Base
  has_many :recipes, dependent: :destroy
  has_many :cookbooks, dependent: :destroy
end
