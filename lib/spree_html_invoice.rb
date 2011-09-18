module HtmlInvoice
  class Engine < Rails::Engine
    

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
      Deface::Override.new(:virtual_path => "admin/orders/show",
                           :name => "converted_admin_order_show_buttons_186918949",
                           :insert_after => "[data-hook='admin_order_show_buttons'], #admin_order_show_buttons[data-hook]",
                           :partial => "admin/orders/html_buttons",
                           :disabled => false)

      Deface::Override.new(:virtual_path => "admin/orders/edit",
                           :name => "converted_admin_order_edit_buttons_180260121",
                           :insert_after => "[data-hook='admin_order_edit_buttons'], #admin_order_edit_buttons[data-hook]",
                           :partial => "admin/orders/html_buttons",
                           :disabled => false)
    end

    config.to_prepare &method(:activate).to_proc
  end
end
