require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Perforchestor'" do
      visit '/static_pages/home'
      page.should have_content('Perforchestor')
    end
  end
  
  describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
    
  describe "About page" do
    
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
    page.should have_content('About Us')
    end
  end
  
  describe "Contact Us" do
    
    it "should have the content 'Contact Us'" do
      visit '/static_pages/contact'
    page.should have_content('Contact Us')
    end
  end
  
  it "should have the right title" do
    visit '/static_pages/home'
    page.should have_selector('title',
                      :text => "Perforchestor | Home")
  end
  
  it "should have the right title" do
    visit '/static_pages/about'
    page.should have_selector('title',
                      :text => "Perforchestor | About Us")
  end
  
  it "should have the right title" do
    visit '/static_pages/help'
    page.should have_selector('title',
                      :text => "Perforchestor | Help")
  end
  
  
  it "should have the right title" do
    visit '/static_pages/contact'
    page.should have_selector('title',
                      :text => "Perforchestor | Contact")
  end
end