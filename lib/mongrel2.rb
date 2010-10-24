begin
  require 'yajl'
rescue LoadError
  begin
    require 'json'
  rescue LoadError
    raise "You need either the yajl or json gems present in order to parse JSON!"
  end
end

module Mongrel2
  JSON = Object.const_defined?('Yajl') ? ::Yajl::Parser : ::JSON
end