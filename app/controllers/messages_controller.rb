class MessagesController < ApplicationController



  def new
    render "new.html.erb"
  end

  def create
     @message = Message.new(
      user_id: current_user.id,
      other_user_id: params[:found],
      body: params[:body],
    )
    if @message.save
      if params[:found]
        Message.create(
          user_id: params[:user_id],
          other_user_id: @message.id
        )
      end
      if @pet.lost_or_found == "found"
        flash[:success] = "Pet Created"
                # set up a client to talk to the Twilio REST API

        account_sid = "#{ENV["twilio_account_sid"]}"
        auth_token = "#{ENV["twilio_auth_token"]}"

        @client = Twilio::REST::Client.new account_sid, auth_token

        Twilio.configure do |config|
          config.account_sid = account_sid
          config.auth_token = auth_token
        end

        @client = Twilio::REST::Cli

        @client.api.account.messages.create(
          from: '+13126673662',
          to: '+2242341138',
          body: 'This is the ship that made the Kessel Run in fourteen parsecs?',
        )

        puts @message.subresource_uris
      
        redirect_to "/pets"
        # redirect_to "/pets?form_breed=#{@pet.breed}"
      else
        flash[:success] = "Pet Created"
        redirect_to "/pets/#{@pet.id}"
      end
    else
      @message = Message.all
      render "new.html.erb"
    end
    

  end

  def show
    @message = Message.find_by(id: params[:id])
    
    render "show.html.erb"
  end
  
end
