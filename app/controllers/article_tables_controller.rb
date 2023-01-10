class ArticleTablesController < ApplicationController
def show 
@article = ArticleTable.find(params[:id])
end
def index 
@articles = ArticleTable.all
end
def new
@article = ArticleTable.new
end

def create 
    @article = ArticleTable.new(params.require(:article_table).permit(:title, :description))
    if @article.save
    flash[:notice] = 'article was created successfully'
    redirect_to article_table_path(@article)
end

end

def edit 
    @article = ArticleTable.find(params[:id])
    
end

def update 
@article = ArticleTable.find(params[:id])
if @article.update(params.require(:article_table).permit(:title, :description))
flash[:notice] = 'article was updated successfully'
redirect_to article_table_path(@article)
end
end
def destroy 
@article = ArticleTable.find(params[:id])
@article.destroy
redirect_to article_tables_path
end
end