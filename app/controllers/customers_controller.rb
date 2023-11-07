class CustomersController < ApplicationController

  def show
    @customer = Customer.find(params[:id])
  end

  def index
    # order by name
    @customers = Customer.order(:full_name)
  end

  def  missing_email
    # order by name
    @customers = Customer.where(email: nil)
  end

end
