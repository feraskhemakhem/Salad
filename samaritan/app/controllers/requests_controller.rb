class RequestsController < ApplicationController

  def new

  end

  def show
    @request = Request.find(params[:id])
  end

  def create
    #render plain: params[:request].inspect
    @request = Request.new(request_params)

    @request.save
    redirect_to @request
  end


  private def request_params
    params.require(:request).permit(:name, :phone, :details)
  end
end
