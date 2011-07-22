class HtmlInvoiceHooks < Spree::ThemeSupport::HookListener


  insert_after :admin_order_show_buttons , 'html_buttons'

  insert_after :admin_order_edit_buttons , 'html_buttons'

end
