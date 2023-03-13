class NonprofitsController < ApplicationController



  def index
    nonprofit= Nonprofit.all

    render json: {message: nonprofit.as_json}
  end


  def create
    nonprofit=Nonprofit.new(
      name: params[:name],
      catagory_id: params[:catagory_id],
      description: params[:description],
      website: params[:website],
      picture: params[:picture]
    )
    if nonprofit.save
      render json: {message: nonprofit.as_json}, status: :created
    else
      render json: { errors: nonprofit.errors.full_messages }, status: :bad_request
     end
  end

  def show
    nonprofit=Nonprofit.find_by(id:[params[:id]])

   render json: {message:  nonprofit.as_json}
  end


  def update
    nonprofit=Nonprofit.find_by(id: params[:id])
    nonprofit.name=params[:name] || nonprofit.name
    nonprofit.catagory_id=params[:catagory_id] || nonprofit.catagory_id
    nonprofit.description=params[:description] || nonprofit.description
    nonprofit.website=params[:website] || nonprofit.website
    nonprofit.picture=params[:picture] || nonprofit.picture

    render json: {message: nonprofit.as_json}
  end

  def destroy
    nonprofit=Nonprofit.find_by(id: params[:id])

    nonprofit.destroy
    render json: {message: "This Nonprofit has been deleted"}
    
  end

end
