# require 'pry';

class UsersController < ApplicationController

  def index
    @users=User.all 

    render template: "users/index"
  end


  def show
    user=User.find_by(id: params[:id])
#     "***********************************"
#  p current_user
    render json: {message: user.as_json}

    # render template: "users/show"

  end


  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: user.as_json }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user=User.find_by(id: params[:id])
    user.destroy

    render json: {message: user.as_json}
  end



  def update
    
    user=User.find_by(id: params[:id])
    
    user.name = params[:name] || user.name
    user.email = params[:email] || user.email
    user.location = params[:location] || user.location
    user.bio = params[:bio] || user.bio
    user.passion = params[:passion] || user.passion
    user.monthly_donation_amount = params[:monthly_donation_amount] || user.monthly_donation_amount
    user.profile_picture = params[:profile_picture] || user.profile_picture


    # p "***********************************"
    # p user.profile_picture.url
    # p current_user
    # p user.profile_picture
      if user.save
        render json: {user: user.as_json }
      else
        render json: { errors: current_user.errors.full_messages }, status: :unprocessable_entity
      end
   
    end
  end
    #  Temp Deleted
    # #delete all nonprofits in users' profile
    # user.user_nonprofits.destroy_all

    # #   add new nonprofit to user prifile 
    # params[:my_new_nonprofit].each do |new_nonprofit|
    #   p "*" * 60
    #   p new_nonprofit

    #     add_nonprofit= UserNonprofit.new(
    #       user_id: user.id,
    #       nonprofit_id: new_nonprofit
    #     )
    #     add_nonprofit.save
    # end
    
    

