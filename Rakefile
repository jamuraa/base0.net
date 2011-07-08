def jekyll(opts="", path="")
  sh "rm -rf _site"
  sh "compass compile"
  sh path + "jekyll " + opts
end

desc "Deploy to the server"
task :default => [:deploy]

desc "Build site using Jekyll"
task :build do
  jekyll
end

desc "Serve on Localhost with port 4000"
task :server do
  jekyll "--server --auto"
end

def find_non_postsize_images(dirname)
  print "Walking directory " + dirname + "\n"
  files = []
  Dir.entries(dirname).each do |f|
    print " -> #{dirname}/#{f}"
    if f =~ /^\./
      print " is hidden..\n"
      next
    end
    if f =~ /\-postsize\.(png|jpg)$/
      print " is postsize already..\n"
      next
    end
    if File.directory?(dirname + '/' + f)
      files += find_non_postsize_images(dirname + '/' + f)
    else
      postsize_filename = f.gsub(/\.(png|jpg)$/, '-postsize.\1')
      if not File.exists?(dirname + '/' + postsize_filename)
        print " is a candidate (no #{postsize_filename}).\n"
        files << (dirname + '/' + f)
      else
        print " has a POSTSIZE already.\n"
      end
    end
  end
  return files
end

desc "Make images postsize if they aren't already"
task :postsize do
  image_candidates = find_non_postsize_images('images')
  image_candidates.each do |filename|
    width = %x(identify -format "%[fx:w]" #{filename})
    if width.to_i > 610
      postsize_filename = filename.gsub(/\.(png|jpg)/, '-postsize.\1')
      print "Converting #{filename} to #{postsize_filename} since it's #{width.to_i} wide\n"
      %x(convert #{filename} -resize 610x #{postsize_filename})
      print %x(identify #{postsize_filename})
    end
  end
end

desc "Serve on Localhost with using development version"
task :unstable do
  jekyll "--server", "../jekyll/bin/"
end

desc "Deploy to live"
task :deploy => :"deploy:live"

namespace :deploy do
  desc "Deploy to Dev"
  task :dev => :build do
    rsync "dev.appden.com"
  end

  desc "Deploy to Live"
  task :live => :build do
    rsync "base0.net"
  end

  desc "Deploy to Dev and Live"
  task :all => [:dev, :live]

  def rsync(domain)
    sh "rsync -rtvz --delete _site/ jamuraa@base0.net:~/sites/#{domain}/"
  end
end

desc "Create a new blog post"
task :new do
  print "Please enter in the title of the blog post: "
  title = $stdin.gets.chomp.strip
  name = title.gsub(/\s+/, '-')
  name = name.gsub(/[^a-zA-Z0-9_-]/, "").downcase
  time = Time.now.strftime("%Y-%m-%d")
  File.open("_posts/#{time}-#{name}.markdown", "w+") do |file|
    file.puts <<-EOF
--- 
title: #{title}
layout: post
date: #{Time.now}
tags:
---
    EOF
  end
  puts "Created '_posts/#{time}-#{name}.markdown'"
  sh "vi _posts/#{time}-#{name}.markdown"
end

desc "List all the tags in use"
task :list_tags do
  require 'yaml'
  tags = {}
  Dir["_posts/*"].each do |fn|
    print "Parsing #{fn}\n"
    meta = YAML.load( File.open(fn) )
    tags[fn] = meta["tags"] unless meta["tags"].nil?
  end
  print "All tags:\n"
  tags_with_counts = tags.inject({}) do |hsh, tag| 
    tag[1].each do |tagname|
      hsh[tagname] ||= []
      hsh[tagname] << tag[0]
    end
    hsh
  end
  tags_with_counts.to_a.sort { |a, b| b[1].count <=> a[1].count }.each do |tag, v|
    print " %03d - #{tag}" % v.count
    print "\n"
  end
end
