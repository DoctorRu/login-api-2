class  PostsController < ApplicationController

    before_action :authenticate_request!
    
    def index
        @posts = Post.all
        render json: {status: 200, data: @posts}
    end
end
