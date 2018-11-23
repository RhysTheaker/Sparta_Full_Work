require 'json'

class ExchangeRates

  attr_accessor :exchange_rates

  def initialize json_file
    @exchange_rates = JSON.parse(File.read(json_file))
  end

  def get_base
    @exchange_rates["base"]
  end

  def check_float
    @exchange_rates["rates"].each_value do |value|
      if value.is_a?(Float)
        return true
      else
        return false
      end
    end
  end
end
