require_relative "boot"

require "rails/all"

require 'fog/core'
Fog::Logger[:deprecation] = nil

require 'optimist'

  # opts = Optimist::options do
  #   opt :monkey, "Use monkey mode"                    # flag --monkey, default false
  #   opt :name, "Monkey name", :type => :string        # string --name <s>, default nil
  #   opt :num_limbs, "Number of limbs", :default => 4  # integer --num-limbs <i>, default to 4
  # end

  # p opts # a hash: { :monkey=>false, :name=>nil, :num_limbs=>4, :help=>false }

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Finsta2
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end
