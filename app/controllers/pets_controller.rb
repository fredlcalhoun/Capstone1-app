class PetsController < ApplicationController
  def index
    if params[:animal]
      @lost_pets = Pet.where(lost_or_found: "lost", animal: params[:animal])
      @found_pets = Pet.where(lost_or_found: "found", animal: params[:animal])
    else
      @lost_pets = Pet.where(lost_or_found: "lost")
      @found_pets = Pet.where(lost_or_found: "found")
    end
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
     pet = Pet.new(
      user_id: params[:user_id],
      lost_or_found: params[:lost_or_found],
      name: params[:name],
      animal: params[:animal],
      breed: params[:breed],
      color: params[:color],
      city: params[:city],
      state: params[:state],
      neighborhood: params[:neighborhood],
      description: params[:description],
      time: params[:time],
    )
    if @pet.save
      Image.create(
        url: params[:image_id],
        pet_id: @pet.id
      )
      flash[:success] = "Pet Created"
      redirect_to "/pets/#{@pet.id}"
    else
      @pets = Pet.all
      render "new.html.erb"
    end

  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render "show.html.erb"
  end
  
  def edit
    @pet = Pet.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    pet = Pet.find_by(id: params[:id])
    pet.user_id = params[:user_id]
    pet.lost_or_found = params[:lost_or_found]
    pet.name = params[:name]
    pet.animal = params[:animal]
    pet.breed = params[:breed]
    pet.color = params[:color]
    pet.city = params[:city]
    pet.state = params[:state]
    pet.neighborhood = params[:neighborhood]
    pet.description = params[:description]
    pet.time = params[:time]
    pet.save
    render "update.html.erb"
  end

  def destroy
    pet = Pet.find_by(id: params[:id])
    pet.destroy
    render "destroy.html.erb"
  end

end
