RhinoartGallery::Engine.routes.draw do

  scope "(:locale)", locale: /ru|en/ do

    resources :galleries do
      get 'load_images' => 'galleries#load_images', :on => :member
      resources :images
    end

  end

end
