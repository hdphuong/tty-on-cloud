require "tty-prompt"
require "tty-progressbar"

prompt = TTY::Prompt.new 


continue = true

while continue
    name = prompt.ask("\n\nHello. Enter your name:", default: ENV["USER"])
    
    bar = TTY::ProgressBar.new("[:bar]", total: 30, bar_format: :block)
    puts("\n")
    bar.log("Hacking NASA: ")

    30.times do
      sleep(0.1)
      bar.advance
    end

    puts "\nCongrats " + name.upcase + " hacking NASA successfully!"

    choices = %w(replay stop)

    selection =  prompt.select("Replay? ", choices) 
    
    puts selection
    if selection == choices[1]
      break
    end
end
