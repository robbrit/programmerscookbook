#!/usr/bin/env ruby

require 'rubygems'
require 'syntax/convertors/html'

convertor = Syntax::Convertors::HTML.for_syntax "ruby"
code = convertor.convert(File.read(ARGV[0]))

%w[potato_masher food_processor].each do |w|
  code.gsub!(w,
    '<a href = "http://github.com/robbrit/programmerscookbook/blob/master/images/' + w + '.jpg">' + w + '</a>')
end

# replace the first occurrence of the word with the file
# usually for require statements
code = code.split(/\r?\n/)

code[0] = {
  "mashed_potatoes" => "2010/01/mashed_potatoes.html",
  "rice" => "2010/01/rice.html"
}.inject(code[0]) { |old, (word, repl)| old.sub(Regexp.escape(word),
  "<a href = \"http://programmerscookbook.blogspot.com/" + repl + "\">" + word + "</a>") }

code = code.join("\n").sub("pre", 'pre class = "code"')
puts code
