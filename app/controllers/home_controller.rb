class HomeController < ApplicationController
  def bloglists
    @allblogs = Blog.all
  end
  def createblog
    Blog.create(:title=>params[:one_blog][:title],:blog_body=>params[:one_blog][:blog_body],:author_type=>params[:one_blog][:author_type])
    redirect_to :action => 'bloglists'
  end
  def editblog
    @blog = Blog.find(params[:id])
  end
  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to root_path
  end
  def update
    @blog = Blog.find(params[:id])
    @blog.update(:title=>params[:blog][:title],:blog_body=>params[:blog][:blog_body],:author_type=>params[:blog][:author_type])
    redirect_to root_path
  end
end
