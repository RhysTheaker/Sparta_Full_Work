class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    # get every product in the table
    @products = Product.all
    # @products = current_user.products
    # this only displays the products which have been made by the current user
  end

  def show
    # show page only displays one product, so target that individucal product
    @product = Product.find params[:id]
  end

  def new
    # create a new instance of the "Product" class
    @product = Product.new
  end

  def edit
    # if the product was not made by the user that is currenty log in, then don't allow them to update the product and instead send them back to the root of products
    if @product.user.id != current_user.id
      redirect_to products_path
    end

    # target the product that we want to edit
    @product = Product.find params[:id]
  end

  def create
    # create a new instance of the class "Product" and sets all the parameters
    @product = Product.new product_params
    respond_to do |format|
      if @product.save
        # if successful then display a message to the user
        format.html{redirect_to @product, notice: "'#{@product.name}' was created"}
      else
        # if there are errors then we want to be taken back to the new page, where the new product is being added
        format.html{render :new}
      end
    end
  end

  def update
    # if the product was not made by the user that is currenty log in, then don't allow them to update the product and instead send them back to the root of products
    if @product.user.id != current_user.id
      redirect_to products_path
    end

    # find the product that we want to update by targeting its unique id
    @product = Product.find params[:id]
    respond_to do |format|
      # if sucessful then display a message to the user
      if @product.update product_params
        format.html{redirect_to @product, notice: "'#{@product.name}' was updated"}
      else
        # if there are errors then we want to be taken back to the edit page
        format.html{render :edit}
      end
    end
  end

  def destroy
    # if the product was not made by the user that is currenty log in, then don't allow them to update the product and instead send them back to the root of products
    if @product.user.id != current_user.id
      redirect_to products_path
    end

    # target the product which we want to delete
    @product = Product.find params[:id]
    # delete the product
    @product.destroy
    # redirect to the root of products
    redirect_to products_path
  end

  def product_params
    # params accesses the parameters sent by the form
    # require('resource name') targets the specific section of params required
    # permit grants write access to these attributes
    product_params = params.require(:product).permit(:name, :desc, :stock, :price)
  end
end
