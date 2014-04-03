require 'discourse_extras/plugin'
 
module DiscourseExtras
  class Engine < Rails::Engine
 
    engine_name 'discourse_extras'
 
    initializer "discourse_extras.configure_rails_initialization" do |app|
 
      app.config.after_initialize do
        DiscoursePluginRegistry.setup(DiscourseExtras::Plugin)
      end
    end
 
  end
end
