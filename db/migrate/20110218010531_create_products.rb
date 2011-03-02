class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products, :primary_key => :id, :options => "auto_increment = 1" do |t|

      t.integer :id
      t.text :title
      t.text :description
      t.text :image_url, :null => false
      t.float :price
      t.integer :projection
      t.float :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
