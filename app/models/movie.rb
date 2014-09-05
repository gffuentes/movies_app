class Movie < ActiveRecord::Base
	def self.search(query)
		where("title like '%#{query}%' or description like '%#{query}%'")
	end
end
