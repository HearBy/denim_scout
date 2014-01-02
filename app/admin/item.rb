ActiveAdmin.register Item do

  
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

  menu priority: 2

  permit_params :tag_size, :waist, :front_rise, :thigh, :knee, :leg_opening,
                :inseam, :garment_id
  
  form do |f|
    f.inputs 'Garment' do
      f.input :garment, :as => :select, :member_label => :model
    end
    f.inputs 'Size Information' do
      f.input :tag_size
      f.input :waist
      f.input :front_rise
      f.input :thigh
      f.input :knee
      f.input :leg_opening
      f.input :inseam
    end
    f.actions
  end

  controller do
    def scoped_collection
      resource_class.includes(:garment) # prevents N+1 queries to your database
    end
  end
  
  filter :garment_brand, :as => :select, collection: Garment.all.map(&:brand).uniq
  filter :garment_model, :as => :select, collection: Garment.all.map(&:model).uniq
  filter :tag_size

  index do
    column "Brand", sortable: 'garments.brand' do |item|
      item.garment.brand
    end
    column "Model", sortable: 'garments.model' do |item|
      item.garment.model
    end
    column :tag_size do |item|
      link_to item.tag_size, [:admin, item]
    end
    column "True Waist", :waist
    default_actions
  end

  show do |item|
    attributes_table do
      row :id
      row "Brand" do |item|
        item.garment.brand
      end
      row "Model" do |item|
        item.garment.model
      end
      row :tag_size
      row :waist
      row :front_rise
      row :thigh
      row :knee
      row :leg_opening
      row :inseam
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
