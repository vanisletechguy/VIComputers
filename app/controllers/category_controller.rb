class CategoryController < ApplicationController
  def processor
    @all_products = Product.all
    @products = Array.new
    @all_products.each do |product|
      if product.categories.first.name == 'CPU'
        @products << product
      end
    end
  end

  def motherboard
    @all_products = Product.all
    @products = Array.new
    @all_products.each do |product|
      if product.categories.first.name == 'Motherboards'
        @products << product
      end
    end
  end

  def ram
    @category = Category.where(name: 'RAM')
    @all_products = Product.all
    @products = Array.new
    @all_products.each do |product|
      if product.categories.first.name == 'RAM'
        @products << product
      end
    end
  end

  def ssd
    @category = Category.where(name: 'Power Supplies')
    @all_products = Product.all
    @products = Array.new
    @all_products.each do |product|
      if product.categories.first.name == 'Power Supplies'
        @products << product
      end
    end
  end

  def psu
    @category = Category.where(name: 'SSD')
    @all_products = Product.all
    @products = Array.new
    @all_products.each do |product|
      if product.categories.first.name == 'SSD'
        @products << product
      end
    end
  end

  def cases
    @category = Category.where(name: 'Cases')
    @all_products = Product.all
    @products = Array.new
    @all_products.each do |product|
      if product.categories.first.name == 'Cases'
        @products << product
      end
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def category_params
      #params.require(:category).permit(:category)
    end

end
