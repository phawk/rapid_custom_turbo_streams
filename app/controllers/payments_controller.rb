class PaymentsController < ApplicationController
  def new
  end

  def create
    ProcessPaymentJob.perform_later

    render turbo_stream: turbo_stream.replace(
      "payment-form",
      template: "payments/pending",
      layout: false
    )
  end

  def pending
  end

  def success
  end
end
