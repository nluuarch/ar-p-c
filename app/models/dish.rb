class Dish < ActiveRecord::Base
    has_many :ratings
    has_many :users, through: :ratings

    def leave_rating(user, score, reason, recommended_price)
        Rating.create(score: score, reason: reason, recommended_price: recommended_price, dish_id: self.id, user_id: user.id)
    end

    def print_all_ratings
        self.ratings.each do |r| 
            # puts "Ratings for #{self.name} by #{users.name}: #{ratings.score}. Because, #{ratings.reason}"

            # can use the method from rating.rb
            # Dish.first.print_all_ratings in rake to check
            puts r.print_rating
        end
    end

    def average_rating
        average = self.ratings.sum(:score) / self.ratings.size
        average.to_f

        # self.ratings.average(:score).to_f
    end

    def is_dish_popular
        # self.where("self.average_rating > 5")
        self.average_rating > 5
    end

end