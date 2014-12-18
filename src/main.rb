# Name: main.rb
# Author: Cerek Hillen
#
# Description:
#   The entry point to the application.

##################
# Global Imports #
require 'rapgenius'

#################
# Local Imports #
require './ui.rb'

########
# Code #

# Determining whether a lyric in a song is just for filler (such as '[Intro]' or
# a blank line)
def is_filler_line(lyric)
  return lyric[0,1] == '[' || lyric[0,1] == ' '
end

# Formatting a lyric so it'll work properly with the say command.
def format_lyric(lyric)
  return lyric.gsub('"', '')
end

# Running the UI to get the song ID.
id = run_ui()

# Loading the song we want from the interwebs.
printf("Attempting to download song ID #%d metadata.\n", id)
song = RapGenius::Song.find(id)
printf("Song downloaded!\nTime to rap it up.\n")

# Going through each line and piping it to say.
for line in song.lines do
  if is_filler_line(line.lyric) then
    next
  end

  puts " " + format_lyric(line.lyric)
  `say -r 320 "#{line.lyric}"`
end
