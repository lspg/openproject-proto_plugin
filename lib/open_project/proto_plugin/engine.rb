# Prevent load-order problems in case openproject-plugins is listed after a plugin in the Gemfile
# or not at all
require 'open_project/plugins'

module OpenProject::ProtoPlugin
  class Engine < ::Rails::Engine
    engine_name :openproject_proto_plugin

    include OpenProject::Plugins::ActsAsOpEngine

    assets %w(proto_plugin/main.css kitty.png lds/lds_logo.png lds/lds_logo_petit.png)
  end
end
