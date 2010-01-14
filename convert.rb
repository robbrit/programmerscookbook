#!/usr/bin/env ruby

require 'rubygems'
require 'syntax/convertors/html'

convertor = Syntax::Convertors::HTML.for_syntax "ruby"
code = convertor.convert(File.read(ARGV[0]))

%w[potato_masher food_processor].each do |w|
  code.gsub!(w,
    '<a href = "http://github.com/robbrit/programmerscookbook/blob/master/images/' + w + '">' + w + '</a>')
end

code.sub!("pre", 'pre class = "code"')
puts code
