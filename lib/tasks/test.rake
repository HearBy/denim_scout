namespace :db do
  desc "Fill database with jeans"
  task test_populate: :environment do
    make_test_items
  end
end

def make_test_items
	#1 3sixteen SL-100x
	Garment.create!(model: "SL-100x",
				   brand: "3sixteen",
				   fabric_origin: "Kuroki Mills",
				   made_in: "USA",
				   price: 215.00,
				   denim_weight: 14.5,
				   color: "Indigo",
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   url: "http://www.selfedge.com/shop/index.php?main_page=product_info&cPath=82&products_id=438",)

	#2 Unbranded 101
	Garment.create!(model: "101",
				   brand: "Unbranded",
				   fabric_origin: "Japan",
				   made_in: "China",
				   price: 78.00,
				   denim_weight: 15,
				   color: "Blue",
				   fit: "straight",
				   sanforized: false,
				   stretch: true,
				   selvedge: false,
				   url: "http://www.rueandstate.com/collections/unbranded/products/unbranded-101-indigo-skinny-straight-raw-denim")



	#1 3sixteen SL-100x
	Item.create!(waist: 31,
				   front_rise: 10.8,
				   thigh: 11.2,
				   knee: 8.3,
				   leg_opening: 7.7,
				   inseam: 37,
				   tag_size: 30,
				   garment_id:1,)

	#1 3sixteen SL-100x
	Item.create!(waist: 32,
				   front_rise: 11,
				   thigh: 11.3,
				   knee: 8.4,
				   leg_opening: 7.8,
				   inseam: 37,
				   tag_size: 31,
				   garment_id:1,)

	#1 3sixteen SL-100x
	Item.create!(waist: 33,
				   front_rise: 11.1,
				   thigh: 11.7,
				   knee: 8.7,
				   leg_opening: 7.9,
				   inseam: 37,
				   tag_size: 32,
				   garment_id:1,)



	#2 Unbranded 101
	Item.create!(waist: 31.5,
				   front_rise: 9.4,
				   thigh: 11,
				   knee: 8,
				   leg_opening: 7.25,
				   inseam: 36.5,
				   tag_size: 31,
				   garment_id:2,)

	#2 Unbranded 101
	Item.create!(waist: 32.5,
				   front_rise: 9.5,
				   thigh: 11,
				   knee: 8.25,
				   leg_opening: 7.25,
				   inseam: 36.5,
				   tag_size: 32,
				   garment_id:2,)
end