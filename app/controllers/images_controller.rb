class ImagesController < ApplicationController
  def index
    @images = Image.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    image = Image.new(
      url: params[:url],
      pet_id: params[:pet_id],
    )
    pet.save
    render "create.html.erb"
  end

  def show
    @image = Image.find_by(id: params[:id])
    render "show.html.erb"
  end

  def edit
    @image = Image.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    image = Image.find_by(id: params[:id])
    image.url = params[:url]
    image.pet_id = params[:pet_id]
    pet.save
    render "update.html.erb"
  end


  
end
