class PagesController < ApplicationController
def home
# redirect_to about_path
end

def about
@itemArr = ['item1','item2','item3']
end

def contact
 @articles = ArticleTable.all
end
end
