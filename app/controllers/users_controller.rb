# require 'pry';

class UsersController < ApplicationController

  def index
    @users=User.all 

    render template: "users/index"
  end


  def show
    @user=User.find_by(id: params[:id])

    # render json: {message: user.as_json}

    render template: "users/show"

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


  #   p "*" * 60
  # p user.user_nonprofits


    params[:my_new_nonprofit].each do |new_nonprofit|
      p "*" * 60
      p new_nonprofit

      if user.user_nonprofits.find_by(nonprofit_id: new_nonprofit)
        # "Nonprofit exists in your profile already"    
        p "Do noithing"    
      else
        zzz= UserNonprofit.new(
          user_id: user.id,
          nonprofit_id: new_nonprofit
        )
        zzz.save
      end

    end
    
    render json: {user: user.as_json}


# Grab params
# index through params and compare to existing nonprofits
# if doesnt exist
#   add new nonprofit to user prifile 


    # params[:my_nonprofits].each do |my_new_nonprofit|
      # nonprofit= UserNonprofit.find_by(id: nonprofit)
      # p "*******************my_new_nonprofit***********************************"
      # p my_new_nonprofit
      # p "******************************************************"
      #  user.user_nonprofits .each do |old_nonprofit|

      #   p "************Old Nonprofit******************************************"
      #   p old_nonprofit.nonprofit_id
      #   p "******************************************************"

      #   if my_new_nonprofit==old_nonprofit
      #     render json: {message: "NonProfit already is in your profile"}
      #  else 
      #     addnonprofit= UserNonprofit.new(
      #       user_id: user.id,
      #       nonprofit_id: my_new_nonprofit
      #       )
      #     addnonprofit.save
      #     # render json: {user: user.as_json, nonprofits: user.user_nonprofits.as_json }
      #   end
      # end
      # end
  end
end
