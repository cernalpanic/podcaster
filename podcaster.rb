#blog: http://ruby-doc.org/stdlib-2.1.5/libdoc/readline/rdoc/Readline.html
#also mention irb here are testing out modules
require 'readline'
require 'date'

#File.rename("afile", "afile.bak")   #=> 0

today = Date.today
new_title = ''
year = ''
month = ''
day = ''

def prefill label, value
  Readline.pre_input_hook = -> {
    Readline.insert_text value
    Readline.redisplay
  }
  data = Readline.readline("#{label} >-----> ")
  return data.chomp
end

year = prefill 'year ', today.strftime('%Y')
month = prefill 'month ', today.strftime('%m')
day = prefill 'day ', today.strftime('%d')

name = "#{year}_#{month}_#{day}"
puts name
