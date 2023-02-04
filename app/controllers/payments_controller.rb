class PaymentsController < ApplicationController
  def new
  end

  def create
    # Pretending to create a payment and send it to a background job...
    redirect_to pending_payments_path
  end

  def pending
  end

  def success
  end
end
