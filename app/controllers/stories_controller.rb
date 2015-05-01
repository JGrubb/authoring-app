class StoriesController < ApplicationController
  def new
    @story = Story.new
    @story.resources.build
  end

  def create
    @story = Story.new story_params
    if @story.save
      redirect_to @story
    end
  end
  
  def show
    @story = Story.find(params[:id])
  end

  def edit
    @story = Story.find params[:id]
    @story.resources.build
  end

  def update
    @story = Story.find params[:id]
    if @story.update story_params
      redirect_to @story
    end
  end

  def delete
  end
  
  private
  
  def story_params
    params.require(:story).permit(:title, :summary, :resources_attributes => [:body, :type, :_destroy, :id])
  end
  
end
