require 'rails_helper'

feature 'User visits Courses page' do
  scenario 'successfully' do
    visit root_path
    expect(page).to have_css 'h1', text: 'Courses'
  end
end
