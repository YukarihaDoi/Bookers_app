class BooksController < ApplicationController
  # 新規作成/一覧画面(画面内)
  def index
  @books = Book.all
  @book = Book.new
  end

  def index
    @books = Book.all
  end

  # 新規作成（コントローラ内)
  def create

    @book = Book.new(book_params)
    if @book.save
      redirect_to show_path(@book.id)

    else
      @books = Book.all
      render :index

    end
  end
  # 詳細画面
  def show
    @book = Book.find(params[:id])
  end

  # 編集(edit&update)
  def edit
    @book = Book.find(params[:id])
  end

  def update
    book = Book.find(params[:id])

    if book.update(book_params)
       redirect_to show_path(book.id)
    else
       @book = Book.find(params[:id])
       render :edit
    end
  end
  def destroy
    book = Book.find(params[:id])  # データ（レコード）を1件取得
    book.destroy  # データ（レコード）を削除
    redirect_to '/books/new'  # 投稿一覧画面へリダイレクト
  end

   # ストロングパラメータ
   private

   def book_params
     params.require(:book).permit(:title, :body)
   end

end