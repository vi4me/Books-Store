class PicturesController < ApplicationController
	include Productable

  def new
    @pictures = @product.pictures.new
  end

  def create
    @product.pictures.create(picture_params)
    redirect_to @product
  end


  private

  def picture_params
    params.require(:pictures).permit(:file)
  end
end


