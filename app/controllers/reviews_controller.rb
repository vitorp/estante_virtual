# frozen_string_literal: true

class ReviewsController < ApplicationController
  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
  end

  private

  def review_params
    params.require(:review).permit(:title, :body, :book_id)
  end
end
