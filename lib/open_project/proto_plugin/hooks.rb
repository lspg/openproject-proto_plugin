module OpenProject::ProtoPlugin
  ##
  # Given a hook name as defined in the core the main way to call it is defining
  # a method with the same name in your Hook class (e.g. view_layouts_base_sidebar here).
  #
  # Alternatively you can use the `render_on` helper as shown for the `homescreen_after_links`
  # and the `view_layouts_base_html_head` hooks.
  class Hooks < Redmine::Hook::ViewListener
    # you can use inline partials as well:
    render_on :view_layouts_base_html_head, inline: <<-VIEW
<% content_for :header_tags do %>
  <%= stylesheet_link_tag 'proto_plugin/main', plugin: :openproject_proto_plugin %>
<% end %>
VIEW
  end
end
