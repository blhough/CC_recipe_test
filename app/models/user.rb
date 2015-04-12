class User < ActiveRecord::Base
  has_many :Recipes
end
