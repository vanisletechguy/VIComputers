class CategoryController < ApplicationController
  def processor
    #@products = Products.find { |'CPU'|  }

    #@products = Product.where(name: 'CPU')
    @category = Category.where(name: 'CPU')
    #@products = Product.where(:categories => @category)
    @products = Product.all
    #@products = Product.where(categories.first.id: @category.id)


  end

  def motherboard
  end

  def ram
  end

  def ssd
  end

  def psu
  end

  def cases
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      #params.require(:category).permit(:category)
    end

end
