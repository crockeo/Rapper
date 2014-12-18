require 'rapgenius'

#songs = RapGenius.search_by_title('Rigamortus')
#for song in songs do
  #printf('%s: %d', song.title, song.id)
  #puts ''
#end

# Determining whether a lyric in a song is just for filler (such as '[Intro]' or
# a blank line)
def is_filler_line(lyric)
  return lyric[0,1] == '[' || lyric[0,1] == ' '
end

# Formatting a lyric so it'll work properly with the say command.
def format_lyric(lyric)
  return lyric.gsub('"', '')
end

# Loading the song we want from the interwebs.
song = RapGenius::Song.find(51798)

# Going through each line and piping it to say.
for line in song.lines do
  if is_filler_line(line.lyric) then
    next
  end

  puts format_lyric(line.lyric)
  `say "#{line.lyric}"`
end
