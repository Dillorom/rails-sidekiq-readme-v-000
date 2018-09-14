class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def upload
    LeadWorker.perform_async(params[:leads].path)
    redirect_to customers_path
  end

end
