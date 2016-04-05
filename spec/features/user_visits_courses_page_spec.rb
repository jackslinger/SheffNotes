require 'rails_helper'

feature 'Courses Page' do
  scenario 'Vists the page succesfully' do
    visit root_path
    expect(page).to have_css 'h1', text: 'Courses'
  end

  scenario 'Views courses that they are a part of' do
    #Login is not implemented yet so the system is mocked to represent one user

    visit root_path
    expect(page).to have_link('COM4513 Natural Langauge Processing')
    expect(page).to have_link('COM4519 Cloud Computing')
  end
end
