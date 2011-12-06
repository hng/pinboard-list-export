#!/usr/bin/env ruby

require 'optparse'
require 'pinboard'

@options = {}

optparse = OptionParser.new do |opts|
  opts.banner = "Usage: pinboard-list-export.rb [options]"

  @options[:tags] = false
  opts.on('-t', '--tags TAGS', 'pinboard tags to export into list') do |tags|
    @options[:tags] = tags
  end
  
  @options[:user] = false
  opts.on('-u', '--user USER', 'pinboard username') do |user|
    @options[:user] = user
  end
  
  @options[:password] = false
  opts.on('-p', '--password PASSWORD', 'pinboard password') do |pwd|
    @options[:password] = pwd
  end
  
  opts.on('-h', '--help', 'Displays this screen') do 
    puts opts
    exit
  end
  
end
  
optparse.parse!

@html = "<ul>"

if(!@options[:user])
  print "User: "
  @options[:user] = gets.chomp
end

if(!@options[:password])
  print "Password: "
  @options[:password] = gets.chomp
end

if(@options[:tags])
  pinboard = Pinboard::Client.new(:username => @options[:user], :password => @options[:password])
  posts = pinboard.posts()
  posts.each do |p|
    if p.tag.include?(@options[:tags])
      @html << "<li><a href='#{p.href}'>#{p.description}</a></li>" 
    end
  end
  
  @html << "</ul>"
  puts @html
end
