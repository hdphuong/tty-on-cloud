require "tty-prompt"
require "tty-progressbar"
require "pastel"

prompt = TTY::Prompt.new(active_color: :cyan)
pastel = Pastel.new(enabled: true)
continue = true

while continue
    choices = ["Hack NASA", "Shuck - a subset of Shell", "Snake game in Assembly"]

    selection =  prompt.select("\nCheck out: ", choices) 
    
    if selection == choices[0]
      system("ruby terminal.rb")
    elsif selection == choices[1]
      puts "Shell implementation (COMP1521 assignment)"
      system("./shuck")
    else
      puts "Snake game in Assembly (COMP1521 assignment)"
      system("./snake")
    end
end


