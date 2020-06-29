class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts 

    def most_recent
        self.posts.last(5)
    end

    def featured 
        self.posts.max_by {|post| post.likes}
    end
end
