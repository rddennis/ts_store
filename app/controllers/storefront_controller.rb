class StorefrontController < ApplicationController
#   def index
#     if params[:search]
#       @products = Product.search_by_name_or_description(params[:search])
#       if @products.empty?
#         flash.now[:notice] = "No result found for \"#{params[:search]}\",
#         showing all products"
#       end
#     elsif params[:category_id]
#       @category = Category.find(params[:category_id])
#       @products = Product.where(category_id: @category.id)
#     else
#       @products = Product.all
#     end
#   end

#   def about
#   end
# end

def index
    if params[:search]
      @products=Product.search_by_name_or_description(params[:search]).includes(:brand)
      flash.now[:notice] = "Showing results for \"#{params[:search]}\":"
      if @products.empty?
        flash.now[:notice] = "No result found for \"#{params[:search]}\", here's the rest of our products."
        @products=Product.includes(:brand)
      end
    elsif params[:category_id]
      @category=Category.find(params[:category_id])
      @products=Product.where(category_id: @category.id).includes(:brand)
    else
    @products = Product.includes(:brand)
    end
  end

  def about
  end
end