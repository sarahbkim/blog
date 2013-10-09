require 'spec_helper'


describe "Home page" do 
	it "should have the content 'About'" do 
		visit '/' 
		expect(page).to have_content('About') 
	end
end

describe "Experiences page" do 
	it "should have content 'Experiences'" do 
		visit '/experience' 
		expect(page).to have_content('Experiences')
	end
end


describe 'Resources page' do 
	it "should have content 'Resources'" do 
		visit '/resources' 
		expect(page).to have_content('Resources')
	end
end

describe 'Blog' do 
	it "should have content 'Blog'" do 
		visit '/blog' 
		expect(page).to have_content('Blog')
	end
end