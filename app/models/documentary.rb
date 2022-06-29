class Documentary < ActiveRecord::Base 
    has_many :documentary_comments
end