class Joke < ApplicationRecord
    has_many :likes
    has_many :dis_likes
end
