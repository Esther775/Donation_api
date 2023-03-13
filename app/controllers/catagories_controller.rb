class CatagoriesController < ApplicationController

  def index

    catagories=Catagory.all

    render json: {message: catagories.as_json}

  end

end
