require 'haml-rails'
require 'mini_magick'
require 'carrierwave'
require 'bootstrap-sass'
require 'jquery-rails'
require 'plupload-rails'
require 'jquery-ui-rails'
require 'lodash-rails'
require 'friendly_id'
require 'acts_as_list'
require 'rhinoart'

module RhinoartGallery
  class Engine < ::Rails::Engine
    isolate_namespace RhinoartGallery

    initializer "rhinoart_gallery.add_menu_item" do |app|

      Rhinoart::Menu::ContentMenu.add_item({
        icon: 'fa-icon-picture',
        link: proc{ rhinoart_gallery.galleries_path },
        label: 'rhinoart_gallery._GALLERY',
        notification: ->{ RhinoartGallery::Gallery.count }
      })

    end

  end
end
