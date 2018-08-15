class MessagesController < ApplicationController

  def hello
    @name = params[:name]
    respond_to do |format|
      format.html do

      end
      format.json do
        render :json => {message: "hello, #{@name}!"}
      end
    end
  end



  def goodbye
    @name = params[:name]
    respond_to do |format|
      format.html do

      end
      format.json do
        render :json => {message: "hello, #{@name}!"}
      end
    end
  end
end
