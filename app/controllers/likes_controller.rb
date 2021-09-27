class LikesController < ApplicationController
    def create
        @like = Like.new(like_params)

        if !@like.save
            flash[:notice] = @like.errors.full_messages.to_sentence
        end   
        
        redirect_to Joke
    end 
    
    private

        def like_params
            params.require(:like).permit(:joke_id)
        end    
end
