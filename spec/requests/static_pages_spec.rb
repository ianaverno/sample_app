require 'spec_helper'

describe "Static pages" do

	let(:base_title) {"Sample App"}

  describe "Home page" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit "/static_pages/home"
      expect(page).to have_content("Sample App")
    end

    it "should have the base title" do
    	visit "/static_pages/home"
    	expect(page).to have_title("#{base_title}")
    end

    it "should not have a custom page title" do
      visit "/static_pages/home"
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
  	it "should have the content 'Help'" do
  		visit "/static_pages/help"
  		expect(page).to have_content("Help")
  	end

    it "should have the title 'Help'" do
    	visit "/static_pages/help"
    	expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
  	it "should contain the words: 'About Us'" do
	  	visit "/static_pages/about"
	  	expect(page).to have_content("About Us")
	  end

    it "should have the title 'About'" do
    	visit "/static_pages/about"
    	expect(page).to have_title("#{base_title} | About")
    end
	end

  describe "Contacts page" do
  	it "should contain the words: 'Contacts'" do
	  	visit "/static_pages/contacts"
	  	expect(page).to have_content("Contacts")
	  end

    it "should have the title 'Contacts'" do
    	visit "/static_pages/contacts"
    	expect(page).to have_title("#{base_title} | Contacts")
    end
	end





end
