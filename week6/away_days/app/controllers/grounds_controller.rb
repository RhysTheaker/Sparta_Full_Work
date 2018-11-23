class GroundsController < ApplicationController
  def index
    # display all the grounds on the index page
    @grounds = Ground.all
  end

  def show
    # target an inidividual ground
    @ground = Ground.find params[:id]
  end

  def new
    # create a new instance of the class: "Ground"
    @ground = Ground.new
  end

  def edit
    # target the ground in which we wish to edit
    @ground = Ground.find params[:id]
  end

  def create
    # create a new instance of the class: "Ground" and pass in the values of ground_params to give it information
    @ground = Ground.new ground_params
    # save the newly created ground
    @ground.save
    # re-direct to the newly created ground page
    redirect_to @ground
  end

  def update
    # locate the ground in which we wish to update
    @ground = Ground.find params[:id]
    # update the ground
    @ground.update ground_params
    # re-direct to the ground's updated page
    redirect_to @ground
  end

  def destroy
    # locate the ground in which we wish to delete
    @ground = Ground.find params[:id]
    # delete the ground
    @ground.delete
    # redirect to the root of the grounds
    redirect_to grounds_path
  end

  def ground_params
    # params will access the information sent by the form
    # require(:ground) targets the specific section of the params
    # permit grants write access to the specified attributes 
    ground_params = params.require(:ground).permit(:name, :location, :desc)
  end
end
