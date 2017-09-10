class PetsController < ApplicationController
  def index
    if params[:form_animal]
      search_hash = {}
      search_hash[:animal] = params[:form_animal] if params[:form_animal] != ""
      search_hash[:breed] = params[:form_breed] if params[:form_breed] != ""
      search_hash[:color] = params[:form_color] if params[:form_color] != ""
      search_hash[:city] = params[:form_city] if params[:form_city] != ""
      search_hash[:state] = params[:form_state] if params[:form_state] != ""
      search_hash[:neighborhood] = params[:form_neighborhood] if params[:form_neighborhood] != ""
      @lost_pets = Pet.where(search_hash).where(lost_or_found: "lost")
      @found_pets = Pet.where(search_hash).where(lost_or_found: "found")
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

     @pet = Pet.new(
      user_id: current_user.id,
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
      if params[:image_url]
        Image.create(
          url: params[:image_url],
          pet_id: @pet.id
        )
      end
      if @pet.lost_or_found == "found"
        flash[:success] = "Pet Created"
          account_sid = "#{ENV["twilio_account_sid"]}"
        auth_token = "#{ENV["twilio_auth_token"]}"

        @client = Twilio::REST::Client.new account_sid, auth_token

        # Twilio.configure do |config|
        #   config.account_sid = account_sid
        #   config.auth_token = auth_token
        # end

        # @client = Twilio::REST::Client.new

        @client.api.account.messages.create(
          from: '+13126673662',
          to: '+12242341138',
          body: 'Alert! Somebody has posted a found pet. Please login on to the Sherlock Paws website to check if that pet might be yours.',
        )
        redirect_to "/pets"
        # redirect_to "/pets?form_breed=#{@pet.breed}"
      else
        flash[:success] = "Pet Created"
        redirect_to "/pets/#{@pet.id}"
      end
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
