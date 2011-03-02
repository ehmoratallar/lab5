class Products < ActiveRecord::Base
validates_numericality_of :price
end
