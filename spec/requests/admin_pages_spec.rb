require 'spec_helper'

describe "Admin home page" do 
	it "should have the content 'Admin'" do 
		visit '/admin' 
		expect(page).to have_content('Site Admin') 
	end
end