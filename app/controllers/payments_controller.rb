class PaymentsController < ApplicationController
  def new
  end

  def create
    ProcessPaymentJob.perform_later

    redirect_to pending_payments_path
  end

  def pending
  end

  def success
  end
end
