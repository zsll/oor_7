class Article < ActiveRecord::Base
  attr_accessible :category, :description, :title
  validates :category, :presence => true, :inclusion => { :in => OORConstant.category }
end
