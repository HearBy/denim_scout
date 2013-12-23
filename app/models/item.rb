class Item < ActiveRecord::Base
	belongs_to :garment

	validates_numericality_of :waist, 		greater_than_or_equal_to: 26, less_than_or_equal_to: 42
	validates_numericality_of :front_rise, 	greater_than_or_equal_to: 8, less_than_or_equal_to: 14
	validates_numericality_of :thigh, 		greater_than_or_equal_to: 9, less_than_or_equal_to: 15 
	validates_numericality_of :knee, 		greater_than_or_equal_to: 6, less_than_or_equal_to: 12
	validates_numericality_of :leg_opening, greater_than_or_equal_to: 5, less_than_or_equal_to: 12
	validates_numericality_of :inseam, 		greater_than_or_equal_to: 28, less_than_or_equal_to: 40
	validates_numericality_of :tag_size, 	greater_than_or_equal_to: 25, less_than_or_equal_to: 43

	def self.true_waist_search(waist_size)
		if waist_size
			where('waist <= ?', (waist_size.to_d + 0.5))
			.where('waist >= ?', (waist_size.to_d - 0.5))
		else
			all
		end
	end

	def self.price_search(min, max)
		if min && max 
			joins(:garment).where('garments.price >= ?', min).where('garments.price <= ?', max)
		else
			all 
		end
	end

	def self.fit_search(search)
		if search
			joins(:garment).where('garments.fit' => search)
		else
			all
		end
	end
end
