class Api::MenusController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    menu = Menu.find_by!(position: params[:from].to_i + 1)
    menu.update!(position: params[:to].to_i + 1) # SortableのnewInbexは0から始まるから
    head :ok
  end
end
