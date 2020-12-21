class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    author = Author.new(author_params)
    begin
      author.save!
      redirect_to authors_path
      flash[:alert] = 'Deu tudo certo'
    rescue StandardError => e
      flash[:alert] = e
      redirect_to new_author_path
    end
  end

  def update
    author = Author.find(params[:id])
    begin
      author.update!(author_params)
      redirect_to authors_path
      flash[:alert] = 'Deu tudo certo'
    rescue StandardError => e
      flash[:alert] = e
      redirect_to edit_author_path(params[:id])
    end
  end

  def edit
    @author = Author.find(params[:id])
  end

  def destroy
    author = Author.find(params[:id])
    begin
      author.destroy!
      redirect_to authors_path
      flash[:alert] = 'Deu tudo certo'
    rescue StandardError => e
      flash[:alert] = e
      redirect_to authors_path
    end
  end

  private

  def author_params
    params.require(:author).permit(:nome, :ano, :pais)
  end
end
