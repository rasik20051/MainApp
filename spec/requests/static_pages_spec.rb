require 'spec_helper'

describe "Static pages" do
	describe "Home Page" do
  it "should contain 'Sample App'" do
  	visit '/static_pages/home' 
  	page.should have_selector('h1',:text =>'Sample App')
  end

  it "should contain base title " do
	visit '/static_pages/home' 
  	page.should have_selector('title',:text =>"My Application")
  	end

  	it "should not have custom page title" do
  		visit '/static_pages/home' 
  		page.should_not have_selector('title',:text =>'| Home')

  end
end


describe "Help Page" do
  it "should contain 'Help'" do
  	visit '/static_pages/help' 
  	page.should have_selector('h1',:text =>'Help')
  end
  it " should contain Help " do
  	visit '/static_pages/help' 
page.should have_selector('title',:text =>"My Application | Help")
  	end
  end

  describe "About Us Page" do
  it "should contain 'About Us'" do
  	visit '/static_pages/about' 
  	page.should have_selector('h1',:text =>'About Us')
  end

  it "should contain 'About Us'" do
	visit '/static_pages/about' 
  	page.should have_selector('title',:text =>"My Application | About Us")
  	
    end
  end


  describe "Contact Us Page" do
  it "should contain 'Contact Us'" do
  	visit '/static_pages/contact' 
  	page.should have_selector('h1',:text =>'Contact Us')
  end
it "should contain 'Contact Us'" do
	visit '/static_pages/contact' 
  	page.should have_selector('title',:text =>"My Application | Contact Us")
  	
  end 
 end
end