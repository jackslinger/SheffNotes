class Note < ActiveRecord::Base
  belongs_to :course
  belongs_to :user

  has_attached_file :document
  validates_attachment :document, content_type: {content_type: ['image/jpeg', 'image/png']}
  validates :user, :course, presence: true
end
