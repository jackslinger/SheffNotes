require 'rails_helper'

feature 'Courses Page' do

  before :each do
    login_as FactoryGirl.create :user_with_course
  end

  scenario 'Vists the page succesfully' do
    visit root_path
    expect(page).to have_css 'h1', text: 'Courses'
  end

  scenario 'Views courses that they are a part of' do
    #Login is not implemented yet so the system is mocked to represent one user

    visit root_path
    expect(page).to have_link('Natural Langauge Processing')
    expect(page).to_not have_link('Speech Processing')
  end
end
