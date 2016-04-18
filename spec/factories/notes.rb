FactoryGirl.define do
  factory :note do
    title "Lecture 1"
    user
    course
  end
end
