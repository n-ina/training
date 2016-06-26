require 'monetize'
I18n.enforce_available_locales = false
bargain_prise = Monetize.from_numeric(99, 'USD')
p bargain_prise.format

standard_prise = 100.to_money('USD') #open class1
p standard_prise.format
