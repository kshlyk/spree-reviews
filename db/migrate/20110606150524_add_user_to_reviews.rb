class AddUserToReviews < ActiveRecord::Migration
  def self.up
    add_column :spree_reviews, :user_id, :integer, :null => true
  end

  def self.down
    remove_column :spree_reviews, :user_id
  end
end
