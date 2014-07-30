# require 'treat'
# Treat::Core::Installer.install 'english' to install treat

# p = paragraph('A walk in the park. A trip on a boat.').segment
# puts p

$:.unshift File.expand_path(File.dirname(__FILE__) + '/')
require 'lib/name.rb'

puts "Please write something"
anycommand = gets.chomp
command = anycommand.downcase
# words = command.downcase.split(' ')

  # if command.match(/\b(\w*name\w*)\b/) 
  #   system("whoami")
  # GET YOUR NAME
  if command.include?("name")
    system("whoami")
    # TIME AND DATE 
  elsif command.include?("time")
    puts "This is "+Time.now.strftime("%H:%M")
    puts "and Today is "+Time.now.strftime("%d:%m:%y")
# OPEN BROWSER OR SEARCH ANY WORD
  elsif command.include?(("open") && ("browser"))
    require'launchy'
    puts "Please tell me which website you want to visit"
  begin
    link = gets.chomp
    Launchy.open("#{link}")
  rescue
    Launchy.open("https://google.com/search?q=#{link}")
  end
    # system("/usr/bin/google-chrome-stable %U","find")
    puts "Opening Your site in a moment..........."
    # system("start #{link}")
# SERVER UPTIME
  elsif command.include?("uptime")
    system("uptime")
    puts "Server is running from:"
# FIND MY FILE
  elsif command.include?(("find")&&("file"))
    puts "Please type filename or any word related to it"
    filename = gets.chomp
    
    puts "#{system("sudo updatedb")}"
    puts "Searching file in your DB"
    puts "==========================="
    puts "#{system("locate #{filename}")}"
    puts "==========================="
# RUN VLC PLAYER
  elsif command.include?("vlc")
    system("vlc")
# AVAILABLE FREE DISK SPACE
  elsif command.include?(("disk") && ("free"))
      system("df -h")
      puts "Available Space on Drives:"
# DEFAULT
  else    
    puts "I dont understand this language"
  end

# # if words.each do |w|
# #   if w.match("name")
# #     system("whoami")
# #   end
# # end
# # elsif words.each do |w|
# #   if w.match("open") && w.match("browser")
# #     require 'launchy'
# #     Launchy.open("http://stackoverflow.com")
# #   end
# # end
# # end




# # if command == "what is my name"
# #  system ("whoami")
# # else
# #   puts "I dont understand this language"
# # end
