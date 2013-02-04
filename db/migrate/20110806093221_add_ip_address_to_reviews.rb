class AddIpAddressToReviews < ActiveRecord::Migration
  def self.up
    add_column :spree_reviews, :ip_address, :string
  end

  def self.down
    remove_column :spree_reviews, :ip_address
  end
end
