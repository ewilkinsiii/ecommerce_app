class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:filter] == "discount" 
      @products =Product.where("price <= ?", 30)
    end

    if params[:filter] == "on_sale" 
       @products =Product.where("price >= ?", 30)
    end

    if params[:sort]
      @products =@products.order(params[:sort] => params[:direction])
    end

    if params[:category]
      @products= @products.where(:category => params[:category])
    end

    if params[:search]
      @products= @products.where('title LIKE ?', "%" + params[:search] + "%")
    end
  end  

  def new
    
  end

  def create
    product= Product.create({:title => params[:title], :brand => params[:system], :description => params[:description], :category => params[:category], :price => params[:price], :image => params[:image]})
      flash[:success] = "Product added!"
      redirect_to "/products/#{product.id}"
  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
    else
     @product = Product.find(params[:id])
    end
  end

  def edit
    @product= Product.find(params[:id])
  end

  def update
    product= Product.find(params[:id])

    product.update({:title => params[:title], :brand => params[:system], :description => params[:description], :category => params[:category], :price => params[:price], :image => params[:image]})
    flash[:success] = "Product added!"
    redirect_to "/products/#{params[:id]}"
  end
  
  def destroy
    @product= Product.find(params[:id])
    @product.destroy
    flash[:danger] = "You've Destroyed the Product!"
    redirect_to '/products'
  end
end
