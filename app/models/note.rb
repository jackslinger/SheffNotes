class Note < ActiveRecord::Base
  belongs_to :course
  belongs_to :user

  has_attached_file :document, styles: { large: "1024x1024>", thumb: "128x128>" }, :default_url => "/images/missing/notes/:style/missing.png", :preserve_files => false
  validates_attachment :document, content_type: {content_type: ['image/jpeg', 'image/png']}
  # validates :user, :course, presence: true
  validates :course, presence: true
end
