class DislikesController < ApplicationController
    def create
        @dislike = DisLike.new(dislike_params)

        if !@dislike.save
            flash[:notice] = @dislike.errors.full_messages.to_sentence
        end 
        
        redirect_to Joke
    end  
    
    private
        def dislike_params
            params.require(:dis_like).permit(:joke_id)
        end    
end
