class InvoiceController < Spree::BaseController

  def invoice
    @order = Order.find_by_number(params[:id])
    render  "invoice" , :layout => false
  end
  
end
