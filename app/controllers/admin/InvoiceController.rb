module Admin
  class InvoiceController < Spree::BaseController

    def lasku
      @order = Order.find_by_number(params[:id])
      render  "invoice" , :layout => false
    end

  end
end