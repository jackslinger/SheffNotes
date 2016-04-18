class Note < ActiveRecord::Base
  has_attached_file :document
  validates_attachment :document, content_type: {content_type: ['image/jpeg', 'image/png']}
end
