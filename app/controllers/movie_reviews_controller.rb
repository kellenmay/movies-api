class MovieReviewsController < ApplicationController
  before_action :set_movie_review, only: [:show, :update, :destroy]

  # GET /movie_reviews
  def index
    @movie_reviews = MovieReview.all

    render json: @movie_reviews
  end

  # GET /movie_reviews/1
  def show
    render json: @movie_review
  end

  # POST /movie_reviews
  def create
    @movie_review = MovieReview.new(movie_review_params)

    if @movie_review.save
      render json: @movie_review, status: :created, location: @movie_review
    else
      render json: @movie_review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movie_reviews/1
  def update
    if @movie_review.update(movie_review_params)
      render json: @movie_review
    else
      render json: @movie_review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movie_reviews/1
  def destroy
    @movie_review.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_review
      @movie_review = MovieReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def movie_review_params
      params.require(:movie_review).permit(:comment)
    end
end
