class CreateFeedbackReviews < ActiveRecord::Migration
  def self.up
    create_table :spree_feedback_reviews do |t|
      t.integer :user_id
      t.integer :review_id, :null => false
      t.integer :rating,    :default => 0
      t.text    :comment
      t.timestamps
    end
    add_index :spree_feedback_reviews, :review_id
    add_index :spree_feedback_reviews, :user_id
  end

  def self.down
    drop_table :spree_feedback_reviews
  end
end
