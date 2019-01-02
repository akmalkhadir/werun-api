class AddDetailsToRunners < ActiveRecord::Migration[5.2]
  def change
    add_column :runners, :image_url, :string
    add_column :runners, :city, :string
    add_column :runners, :bio, :string
  end
end
