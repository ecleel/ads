require 'i18n/backend/pluralization'

I18n::Backend::Simple.send(:include, I18n::Backend::Pluralization)

I18n.default_locale = :ar
I18n.reload!
