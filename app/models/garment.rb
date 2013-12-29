class Garment < ActiveRecord::Base
	has_many :items

	validates :model, presence: true
	validates :brand, presence: true
	validates :fabric_origin, presence: true
	validates :made_in, presence: true
	validates :price, presence: true
	validates :denim_weight, presence: true
	validates :color, presence: true
	validates :fit, presence: true, :inclusion => { :in => ["straight", "slim straight", "skinny", "tapered", "slim tapered"] }
	validates :url, presence: true
	validates :photo_url, presence: true

	validates_numericality_of :price, greater_than_or_equal_to: 20, less_than_or_equal_to: 1000
	validates_numericality_of :denim_weight, greater_than_or_equal_to: 4, less_than_or_equal_to: 32
end
