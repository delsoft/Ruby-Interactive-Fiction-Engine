require_relative 'config/application'

require 'readline'
module Runner
  def self.repl
  
    stty_save = `stty -g`.chomp

    begin
      while line = Readline.readline('> ', true)
        p line
      end
    rescue Interrupt => e
      print "\n\ninterrupt\n"
      system('stty', stty_save) # Restore
      exit
    ensure
      print "\n"
    end

  end
end

Runner.repl
