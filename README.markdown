SUMMARY
=======

This extension provides a "Print Invoice" button on the Admin Orders view screen which opens a prinatble html page with the order details.

You have to set up your computer for printing, or PDF generation. Off course, if you cave a mac that is as easy as pressing the print + save as pdf buttons.

If you need server-side pdf generation, use the spree-print-invoice extension.
 
Currently only ONE PAGE invoices are supported (about 20 line items), otherwise the layout just flows over. So no repeating headers/footers stuff.

INSTALLATION
============

1. The gem relies only on the prawn gem, to install you need to add the following lines to your Gemfile

    gem 'spree_html_invoice' , :git => 'git://github.com/dancinglightning/spree-html-invoice.git'

2. run bundler

    bundle install
  
3. Configure your logo and footer text or more. It's easy as it's html.

4. Enjoy!

 
Configuration
==============

1. Set the logo path preference to include your store / company logo.

    Spree::Config.set(:html_invoice_logo_path => "/path/to/public/images/company-logo.png")

2. Add your own own footer texts to the locale. The current footer works with :footer_left , :footer_left2 and :footer_right, :footer_right2 where the 1 version is on the left in bold, and the 2 version the "value" on the right.

3. Override any of the includes templates. they are address, footer, totals, header, bye , and the line_items. In bye the text :thanks is printed, and there is a hook :extra_note.

4. Set :suppress_anonymous_address option to get blank addresses for anonymous email addresses (as created by my spree_last_address extension for empty/unknown user info)

5. Enable packaging slips, by setting 

  Spree::Config.set(:html_buttons => "invoice,packaging_slip"  #comma separated list

 Use above feature for your own template if you want. For each button_name, define a subsection with header, print, and thanks, in your locale.


Plans
=====
Next receipts and then product related stuff with barcodes.

Contributions welcome

Torsten