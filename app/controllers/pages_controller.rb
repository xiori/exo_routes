class PagesController < ApplicationController
    def home 
        @articles = Article.all
        @objets = Objet.all 
        @books = Book.all 
    end

    def contact
    end

    def about
    end
end