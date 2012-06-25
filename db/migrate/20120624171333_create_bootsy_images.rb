class CreateBootsyImages < ActiveRecord::Migration
  def change
    create_table :bootsy_images do |t|
      t.string :caption
      t.string :image_file
      t.references :bootsy_imageable, :polymorphic => true

      t.timestamps
    end
  end
end