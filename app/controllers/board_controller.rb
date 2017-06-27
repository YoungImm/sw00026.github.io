class BoardController < ApplicationController
    
    
    def index
        
    end
    
    def list
        @every_post = Post.all.order("id desc")
    end
    
    def write
        @title = params[:title]
        @content = params[:content]
        new_post = Post.new
        new_post.title = @title
        new_post.content = @content
        new_post.save
       redirect_to "/list"
    end
    
    def delete
        @one_post = Post.find(params[:post_id])
        @one_post.delete
        redirect_to "/list"
    end
    
    def update_view
        @one_post = Post.find(params[:post_id])
        
    end
    
    def modify
         @title = params[:title]
        @content = params[:content]
        @one_post = Post.find(params[:post_id])
        @one_post.title = @title
        @one_post.content = @content
        @one_post.save
       redirect_to "/list"
    end
end
