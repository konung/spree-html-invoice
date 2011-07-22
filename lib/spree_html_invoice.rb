module HtmlInvoice
  class Engine < Rails::Engine
    

    config.autoload_paths += %W(#{config.root}/lib)

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*.rb")) do |c|
        Rails.env.production? ? require(c) : load(c)
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end

class HtmlInvoiceHooks < Spree::ThemeSupport::HookListener


  insert_after :admin_order_show_buttons , 'html_buttons'

  insert_after :admin_order_edit_buttons , 'html_buttons'

end
