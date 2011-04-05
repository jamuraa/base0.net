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
