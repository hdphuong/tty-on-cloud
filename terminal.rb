require "tty-prompt"
require "tty-progressbar"
require "pastel"

prompt = TTY::Prompt.new 
pastel = Pastel.new(enabled: true)
continue = true

while continue
  name = prompt.ask(pastel.white("\n\n=== Hello. What's your name? === "))

    # Hacking process

    puts pastel.decorate("\nStarting Process PID 16831", :cyan, :bold)
    bars = TTY::ProgressBar::Multi.new(pastel.white("Attacking"), bar_format: :box)

    bar3 = bars.register(pastel.cyan("Injecting Malware [:bar] :percent"), bar_format: :box, total: 15)
    bar2 = bars.register(pastel.cyan("Bypassing Authentication [:bar] :percent"), bar_format: :box, total: 15)
    bar1 = bars.register(pastel.cyan("Connecting to Server [:bar] :percent"), bar_format: :box, total: 15)

    bars.start
    th1 = Thread.new { 15.times { sleep(0.1); bar1.advance } }
    th2 = Thread.new { 15.times { sleep(0.1); bar2.advance } }
    th3 = Thread.new { 15.times { sleep(0.1); bar3.advance } }

    [th3, th2, th1].each { |t| t.join }
    puts("\n")

    data = TTY::ProgressBar::Multi.new(pastel.white("Retrieving Data"), bar_format: :box)
    data1 = data.register(pastel.cyan("Admin Panel Info [:bar] :percent"), bar_format: :box, total: 15)
    data2 = data.register(pastel.cyan("Accessing Database [:bar] :percent"), bar_format: :box, total: 15)
    data3 = data.register(pastel.cyan("Downloading Data [:bar] :percent"), bar_format: :box, total: 15)

    data.start
    th1 = Thread.new { 15.times { sleep(0.1); data1.advance } }
    th2 = Thread.new { 15.times { sleep(0.1); data2.advance } }
    th3 = Thread.new { 15.times { sleep(0.1); data3.advance } }

    [th3, th2, th1].each { |t| t.join }
    puts("\n")
    
    
    final = TTY::ProgressBar.new(pastel.cyan("[:bar]"), total: 30, bar_format: :block)
    final.log(pastel.white("Finalising... "))
    30.times do
      sleep(0.1)
      final.advance
    end

    puts "=== DONE ==="
    puts pastel.decorate("=== Congrats " + name.upcase + " hacking NASA successfully! ===", :cyan, :bold)

    choices = %w(replay stop)

    selection =  prompt.select("\nReplay? ", choices) 
    
    puts selection
    if selection == choices[1]
      break
    end
end
