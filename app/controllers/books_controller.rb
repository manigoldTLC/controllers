class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    begin
      book.save!
      redirect_to books_path
      flash[:alert] = 'Deu tudo certo!'
    rescue StandardError => e
      flash[:alert] = e
      redirect_to new_book_path
    end
  end

  def update
    book = Book.find(params[:id])
    begin
      book.update!(book_params)
      redirect_to books_path
      flash[:alert] = 'Editado!'
    rescue StandardError => e
      flash[:alert] = e
      redirect_to edit_book_path(params[:id])
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    begin
      book.destroy!
      redirect_to books_path
      flash[:alert] = 'Deu tudo certo'
    rescue StandardError => e
      flash[:alert] = e
      redirect_to books_path
    end
  end

  private

  def book_params
    params.require(:book).permit(:nome, :ano, :escritor)
  end
end
