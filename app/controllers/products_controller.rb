class ProductsController < ApplicationController

  #before_action :set_group

  def index
    @products = @group.products
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new
    @product.price = params[:product][:price]
    @product.name = params[:product][:name]
    @product.pr_description = params[:product][:pr_description]
    @product.picture = params[:product][:picture]
    @product.save

    redirect_to products_path
  end

  def update
    @product = Product.find(params[:id])
      if @product.update(product_params)
    redirect_to @product
      else
    render 'edit'
  end

  def destroy
    @product = Product.find(params[:product_id])
    @product = @group.products.find(params[:id])
    @product.destroy
    redirect_to group_path(@group)
  end
 
  private

   # def set_group
   #   @group = Group.find(params[:group_id])
    #end

    def product_params
      params.require(:product).permit(:price, :name, :pr_description, :picture)
    end
end
  end
 