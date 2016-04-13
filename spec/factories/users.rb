FactoryGirl.define do
  factory :user do
    email "amillward1@sheffield.ac.uk"
    username "aca12am"

    factory :user_with_course do
      after(:create) do |user|
        create(:course, users: [user])
      end
    end
  end
end
