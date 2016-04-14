require 'rails_helper'

feature 'Course Dashboard' do

  before :each do
    @user = FactoryGirl.create :user_with_course
    FactoryGirl.create(:course, title: 'Speech Processing')
    login_as @user
  end

  scenario 'Dashboar displays all of the notes from the Course' do
    visit '/courses/1'
    courses = Course.all

    courses.each do |course|
      expect(page).to have_link("#{course.title}")
    end
  end

  scenario 'Dashboard displays notes the user has uploaded' do
    visit '/courses/1'
    courses = Course.joins(:participations).where(participations: {user_id: 1})

    courses.each do |course|
      expect(page).to have_link("#{course.title}")
    end
  end


end
