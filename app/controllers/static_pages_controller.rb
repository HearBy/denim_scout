class StaticPagesController < ApplicationController
  def home
  	jeans = Item.true_waist_search(params[:waist])
  	jeans = jeans.price_search(params[:min_price], params[:max_price])
  	# jeans = jeans.front_rise_search(params[:front_rise])
  	# jeans = jeans.thigh_search(params[:thigh])
  	# jeans = jeans.knee_search(params[:knee])
  	# jeans = jeans.leg_opening_search(params[:leg_opening])
  	jeans = jeans.garment_search('fit', params[:fit])
    jeans = jeans.garment_search('made_in', params[:made_in])
    jeans = jeans.garment_search('fabric_origin', params[:fabric_origin])
    jeans = jeans.garment_search('color', params[:color])
    @jeans = jeans.garment_search('brand', params[:brand])
  end

  def help
  end
end
