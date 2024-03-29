require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Ruby On Rails App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector 'title', text: '| Home' }
  end

#   it "should have the h1 'Ruby On Rails App'" do
#    visit root_path
#    page.should have_selector('h1', text: 'Ruby On Rails App')
#  end

#    it "should have the base title" do
#      visit root_path
#      page.should have_selector('title',
#                        text: "Ruby on Rails Tutorial Sample App")
#    end

#    it "should not have a custom page title" do
#      visit root_path
#      page.should_not have_selector('title', text: '| Home')
#    end
#  end

  describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1',    text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

#    it "should have the h1 'Help'" do
#      visit help_path
#      page.should have_selector('h1', text: 'Help')
#    end

#    it "should have the title 'Help'" do
#      visit help_path
#      page.should have_selector('title',
#                        text: "Ruby on Rails Tutorial Sample App | Help")
#    end
#  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About Us') }
    it { should have_selector('title', text: full_title('About Us')) }
  end

#    it "should have the h1 'About Us'" do
#      visit about_path
#      page.should have_selector('h1', text: 'About Us')
#    end

#    it "should have the title 'About Us'" do
#      visit about_path
#      page.should have_selector('title',
#                        text: "Ruby on Rails Tutorial Sample App | About Us")
#    end
#  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1',    text: 'Contact') }
    it { should have_selector('title', text: full_title('Contact')) }
  end

#    it "should have the h1 'Contact Us'" do
#      visit contact_path
#      page.should have_selector('h1', text: 'Contact Us')
#    end

#    it "should have the title 'Contact Us'" do
#      visit contact_path
#      page.should have_selector('title',
#                        text: "Ruby on Rails Tutorial Sample App | Contact Us")
#    end
#  end
end