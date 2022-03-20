class SearchController <ApplicationController
    def items
        @itemfood= Itemfood.where("name LIKE ?","%"+params[:q]+"%")
        @itemfood= Itemfood.all
        render "index"
    end

    def index
        @itemfood=Itemfood.all
    end

end
