require 'spec_helper'

describe StaticPagesController do
	describe "#home" do
		describe "true_waist_search" do
			before do
				@small_jean = create(:item, waist: 32)
				@large_jean = create(:item, waist: 33)
			end

			it "should only return locations with microposts" do
				get :home, { :waist => 32 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "price_search" do
			before do
				@cheap_garment = 	 create(:garment, price: 100)
				@expensive_garment = create(:garment, price: 200)
				@cheap_jean = 		 create(:item, garment: @cheap_garment)
				@expensive_jean = 	 create(:item, garment: @expensive_garment)
			end

			it "should only return locations with microposts" do
				get :home, { :min_price => 75, :max_price => 150 }
				assigns(:jeans).map(&:id).should == [@cheap_jean.id]
			end
		end

		describe "fit_search" do
			before do
				@skinny_garment = 		 create(:garment, fit: "skinny")
				@slim_straight_garment = create(:garment, fit: "slim straight")
				@skinny_jean = 			 create(:item, garment: @skinny_garment)
				@slim_straight_jean = 	 create(:item, garment: @slim_straight_garment)
			end

			it "should only return locations with microposts" do
				get :home, { :fit => "skinny" }
				assigns(:jeans).map(&:id).should == [@skinny_jean.id]
			end
		end

		describe "front_rise_search" do
			before do
				@small_jean = create(:item, front_rise: 10)
				@large_jean = create(:item, front_rise: 11)
			end

			it "should only return locations with microposts" do
				get :home, { :front_rise => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "thigh_search" do
			before do
				@small_jean = create(:item, thigh: 10)
				@large_jean = create(:item, thigh: 11)
			end

			it "should only return locations with microposts" do
				get :home, { :thigh => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "knee_search" do
			before do
				@small_jean = create(:item, knee: 10)
				@large_jean = create(:item, knee: 11)
			end

			it "should only return locations with microposts" do
				get :home, { :knee => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end

		describe "leg_opening_search" do
			before do
				@small_jean = create(:item, leg_opening: 10)
				@large_jean = create(:item, leg_opening: 11)
			end

			it "should only return locations with microposts" do
				get :home, { :leg_opening => 10 }
				assigns(:jeans).map(&:id).should == [@small_jean.id]
			end
		end
	end
end