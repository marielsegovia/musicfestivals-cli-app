class Musicfestivals::CLI

  def call
    list_festivals
    menu
    goodbye
  end

  def list_festivals #get festivals
    puts "Here is a list of the music festivals in California! : "

    @festivals = Musicfestivals::Festival.display_all

    @festivals.each.with_index(1) do |festival, i|
      puts "#{i}. #{festival.name} - #{festival.location} - #{festival.dates}"
    end

  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the festival that you'd like more info on, type list to see all festivals again, or type exit to exit: "
      input = gets.strip.downcase
      if input.to_i > 0
        fest = @festivals[input.to_i - 1]

        puts "#{fest.name} - #{fest.location} - #{fest.dates}"
      elsif input == "list"
        list_festivals
      else
        puts "Type list or exit"
      end
    end
  end

  def goodbye
    puts "Hope to see you again!"
  end
end
