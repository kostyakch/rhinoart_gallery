module RhinoartGallery
  class Image < ActiveRecord::Base
    mount_uploader :image, RhinoartGallery::ImageUploader

    acts_as_list scope: :gallery_id

    default_scope { order 'position' }

    belongs_to :gallery, class_name: 'RhinoartGallery::Gallery'
    validates :name, :length => { :in => 2..150 }
    validates :image, :gallery_id, presence: true
  end
end
