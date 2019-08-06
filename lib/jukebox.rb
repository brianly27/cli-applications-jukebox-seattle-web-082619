require "pry"

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(array)
  array.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(array)

  puts "Please enter a song name or number:"
  input = gets.strip


  if input.to_i.between?(1,array.length)
    puts "#{array[input.to_i-1]}"
  elsif array.find {|i| i == input}
    puts "#{input}"
  else
    puts "Invalid input, please try again"
  end #if
end

def exit_jukebox
  puts "Goodbye"
end
