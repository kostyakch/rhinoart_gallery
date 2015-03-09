module RhinoartGallery
  module ShrGallery
    class Railtie < Rails::Railtie
      initializer "shr_gallery_railtie.configure_rails_initialization" do |app|
        app.config.assets.precompile += %w( jquery.ui.plupload/plupload.png jquery.ui.plupload/loading.gif rhinoart_gallery/*.js)
      end
    end
  end
end