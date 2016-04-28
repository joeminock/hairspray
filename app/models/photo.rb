class Photo < ActiveRecord::Base
  belongs_to :stylist

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :image, presence: true,
  						content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
  						size: { in: 0..6144.kilobytes }	
  									# content_type: /\Aimage\/.*\Z/
end
