require 'html_invoice_hooks'


module HtmlInvoice
  class Engine < Rails::Engine
    
    def self.activate

    config.autoload_paths += %W(#{config.root}/lib)
    config.to_prepare &method(:activate).to_proc

  end
end

