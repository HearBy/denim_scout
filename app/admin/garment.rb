ActiveAdmin.register Garment do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end

  menu priority: 1

  permit_params :model, :brand, :fabric_origin, :made_in, :price, :denim_weight,
                :color, :fit, :sanforized, :stretch, :selvedge, :url, :photo_url

  filter :brand, :as => :select
  filter :model, :as => :select
  filter :fabric_origin, :as => :select
  filter :price, :as => :numeric
  filter :denim_weight, :as => :numeric
  filter :color, :as => :check_boxes, collection: Garment.all.map(&:color).uniq
  filter :fit, :as => :check_boxes, collection: Garment.all.map(&:fit).uniq
  
  index do
    column :model, :sortable => :model do |garment|
      link_to garment.model, garment.url, :target => "_blank"
    end
    column :brand
    column :fabric_origin
    column :made_in
    column :price, :sortable => :price do |garment|
      div :class => "price" do
        number_to_currency garment.price
      end
    end
    column :denim_weight
    column :color
    column :fit
    default_actions
  end

end
