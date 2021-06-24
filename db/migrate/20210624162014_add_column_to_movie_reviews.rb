class AddColumnToMovieReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :movie_reviews, :reviewer, :string
  end
end
