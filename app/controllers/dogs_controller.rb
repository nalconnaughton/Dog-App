class DogsController < ApplicationController

     # actions to show,edit,update,delete 
    before_action :set_dog, only: %i[ show edit update destroy ]


    # GET /dogs (will get all dogs from database) 
    def index
        @dogs = Dog.all
    end

     # GET /dogs (shows specific dog details)
  def show  
  
  end

  #Get /dogs/new (creating new dog profile)
  def new
    @dog = Dog.new
  end

  #POST/dogs (create new dog record, if successful redirection to index page with success message)
  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to @dog, notice: 'A new dog profile has successfully been created.'
    else
      render :new, status: :entity_unprocessable
    end
  end

  # GET /dogs/edit (edits profile of specific dog)
  def edit
    @dog = Dog.find(params[:id])
  end

  #GET /dogs/ update (updates a specific dog profile)
  def update
    if @dog.update(dog_params)
      redirect_to @dog, notice: 'You have just updated this dog profile.'
    else
      render :edit
    end
  end

  #Deletes / dogs ()
  def destroy
    @dog = Dog.find_by(id: params[:id])
    if @dog
      @dog.destroy
      redirect_to dogs_path, notice: 'The dog profile has been deleted.'
  end
end


  private
  def set_dog #finds a dogs info by its ID 
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.expect(dog: [ :name ])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :gender, :picture)
  end
  
end


