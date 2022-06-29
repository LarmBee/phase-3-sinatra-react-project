class Action < ActiveRecord::Base   
    #Action movie has many comments
    has_many :action_comments
end