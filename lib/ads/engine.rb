module Ads
  class Engine < ::Rails::Engine
    isolate_namespace Ads

    initializer 'ads.locale.load' do |app|
      app.config.i18n.load_path += Dir[File.join(Ads::Engine.root, 'config', 'locales', '**', '*.{rb,yml')]
    end
    
    if Rails.version >= '3.1'
      initializer :assets do |config|
        Rails.application.config.assets.precompile += %w( ads/application.js ads.js ads/application.css )
      end
    end
  end
end
