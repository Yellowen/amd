module AMD
  class Engine < ::Rails::Engine
    isolate_namespace AMD

    initializer 'amd.configuration.assets' do |app|
      app.config.assets.precompile = %w( *.amd.js* ) + app.config.assets.precompile
    end

  end
end
