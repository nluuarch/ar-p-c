class User < ActiveRecord::Base
    has_many :ratings
    has_many :dishes, through: :ratings

    def favorite_dish
        # desc starting from the highest score first
        # limit(1) to return only 1
        # because .order returns a collection
        # .first to get the specific instance inside the array
        # can't call .dish if in an array
        # .dish to find the rating with the dish
        self.ratings.order(:score :desc).limit(1).first.dish

        # can also do this
        # .order is ASC default
        self.ratings.order(:score).last.dish
    end
    

    def least_favorite_dish
        self.ratings.order(:score :desc).limit(1).last.dish
    end    


    def remove_ratings(dish)
        # find the dish of the User's ratings where it matches the paramter
        # then delete that
        self.ratings.where('dish_id = ?', dish.id).destroy_all
    end

end