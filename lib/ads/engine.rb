module Ads
  class Engine < ::Rails::Engine
    isolate_namespace Ads

    initializer 'ads.locale.load' do |app|
      app.config.i18n.load_path += Dir[File.join(Ads::Engine.root, 'config', 'locales', '**', '*.{rb,yml')]
    end
  end
end
