songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP
  puts help
end

def list(songs) 
  songs.each_with_index { |item, index|
    puts "#{index+1}. #{item}" }
end 

def exit_jukebox
  puts "Goodbye"
end 

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if 0 < response.to_i && response.to_i < 10
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs.include?(response)
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def run(songs)
  command = "" 
  while command  
  puts "Please enter a command:"
  command = gets.downcase.strip  
  case command 
    when 'list'
      list(songs)
      when 'play'
        list(songs)
        play(songs)
      when 'help'
        help 
      when 'exit'
        exit_jukebox
        break 
      else 
        help 
      end 
    end 
  end 

