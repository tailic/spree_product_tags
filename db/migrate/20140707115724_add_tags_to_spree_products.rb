class AddTagsToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :tags, :string, array: true, default: []
    add_index  :spree_products, :tags, using: 'gin'
  end
end
