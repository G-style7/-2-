class BooksController < ApplicationController
  def index
    @books = Book.all #Bookはモデル名　bookの全ての値を持ってくる
    @book = Book.new
  end

  def create
     @book = Book.new(book_params)
    if @book.save
      redirect_to book_path(@book.id) #⬅️showページアクション
    else
      render :index
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.find(params[:id])
    book.destroy # データ（レコード）を削除
    redirect_to '/books' # 投稿一覧画面へリダイレクト
  end

  def update
  end

  private
  def book_params
    params.require(:book).permit(:title, :body) #bookはモデルがtitle.bodyカラムを承認
  end

end
