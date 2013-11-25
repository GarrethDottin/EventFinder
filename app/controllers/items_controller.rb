class ItemsController < ApplicationController
  def index 
    @items = Item.all
    @item = Item.new
   end 

  def create
    item =  Item.create!(params[:item])
    if item.save 
      render partial: "items/item", locals: { item: item }
    end 
  end 


end
