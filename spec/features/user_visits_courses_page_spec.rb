require 'rails_helper'

feature 'Courses Page' do

  before :each do
    @not_part_of_course = FactoryGirl.create(:course, title: 'Speech Processing')
    @part_of_course = FactoryGirl.create(:course, title: 'Natural Langauge Processing')
    @user = FactoryGirl.create :user
    @user.courses << @part_of_course
    login_as @user
  end

  scenario 'Vists the page succesfully' do
    visit root_path
    expect(page).to have_css 'h1', text: 'My Courses'
  end

  scenario 'Views all courses' do
    visit root_path

    expect(page).to have_link(@part_of_course.title)
    expect(page).to have_link(@not_part_of_course.title)
  end

end
