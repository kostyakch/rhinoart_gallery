module RhinoartGallery
  class Gallery < ActiveRecord::Base
    mount_uploader :image, RhinoartGallery::ImageUploader

    extend FriendlyId
    friendly_id :slug, use: [:slugged, :finders]

    acts_as_list
    has_paper_trail

    default_scope { order 'position' }

    has_many :images, class_name: 'RhinoartGallery::Image', dependent: :destroy

    validates :name, :length => { :in => 2..150 }
    validates :slug, :length => { :in => 2..150 }, :uniqueness => true
    validates :image, :presence => true

  end
end
