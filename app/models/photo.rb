class Photo < ApplicationRecord
  has_attached_file :image, styles: { medium: '300x300>', thumb: '200x200#' }

  validates_attachment :image, presence: true,
                               content_type: { content_type: %r{\Aimage\/.*\z} }
end
