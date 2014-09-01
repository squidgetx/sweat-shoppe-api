class ItemsController < ApplicationController

  def index
    @items = Item.all
    render json: @items
  end

  def find_by_name
    term = params[:term]
    @item = Item.basic_search(term)

    render json: @item
  end

  def find_by_price
    lower = params[:lower]
    upper = params[:upper]
    @items = Item.price_bracket(lower,upper)

    render json: @items
  end

  def find_group_by_price
    lower = params[:lower].to_i
    upper = params[:upper].to_i
    @items = Item.price_group(lower, upper)
    render json: @items
  end

  def find_under_price
    upper = params[:upper].to_i
    @items = Item.less_than(upper)
    render json: @items
  end


end
