require 'rails_helper'

feature 'Course Dashboard' do

  before :each do
    @course = FactoryGirl.create :course
    @user = FactoryGirl.create :user
    @my_note = FactoryGirl.create :note, user: @user
    @other_note = FactoryGirl.create :note, title: 'Lecture 2'
    @user.courses << @course
    login_as @user
  end

  scenario 'Dashboard displays all of the notes from the Course' do
    visit course_path(@course)

    expect(page).to have_link(@my_note.title)
  end

  scenario 'Dashboard displays notes the user has uploaded' do
    visit course_path(@course)

    expect(page).to have_link(@other_note.title)
  end


end
