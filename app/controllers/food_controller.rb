class FoodController <ApplicationController

    def new
       
    end
    def create
        @itemfood = Itemfood.create()
        if @itemfood.save
            session[:itemfood_id]=@itemfood.id
          redirect_to home_path, :notice => "Created!"
        else
          render "new"
        end
    end

    private
    
    def itemfood_params
      params.require(:itemfood).permit(:name, :calories, :servingquantity)
    end

end
