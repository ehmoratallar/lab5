class Products < ActiveRecord::Base
	validates_numericality_of :price, :greater_than 0.01
	validates_uniqueness_of :title
	validates_presence_of :title, :description, :price, :image_url
	validates_format_of :image_url, :with => %r{\.(gif|jpg|png)$}i
	validates_numericality_of :projection, :greater_than 0
end
