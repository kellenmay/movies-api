class CreateMovieReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_reviews do |t|
      t.string :comment

      t.timestamps
    end
  end
end
