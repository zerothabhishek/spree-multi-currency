Deface::Override.new(:virtual_path => "spree/admin/configurations/index",
                     :name => "currencies_admin_configurations_menu",
                     :insert_bottom => "[data-hook='admin_configurations_menu']",
                     :disabled => false,
                     :text => "

<% if spree_current_user.has_spree_role?(:admin) %>
  <%= configurations_sidebar_menu_item t(:currency_settings), admin_currencies_path %>
  <%= configurations_sidebar_menu_item t(:currency_converters_settings), admin_currency_converters_path %>
<% end %>
")
