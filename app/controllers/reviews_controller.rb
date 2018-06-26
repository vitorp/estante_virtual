# frozen_string_literal: true

# Classe controladora responsavel pelas acoes das resenhas
class ReviewsController < ApplicationController
  # Renderiza form de nova resenha
  def new
    @book = Book.find(params[:book_id])
    @review = Review.new
  end

  # Cadastra nova resenha no banco de dados
  def create
    @review = Review.new(review_params)
    @review.assign_attributes user: current_user, book_id: params[:book_id]
    if @review.save
      redirect_to book_path(@review.book)
    else
      render :new
    end
  end

  private

  # Filtro que impede uma requisicao com parametros indesejados para usuario
  def review_params
    params.require(:review).permit(:title, :body, :book_id)
  end
end
