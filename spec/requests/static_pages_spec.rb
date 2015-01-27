require 'spec_helper'

describe "Static pages" do
	describe "Home page" do
		it "should have the contnt 'Sample App'" do
			visit '/static_pages/home'
			expect(page).to have_content('Sample app')
		end
		it "should have the right title" do
			visit "/static_pages/home"
			expect(page).to have_title("Sample App|Home")
		end
	end

	describe "Help page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_content('Help')
		end
		it "should have the right title" do
			visit "/static_pages/help"
			expect(page).to have_title("Sample App|Help")
		end
	end

	describe "About page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_content('About Us')
		end
		it "should have the right title" do
			visit "/static_pages/about"
			expect(page).to have_title("Sample App|About")
		end
	end

	describe "Contct page" do
		it "should have the contact 'Contact Us'" do
			visit "/static_pages/contact"
			expect(page).to have_content('Contact Us')
		end
		it "sould havet the right title" do
			visit "/static_pages/contact"
			expect(page).to have_title("Sample App|Contact")
		end
	end
end