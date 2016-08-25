module Shoppe
  class CustomerMailer < ActionMailer::Base
    def new_password(customer)
      @customer = customer
      mail from: Shoppe.settings.outbound_email_address, to: customer.email, subject: 'Your new Shoppe password'
    end
  end
end
