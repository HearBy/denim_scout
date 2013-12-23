namespace :db do
  desc "Fill database with garments"
  task populate: :environment do
    make_garments
  end
end

def make_garments
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
	
	#2 3sixteen ST-100x
	Garment.create!(model: "ST-100x",
				   brand: "3sixteen",
				   color: "Indigo",
				   fabric_origin: "Kuroki Mills",
				   made_in: "USA",
				   denim_weight: 14.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 215.00,
				   url: "http://www.blueowl.us/product/3sixteen-slim-tapered-145oz-selvedge-denim-in-indigo-model-st-100x/")

	#3 Rogue Territory Stanton
	Garment.create!(model: "Stanton 14.5oz",
				   brand: "Rogue Territory",
				   color: "Indigo",
				   fabric_origin: "Nihon Menpu Mills",
				   made_in: "USA",
				   fit: "slim straight",
				   denim_weight: 14.5,
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 210.00,
				   url: "http://www.selfedge.com/shop/index.php?main_page=product_info&cPath=82&products_id=438")

	#4 N&F x Big John x Rockin' Jelly Bean----------------------------
	Garment.create!(model: "N&F x Big John x Rockin' Jelly Bean Collaboration",
				   brand: "Naked & Famous x Big John",
				   color: "Light Indigo",
				   fabric_origin: "Big John RURI",
				   made_in: "Japan",
				   denim_weight: 14.5,
				   fit: "skinny",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 265.00,
				   url: "http://www.blueowl.us/product/naked-and-famous-x-big-john-x-rockin-jelly-bean-super-skinny-guy-145oz-ruri-denim-collaboration/")
				   
	#5 APC New Standard
	Garment.create!(model: "New Standard",
				   brand: "APC",
				     color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=6")

	#6 APC Petit Standard
	Garment.create!(model: "Petit Standard",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   sanforized: true,
				   fit: "slim tapered",
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=665")

	#7 APC Rescue
	Garment.create!(model: "Rescue",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=7")

	#8 APC Petit New Standard
	Garment.create!(model: "Petit New Standard",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=3941")
	
	#9 APC New Cure
	Garment.create!(model: "New Cure",
				   brand: "APC",
				   color: "Indigo",
				   fabric_origin: "China",
				   made_in: "China",
				   denim_weight: 12,
				   fit: "skinny",
				   sanforized: true,
				   stretch: true,
				   selvedge: true,
				   price: 185.00,
				   url: "http://www.contextclothing.com/item.php?id=29")


	#10 Unbranded 101
	Garment.create!(model: "101",
				   brand: "Unbranded",
				   fabric_origin: "Japan",
				   made_in: "China",
				   price: 78.00,
				   denim_weight: 15,
				   color: "Indigo",
				   fit: "skinny",
				   sanforized: false,
				   stretch: true,
				   selvedge: false,
				   url: "http://www.rueandstate.com/collections/unbranded/products/unbranded-101-indigo-skinny-straight-raw-denim")

	#11 Unbranded 201
	Garment.create!(model: "201",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 14.5,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 78.00,
				   url: "http://www.rueandstate.com/collections/unbranded/products/unbranded-201-indigo-tapered")

	#12 Unbranded 301
	Garment.create!(model: "301",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   fit: "straight",
				   denim_weight: 14.5,
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 82.00,
				   url: "http://www.blueowl.us/product/unbranded-straight-leg-145oz-selvedge-in-indigo-model-ub301/")

	#13 Unbranded 121
	Garment.create!(model: "121",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 21,
				   fit: "skinny",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 110.00,
				   url: "http://www.blueowl.us/product/unbranded-skinny-leg-21oz-heavyweight-selvedge-in-indigo-model-ub121/")

	#14 Unbranded 221
	Garment.create!(model: "221",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 21,
				   fit: "tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 110.00,
				   url: "http://www.blueowl.us/product/unbranded-tapered-leg-21oz-heavyweight-selvedge-in-indigo-model-ub221/")

	#15 Unbranded 321
	Garment.create!(model: "321",
				   brand: "Unbranded",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "China",
				   denim_weight: 21,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 110.00,
				   url: "http://www.blueowl.us/product/unbranded-straight-leg-21oz-heavyweight-selvedge-in-indigo-model-ub321/")

	#16 Baldwin Henley
	Garment.create!(model: "The Henley",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Kaihara Mills",
				   made_in: "USA",
				   denim_weight: 12.5,
				   fit: "slim tapered",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 220.00,
				   url: "http://www.blueowl.us/product/baldwin-denim-the-henley-125oz-kaihara-selvedge-denim-in-indigo/")

	#17 Baldwin Reed
	Garment.create!(model: "The Reed",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Kurabo Mills",
				   made_in: "USA",
				   denim_weight: 14,
				   fit: "slim straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 220.00,
				   url: "http://www.blueowl.us/product/baldwin-denim-the-reed-14oz-kurabo-selvedge-denim-in-indigo/")

	#18 Baldwin Samuel
	Garment.create!(model: "The Samuel",
				   brand: "Baldwin",
				   color: "Indigo",
				   fabric_origin: "Kurabo Mills",
				   made_in: "USA",
				   denim_weight: 15,
				   fit: "straight",
				   sanforized: true,
				   stretch: false,
				   selvedge: true,
				   price: 265.00,
				   url: "http://www.blueowl.us/product/baldwin-denim-the-samuel-15oz-kurabo-selvedge-denim-in-indigo/")

	#19 N&F Super Skinny Okayama Spirit
	Garment.create!(model: "Super Skinny Guy Okayama Spirit",
				   brand: "Naked & Famous",
				   color: "Indigo",
				   fabric_origin: "Japan",
				   made_in: "Canada",
				   denim_weight: 16,
				   fit: "skinny",
				   sanforized: false,
				   stretch: false,
				   selvedge: true,
				   price: 200.00,
				   url: "http://www.blueowl.us/product/naked-and-famous-super-skinny-guy-16oz-okayama-spirit-unsanforized-selvedge-denim/")

	#20 PBJ xx-014
	Garment.create!(model: "XX-014",
				   brand: "Pure Blue Japan",
				   color: "Indigo x Purple",
				   fabric_origin: "Japan",
				   made_in: "Japan",
				   denim_weight: 14,
				   fit: "slim tapered",
				   sanforized: false,
				   stretch: false,
				   selvedge: true,
				   price: 315.00,
				   url: "http://blueingreensoho.com/site/index.php?page=shop.product_details&flypage=shop.flypage&product_id=14614&category_id=&manufacturer_id=9&option=com_virtuemart&Itemid=28")


end