require 'rubygems'

# WIRBLE
begin
  require 'wirble'

  # init wirble
  Wirble.init
  
  # enable color
  Wirble.colorize
rescue LoadError => err
  $stderr.puts "Couldn't load Wirble: #{err}"
end

# METHOD_INFO
begin
  require 'method_info'
  
  MethodInfo::OptionHandler.default_options = {
    :enable_colors => true
  }
  
rescue LoadError => err
  $stderr.puts "Couldn't load method_info: #{err}"
end

# AWESOME_PRINT
begin
  require 'ap'
rescue LoadError => err
  $stderr.puts "Couldn't load awesome_print: #{err}"
end