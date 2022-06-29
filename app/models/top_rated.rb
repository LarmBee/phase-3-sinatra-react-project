class TopRated < ActiveRecord::Base 
    has_many :top_rated_comments
end