#!/usr/bin/env ruby

require 'rubygems'
require 'syntax/convertors/html'

convertor = Syntax::Convertors::HTML.for_syntax "ruby"
code = convertor.convert(File.read(ARGV[0]))

code.sub!("food_processor",
  '<a href = "http://github.com/robbrit/programmerscookbook/blob/master/images/food_processor.jpg">food_processor</a>')
puts code
