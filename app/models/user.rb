class User < ActiveRecord::Base
  include EpiCas::DeviseHelper
  has_many :participations
  has_many :courses, :through => :participations
  has_many :notes
  end
