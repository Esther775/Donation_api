class UsersController < ApplicationController

  def index
    users=User.all 
    render json: { messsage: users}
  end


  def show
    user=User.find_by(id: params[:id])

    render json: {message: user.as_json}
  end


  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user=User.find_by(id: params[:id])
    user.destroy

    render json: {message: "User has been deleted"}
  end



  def update

    user=User.find_by(id: params[:id])
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.profile_picture = params[:profile_picture] || user.profile_picture
    user.location = params[:location] || user.location
    user.bio = params[:bio] || user.bio
    user.monthly_donation_amount = params[:monthly_donation_amount] || user.monthly_donation_amount

    
    user.save

    render json: {message: user.as_json}

  end


end
