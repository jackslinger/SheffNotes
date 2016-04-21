require 'rails_helper'

describe Note do
  let(:user) { FactoryGirl.create(:user) }
  let(:course) { FactoryGirl.create(:course, users: []) }
  let(:note) { FactoryGirl.build(:note) }

  it 'validates a correct note' do
    expect(note.valid?).to be
  end

  it 'Does not validate a note with no owner' do
    note.user = nil
    expect(note.valid?).to_not be
  end

  it 'Does not validate a note with no course' do
    note.course = nil
    expect(note.valid?).to_not be
  end

  it 'Does not validate a note with no user and no course' do
    note.user = nil
    note.course = nil
    expect(note.valid?).to_not be
  end

  # it 'Does not validate a note with an owner who is not part of the course' do
  #   note.course = course
  #   note.user = user
  #   expect(note.valid?).to_not be
  # end
end
