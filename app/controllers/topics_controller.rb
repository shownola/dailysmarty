class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update]
  
  def index
    @topics =Topic.page(params[:page]).per(15)
  end
 
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = Topic.new(topic_params)
    
    if @topic.save
      redirect_to topic_posts_path(topic_id: @topic), notice: 'Topic was successfully created'
    else
      render :new
    end
  end
  
  def show
    redirect_to topic_posts_path(topic_id: @topic)
  end
  
  def edit
  end
  
  def update
   if @topic.update(topic_params)
     redirect_to topic_posts_path(topic_id: @topic), notice: 'Your topic was successfully updated'
  else
    render :edit, notice: 'Thee was an error processing your request'
   end
  end
  
  private
  
  def set_topic
    @topic = Topic.friendly.find(params[:id])
  end
  
  def topic_params
    params.require(:topic).permit(:title)
  end
  
end
