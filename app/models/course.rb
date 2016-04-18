class Course < ActiveRecord::Base
  has_many :participations
  has_many :users, :through => :participations
  has_many :notes
end
