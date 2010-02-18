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

i = 0
while code[i] =~ /require/
  code[i] = {
    "poached_eggs" => "2010/01/poached-eggs.html",
    "basic_dough" => "2010/02/basic-dough.html",
    "mashed_potatoes" => "2010/01/mashed-potatoes.html",
    "white_rice" => "2010/01/white-rice.html"
  }.inject(code[i]) { |old, (word, repl)| old.sub(Regexp.escape(word),
    "<a href = \"http://programmerscookbook.blogspot.com/" + repl + "\">" + word + "</a>") }
  i += 1
end

code = code.join("\n").sub("pre", 'pre class = "code"')
puts code
