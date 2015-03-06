class CreateRhinoartGalleryGalleries < ActiveRecord::Migration
  def change
    create_table :rhinoart_gallery_galleries, :force => true do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.text :description
      t.string :image
      t.integer :position
      t.boolean :active, default: true
      t.timestamps
    end
  end
end
