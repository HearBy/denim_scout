require 'spec_helper'

describe Item do

	before do 
		@item = create(:item)
	end

	subject { @item }

	it { should respond_to(:waist) }
	it { should respond_to(:front_rise) }
	it { should respond_to(:thigh) }
	it { should respond_to(:knee) }
	it { should respond_to(:leg_opening) }
	it { should respond_to(:inseam) }
	it { should respond_to(:tag_size) }
	it { should respond_to(:garment_id) }

	it { should validate_numericality_of(:waist).is_greater_than_or_equal_to(26).is_less_than_or_equal_to(42) }
	it { should validate_numericality_of(:front_rise).is_greater_than_or_equal_to(8).is_less_than_or_equal_to(14) }
	it { should validate_numericality_of(:thigh).is_greater_than_or_equal_to(9).is_less_than_or_equal_to(15) }
	it { should validate_numericality_of(:knee).is_greater_than_or_equal_to(6).is_less_than_or_equal_to(12) }
	it { should validate_numericality_of(:leg_opening).is_greater_than_or_equal_to(5).is_less_than_or_equal_to(12) }
	it { should validate_numericality_of(:inseam).is_greater_than_or_equal_to(28).is_less_than_or_equal_to(40) }
	it { should validate_numericality_of(:tag_size).is_greater_than_or_equal_to(25).is_less_than_or_equal_to(43) }

	describe "true_waist_search" do
		before do
			@small_jean = create(:item, waist: 32)
			@large_jean = create(:item, waist: 33)
		end

		it "should find the jean size I'm looking for" do
			Item.true_waist_search(32).should include(@small_jean)
			Item.true_waist_search(32).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.true_waist_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with half inch jeans in either direction" do
			before do
				@half_up = create(:item, waist: 32.5)
				@half_down = create(:item, waist: 31.5) 
			end

			it "should find the jean size I'm looking for" do
				Item.true_waist_search(32).should include(@small_jean && @half_down && @half_up)
				Item.true_waist_search(32).should_not include(@large_jean)
			end
		end
	end

	describe "price_search" do
		before do
			@cheap_garment = create(:garment, price: 100)
			@expensive_garment = create(:garment, price: 200)
			@cheap_jean = create(:item, garment: @cheap_garment)
			@expensive_jean = create(:item, garment: @expensive_garment)
		end

		it "should find the jean with price I'm looking for" do
			Item.price_search(75, 125).should include(@cheap_jean)
			Item.price_search(75, 125).should_not include(@expensive_jean)
		end

		it "should give me all jeans with no params[:min_price] or params[:max_price]" do
			Item.price_search(nil, nil).should include(@cheap_jean && @expensive_jean)
		end
	end

	describe "fit_search" do
		before do
			@skinny_garment = 		create(:garment, fit: "skinny")
			@slim_straight_garment =  create(:garment, fit: "slim straight")
			@skinny_jean = create(:item, garment: @skinny_garment)
			@slim_straight_jean = create(:item, garment: @slim_straight_garment)
		end

		it "should find the jean with the fit I'm looking for" do
			Item.fit_search("skinny").should include(@skinny_jean)
			Item.fit_search("skinny").should_not include(@slim_straight_jean)
			Item.fit_search("slim straight").should include(@slim_straight_jean)
			Item.fit_search("slim straight").should_not include(@skinny_jean)
		end

		it "should be able to find more than one fit type" do
			Item.fit_search(["skinny", "slim straight"]).should include(@skinny_jean && @slim_straight_jean)
		end

		it "should give me all jeans with no params[:fit]" do
			Item.fit_search(nil).should include(@skinny_jean && @slim_straight_jean)
		end
	end

	describe "front_rise_search" do
		before do
			@small_jean = create(:item, front_rise: 10)
			@large_jean = create(:item, front_rise: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.front_rise_search(10).should include(@small_jean)
			Item.front_rise_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.front_rise_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with half inch jeans in either direction" do
			before do
				@half_up = create(:item, front_rise: 10.5)
				@half_down = create(:item, front_rise: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.front_rise_search(10).should include(@small_jean && @half_down && @half_up)
				Item.front_rise_search(10).should_not include(@large_jean)
			end
		end
	end

	describe "thigh_search" do
		before do
			@small_jean = create(:item, thigh: 10)
			@large_jean = create(:item, thigh: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.thigh_search(10).should include(@small_jean)
			Item.thigh_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.thigh_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with half inch jeans in either direction" do
			before do
				@half_up = create(:item, thigh: 10.5)
				@half_down = create(:item, thigh: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.thigh_search(10).should include(@small_jean && @half_down && @half_up)
				Item.thigh_search(10).should_not include(@large_jean)
			end
		end
	end

	describe "knee_search" do
		before do
			@small_jean = create(:item, knee: 10)
			@large_jean = create(:item, knee: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.knee_search(10).should include(@small_jean)
			Item.knee_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.knee_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with half inch jeans in either direction" do
			before do
				@half_up = create(:item, knee: 10.5)
				@half_down = create(:item, knee: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.knee_search(10).should include(@small_jean && @half_down && @half_up)
				Item.knee_search(10).should_not include(@large_jean)
			end
		end
	end

	describe "leg_opening_search" do
		before do
			@small_jean = create(:item, leg_opening: 10)
			@large_jean = create(:item, leg_opening: 11)
		end

		it "should find the jean size I'm looking for" do
			Item.leg_opening_search(10).should include(@small_jean)
			Item.leg_opening_search(10).should_not include(@large_jean)
		end

		it "should give me all jeans with no params[:waist]" do
			Item.leg_opening_search(nil).should include(@small_jean && @large_jean)
		end

		describe "with half inch jeans in either direction" do
			before do
				@half_up = create(:item, leg_opening: 10.5)
				@half_down = create(:item, leg_opening: 11)
			end

			it "should find the jean size I'm looking for" do
				Item.leg_opening_search(10).should include(@small_jean && @half_down && @half_up)
				Item.leg_opening_search(10).should_not include(@large_jean)
			end
		end
	end
end