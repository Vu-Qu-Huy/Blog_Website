module ApplicationHelper
  def quote_of_the_day
    quotes = YAML.load_file(Rails.root.join('config', 'quotes.yml'))
    locale = I18n.locale.to_s
    
    return nil unless quotes[locale] && quotes[locale]['quotes'].any?
  
    date = Date.today.to_s
    quotes_for_locale = quotes[locale]['quotes']
    
    # Use the date as a seed for the random number generator
    srand(date.hash)
    
    # Select a quote based on the seeded random number
    quotes_for_locale.sample
  end
end
