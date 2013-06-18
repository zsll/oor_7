class Article < ActiveRecord::Base
  attr_accessible :category, :description, :title
end
