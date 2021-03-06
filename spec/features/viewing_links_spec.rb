require 'spec_helper'
require './data_mapper_setup'

feature "Viewing links" do

  scenario "I can see existing links on the links page" do
    Link.create(url: "http://www.makersacademy.com", title: "Makers Academy")

    visit "/links"
    expect(page.status_code).to eq 200
    within "ul#links" do
      expect(page).to have_content "Makers Academy"
    end
  end

  scenario "I can see existing links on the links page" do
    Link.create(url: "http://www.google.com", title: "google")

    visit "/links"
    expect(page.status_code).to eq 200
    within "ul#links" do
      expect(page).to have_content "google"
    end
  end
end