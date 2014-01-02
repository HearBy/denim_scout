require 'spec_helper'
include Devise::TestHelpers

describe "Authentication" do
  
  subject { page }

  describe "admin login page" do
  	before { visit admin_root_path }

  	it { should have_selector('h2', text: 'Rawr Denim Scout Login') }
  end

  # describe "login" do
  # 	before do
  # 		@admin_user = create(:admin_user)
  # 		sign_in @admin_user
  # 	end

  # 	it { should have_title("Sign in") }
  # end
end