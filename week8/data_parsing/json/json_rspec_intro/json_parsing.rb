require 'json'

# json = File.read('colors.json')
#
# json_parse = JSON.parse(json)
#
# p json_parse

class JSONParse

  attr_accessor :json_parse

  def initialize json_file
    @json_parse = JSON.parse(File.read(json_file))
  end

  def print_hash
    p @json_parse
  end

end

colors = JSONParse.new 'colors.json'
exchange_rates = JSONParse.new 'exchange_rates.json'
p exchange_rates.json_parse
