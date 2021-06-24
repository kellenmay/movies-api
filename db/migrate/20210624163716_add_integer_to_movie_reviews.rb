class AddIntegerToMovieReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :movie_reviews, :movie_id, :integer
  end
end
