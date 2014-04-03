require 'discourse_plugin'

module DiscourseExtras

  class Plugin < DiscoursePlugin
    
    def setup
      # Add our Assets
      register_js('discourse_extras')
      register_css('discourse_extras')
    end

  end
end
