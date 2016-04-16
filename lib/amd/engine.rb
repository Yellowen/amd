module AMD
  class Engine < ::Rails::Engine
    isolate_namespace AMD

    initializer 'amd.configuration.assets' do |app|
      app.config.assets.precompile = %w( *.amd.js* amd.js.coffee ) + app.config.assets.precompile
    end

    def setup
      yield self
    end

    mattr_accessor :amd_dir
    @@amd_dir = 'amd'

    def self.amd_module(controller)
      "#{controller.controller_path}/amd/#{controller.controller_name}/#{controller.action_name}"
    end
  end
end
