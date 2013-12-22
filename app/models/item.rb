class Item < ActiveRecord::Base
	belongs_to :garment

	validates :thigh, :numericality => true 
	validates :knee, :numericality => true
	validates :leg_opening, :numericality => true
	validates :inseam, :numericality => true
	validates :tag_size, :numericality => true

	validates_numericality_of :waist, greater_than_or_equal_to: 26, less_than_or_equal_to: 42
	validates_numericality_of :front_rise, greater_than_or_equal_to: 8, less_than_or_equal_to: 13

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
