require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the h1 'home'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text=>'home')
    end

     it "should have the title 'home'" do
     visit '/static_pages/home'
     page.should have_selector('title', 
     :text=>"Ruby on rails tutorial sample App | home")
     end
  end


  describe "Help Page" do
    it "should have the content 'help'" do
      visit '/static_pages/help'
      page.should have_content('help')            
    end
     it "should have the h1 'help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text=>'help')
    end

     it "should have the title 'help'" do
     visit '/static_pages/help'
     page.should have_selector('title', 
     :text=>"Ruby on rails tutorial sample App | help")
     end
  end


  describe "About Page" do
    it "should have the content 'about'" do
	visit '/static_pages/about'
 	page.should have_content('about')
   end
   it "should have the h1 'about'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text=>'about')
    end

     it "should have the title 'Ruby on rails tutorial sample App | about'" do
     visit '/static_pages/about'
     page.should have_selector('title', 
     :text=>"Ruby on rails tutorial sample App | about")
     end
 end
end
