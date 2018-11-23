class TopicsController < ApplicationController

  before_action :set_ground

  def new
    # create a new instance of the "Topic" class
    @topic = Topic.new
  end

  def edit
    # locate the topic in which we wish to edit
    @topic = Topic.find params[:id]
  end

  def create
    # create a new instance of the "Topic" class
    @topic = @subject.topic.create(topic_params)
    # save the newly created topic
    @topic.save
    # redirect to the corresponding subject
    redirect_to @subject
  end

  def update
    # locate the topic in which we wish to update
    @topic = Topic.find params[:id]
    # update the corresponding topic
    @topic.update topic_params
  end

  def destroy
    # target the topic which we wish to delete
    @topic = Topic.find params[:id]
    # delete the corresponding topic
    @topic.delete
    # redirect to the corresponding ground
    redirect_to @ground
  end

  def topic_params
    topic_params = params.require(:topic).permit(:pubs, :travel)
  end

  def set_ground
    # find the ground which the topic corresponds to
    @ground = Ground.find params[:ground_id]
end
