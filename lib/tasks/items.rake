namespace :db do
  desc "Fill database with items"
  task populate: :environment do
    make_items
  end
end

def make_items
#1 3sixteen SL-100x
	
	#size 28
		Item.create!(garment_id:1,
					 tag_size: 28,
				   waist: 29,
				   front_rise: 10.3,
				   thigh: 10.7,
				   knee: 8.2,
				   leg_opening: 7.3,
				   inseam: 37)

	#size 29
		Item.create!(garment_id:1,
					tag_size: 29,
				   waist: 30,
				   front_rise: 10.4,
				   thigh: 11.0,
				   knee: 8.3,
				   leg_opening: 7.5,
					inseam: 37)

	#size 30
		Item.create!(waist: 31,
				   front_rise: 10.8,
				   thigh: 11.2,
				   knee: 8.3,
				   leg_opening: 7.7,
				   inseam: 37,
				   tag_size: 30,
				   garment_id:1,)

	#size 31
		Item.create!(garment_id:1,
					tag_size: 31,
				   waist: 32,
				   front_rise: 11,
				   thigh: 11.3,
				   knee: 8.4,
				   leg_opening: 7.8,
					inseam: 37)

	#size 32
		Item.create!(garment_id:1,
					tag_size: 32,
				   waist: 33,
				   front_rise: 11.1,
				   thigh: 11.7,
				   knee: 8.7,
				   leg_opening: 7.9,
					inseam: 37)

	#size 33
		Item.create!(garment_id:1,
					tag_size: 33,
				   waist: 34,
				   front_rise: 11.3,
				   thigh: 12,
				   knee: 8.8,
				   leg_opening: 8,
					inseam: 37)

	#size 34
		Item.create!(garment_id:1,
					tag_size: 34,
				   waist: 35,
				   front_rise: 11.7,
				   thigh: 12.3,
				   knee: 9.1,
				   leg_opening: 8.2,
					inseam: 37)

	#size 36
		Item.create!(garment_id:1,
					tag_size: 36,
				   waist: 37,
				   front_rise: 12.1,
				   thigh: 12.7,
				   knee: 9.5,
				   leg_opening: 8.6,
					inseam: 37)

	#size 38
		Item.create!(garment_id:1,
					tag_size: 38,
				   waist: 39,
				   front_rise: 12.3,
				   thigh: 13,
				   knee: 9.5,
				   leg_opening: 9,
					inseam: 37)

	#size 40
		Item.create!(garment_id:1,
					tag_size: 40,
				   waist: 41,
				   front_rise: 12.5,
				   thigh: 14,
				   knee: 9.8,
				   leg_opening: 9.1,
					inseam: 37)

#2 3sixteen ST-100x

	#size 28
		Item.create!(garment_id: 2,
					tag_size: 28,
					waist: 28.5,
					front_rise: 10.15,
					thigh: 10.15,
					knee: 7.25,
					leg_opening: 7,
					inseam: 37)

	#size 29
		Item.create!(garment_id: 2,
					tag_size: 29,
					waist: 29.5,
					front_rise: 10.25,
					thigh: 10.5,
					knee: 7.5,
					leg_opening: 7.15,
					inseam: 37)

	#size 30
		Item.create!(garment_id: 2,
					tag_size: 30,
					waist: 30.5,
					front_rise: 10.5,
					thigh: 11,
					knee: 7.75,
					leg_opening: 7.25,
					inseam: 37)

	#size 31
		Item.create!(garment_id: 2,
					tag_size: 31,
					waist: 31.5,
					front_rise: 10.75,
					thigh: 11.25,
					knee: 8,
					leg_opening: 7.4,
					inseam: 37)

	#size 32
		Item.create!(garment_id: 2,
					tag_size: 32,
					waist: 32.5,
					front_rise: 10.75,
					thigh: 11.5,
					knee: 8,
					leg_opening: 7.5,
					inseam: 37)

	#size 33
		Item.create!(garment_id: 2,
					tag_size: 33,
					waist: 33.5,
					front_rise: 10.75,
					thigh: 11.5,
					knee: 8,
					leg_opening: 7.65,
					inseam: 37)

	#size 34
		Item.create!(garment_id: 2,
					tag_size: 34,
					waist: 34.5,
					front_rise: 10.75,
					thigh: 12,
					knee: 8.25,
					leg_opening: 7.75,
					inseam: 37)

	#size 36
		Item.create!(garment_id: 2,
					tag_size: 36,
					waist: 36.75,
					front_rise: 11,
					thigh: 12.5,
					knee: 8.7,
					leg_opening: 8,
					inseam: 37)

#3 Rogue Territory Stanton
	#size 26
		Item.create!(garment_id: 3,
					tag_size: 26,
				   waist: 28.5,
				   front_rise: 9.75,
				   thigh: 10.5,
				   knee: 7,
				   leg_opening: 6.5,
				   inseam: 36)

	#size 27
		Item.create!(garment_id: 3,
					tag_size: 27,
				   waist: 29.5,
				   front_rise: 9.75,
				   thigh: 11,
				   knee: 7.25,
				   leg_opening: 6.75,
				   inseam: 36)

	#size 28
		Item.create!(garment_id: 3,
					tag_size: 28,
				   waist: 30.5,
				   front_rise: 10,
				   thigh: 11.25,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 36)

	#size 29
		Item.create!(garment_id: 3,
					tag_size: 29,
				   waist: 31.5,
				   front_rise: 10.25,
				   thigh: 11.5,
				   knee: 8,
				   leg_opening: 7.5,
				   inseam: 36)

	#size 30
		Item.create!(garment_id: 3,
					tag_size: 30,
				   waist: 32.5,
				   front_rise: 10.25,
				   thigh: 11.75,
				   knee: 8.25,
				   leg_opening: 7.75,
				   inseam: 36)

	#size 31
		Item.create!(garment_id: 3,
					tag_size: 31,
				   waist: 33.5,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 8.5,
				   leg_opening: 8,
				   inseam: 36)

	#size 32
		Item.create!(garment_id: 3,
					tag_size: 32,
				   waist: 34.5,
				   front_rise: 10.5,
				   thigh: 12.5,
				   knee: 8.75,
				   leg_opening: 8.25,
				   inseam: 36)

	#size 33
		Item.create!(garment_id: 3,
					tag_size: 33,
				   waist: 35.5,
				   front_rise: 10.75,
				   thigh: 12.75,
				   knee: 9,
				   leg_opening: 8.5,
				   inseam: 36)

	#size 34
		Item.create!(garment_id: 3,
					tag_size: 34,
				   waist: 36.5,
				   front_rise: 11,
				   thigh: 13,
				   knee: 9.25,
				   leg_opening: 8.75,
				   inseam: 36)

	#size 36
		Item.create!(garment_id: 3,
					tag_size: 36,
				   waist: 38.5,
				   front_rise: 11.25,
				   thigh: 13.5,
				   knee: 9.75,
				   leg_opening: 9,
				   inseam: 36)

	#size 38
		Item.create!(garment_id: 3,
					tag_size: 38,
				   waist: 40.5,
				   front_rise: 11.25,
				   thigh: 15,
				   knee: 10,
				   leg_opening: 9.25,
				   inseam: 36)

#4 N&F x Big John x Rockin' Jelly Bean
	#size 28
		Item.create!(garment_id: 4,
					tag_size: 28,
				   waist: 28.5,
				   front_rise: 9.25,
				   thigh: 9.75,
				   knee: 7.5,
				   leg_opening: 6,
				   inseam: 34)

	#size 29
		Item.create!(garment_id: 4,
					tag_size: 29,
				   waist: 29.5,
				   front_rise: 9.25,
				   thigh: 10.25,
				   knee: 7.75,
				   leg_opening: 6.5,
				   inseam: 34)

	#size 30
		Item.create!(garment_id: 4,
					tag_size: 30,
				   waist: 30.5,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 8,
				   leg_opening: 6.5,
				   inseam: 34)

	#size 31
		Item.create!(garment_id: 4,
					tag_size: 31,
				   waist: 31.5,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 8.15,
				   leg_opening: 6.75,
				   inseam: 34)

	#size 32
		Item.create!(garment_id: 4,
					tag_size: 32,
				   waist: 32.5,
				   front_rise: 9.75,
				   thigh: 10.75,
				   knee: 8.25,
				   leg_opening: 7,
				   inseam: 34)

	#size 33
		Item.create!(garment_id: 4,
					tag_size: 33,
				   waist: 33.5,
				   front_rise: 9.75,
				   thigh: 11.15,
				   knee: 8.5,
				   leg_opening: 7,
				   inseam: 34)

	#size 34
		Item.create!(garment_id: 4,
					tag_size: 34,
				   waist: 34.5,
				   front_rise: 9.75,
				   thigh: 11.5,
				   knee: 8.75,
				   leg_opening: 7.25,
				   inseam: 34)

	#size 36
		Item.create!(garment_id: 4,
					tag_size: 36,
				   waist: 36,
				   front_rise: 10,
				   thigh: 12,
				   knee: 9.25,
				   leg_opening: 7.75,
				   inseam: 34)

#5 APC New Standard
	#size 25
		Item.create!(garment_id: 5,
					tag_size: 25,
				   waist: 26,
				   front_rise: 9.5,
				   thigh: 9.5,
				   knee: 7,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 26
		Item.create!(garment_id: 5,
					tag_size: 26,
				   waist: 27,
				   front_rise: 10,
				   thigh: 10,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 27
		Item.create!(garment_id: 5,
					tag_size: 27,
				   waist: 28,
				   front_rise: 10,
				   thigh: 10,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 28
		Item.create!(garment_id: 5,
					tag_size: 28,
				   waist: 29,
				   front_rise: 9.5,
				   thigh: 10,
				   knee: 7.5,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 29
		Item.create!(garment_id: 5,
					tag_size: 29,
				   waist: 30,
				   front_rise: 10,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7.5,
				   inseam: 33.5)

	#size 30
		Item.create!(garment_id: 5,
					tag_size: 30,
				   waist: 31,
				   front_rise: 10,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7.5,
				   inseam: 34.5)

	#size 31
		Item.create!(garment_id: 5,
					tag_size: 31,
				   waist: 32,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.5,
				   leg_opening: 8,
				   inseam: 35.5)

	#size 32
		Item.create!(garment_id: 5,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8.5,
				   leg_opening: 8,
				   inseam: 35.5)

	#size 33
		Item.create!(garment_id: 5,
					 tag_size: 33,
				   waist: 34,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 9,
				   leg_opening: 8.5,
				   inseam: 36)

	#size 34
		Item.create!(garment_id: 5,
					tag_size: 34,
				   waist: 35,
				   front_rise: 10.5,
				   thigh: 12,
				   knee: 9,
				   leg_opening: 8.5,
				   inseam: 36)

	#size 35
		Item.create!(garment_id: 5,
					tag_size: 35,
				   waist: 36,
				   front_rise: 11,
				   thigh: 12.5,
				   knee: 9.5,
				   leg_opening: 9,
				   inseam: 36)

	#size 36
		Item.create!(garment_id: 5,
					tag_size: 36,
				   waist: 37,
				   front_rise: 11,
				   thigh: 12.5,
				   knee: 9.5,
				   leg_opening: 9,
				   inseam: 36.5)

#6 APC Petit Standard
	#size 25
		Item.create!(garment_id: 6,
					tag_size: 25,
				   waist: 26,
				   front_rise: 9,
				   thigh: 9.5,
				   knee: 6.5,
				   leg_opening: 6,
				   inseam: 33)

	#size 26
		Item.create!(garment_id: 6,
					tag_size: 26,
				   waist: 27,
				   front_rise: 9,
				   thigh: 10,
				   knee: 6.5,
				   leg_opening: 6,
				   inseam: 33)

	#size 27
		Item.create!(garment_id: 6,
					tag_size: 27,
				   waist: 28,
				   front_rise: 9,
				   thigh: 10,
				   knee: 7,
				   leg_opening: 6,
				   inseam: 33)

	#size 28
		Item.create!(garment_id: 6,
					tag_size: 28,
				   waist: 29,
				   front_rise: 9,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 33)

	#size 29
		Item.create!(garment_id: 6,
					tag_size: 29,
				   waist: 30,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 30
		Item.create!(garment_id: 6,
					tag_size: 30,
				   waist: 31,
				   front_rise: 9.5,
				   thigh: 10.5,
				   knee: 7.5,
				   leg_opening: 6.5,
				   inseam: 33.5)

	#size 31
		Item.create!(garment_id: 6,
					tag_size: 31,
				   waist: 32,
				   front_rise: 9.5,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7,
				   inseam: 33.5)

	#size 32
		Item.create!(garment_id: 6,
					tag_size: 32,
				   waist: 33,
				   front_rise: 10,
				   thigh: 11.5,
				   knee: 8,
				   leg_opening: 7,
				   inseam: 34)

	#size 33
		Item.create!(garment_id: 6,
					tag_size: 33,
				   waist: 34,
				   front_rise: 10,
				   thigh: 12,
				   knee: 8.5,
				   leg_opening: 7.5,
				   inseam: 34)

end

	# #size 25
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 26
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 27
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 28
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 29
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 30
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 31
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 32
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 33
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 34
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 36
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 38
	# 	Item.create!(garment_id: ,
	# 				)

	# #size 40
	# 	Item.create!(garment_id: ,
	# 				)


