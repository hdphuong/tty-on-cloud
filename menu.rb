require "tty-prompt"
require "tty-progressbar"
require "pastel"

prompt = TTY::Prompt.new(active_color: :cyan)
pastel = Pastel.new(enabled: true)
continue = true

puts pastel.white("=== Hello. Welcome to ") + pastel.decorate("TTY ON CLOUD", :cyan, :bold) + pastel.white("===")
while continue
    choices = ["Hack NASA", "Shuck - a subset of Shell"]

    selection =  prompt.select("\nCheck out: ", choices) 
    
    if selection == choices[0]
      system("ruby hackNASA.rb")
    elsif selection == choices[1]
      puts "Work just like Shell (COMP1521 assignment)"
      puts "Type " + pastel.decorate("exit ", :cyan, :bold) + "to quit"
      puts " "
      system("./shuck")
    else
      puts "Snake game in Assembly (COMP1521 assignment)"
      system("./snake")
    end
end


