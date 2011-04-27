--- 
title: Duplicating Heroku on Linode
layout: post
date: Fri Apr 22 05:46:45 -0500 2011
tags:
 - life::think
 - hack
 - hosting
 - amazon
---
Well, as of this writing, there has been a major disruption in what you might consider to be the cloud infrastructure of the internet.   Amazon EC2 has been having issues in one of it's
major data centers for almost a day and a half now, which is what you
would say is something of a catastrophe for a service that's only
supposed to be down for 4 hours in an entire year.   Reports are
spotty, but most people should be seriously looking at other options
at this point.

The reason that you can be reading this right now, is because I'm not
running my blog or most of my other sites on anything that depends on
EC2.   However I do work on a couple of sites that use
[Heroku](http://heroku.com), which is one of the services effected by
this downtime.   Heroku is what some people would call a PaaS, or 
Platform as a Service provider.  They work with mostly
[Rails](http://rubyonrails.org) applications and make it dead simple.
Just to illustrate, the process for deploying a new Rails application
to Heroku is something like this: 

  * Run `heroku create appname`
  * git push git@heroku.com:appname.git master
  * Run `heroku rake db:migrate`

That's it, there is no step 3 if you don't have any initial data.
Heroku handles all of the web serving, the gem fetching, and the
database creating and configuration for you.  It's such a great
service that I really want to have something like it around for ever.
Until yesterday, I was content believing that Heroku would be around
to provide that purpose.  There are a couple of other PaaS providers
out there, but Heroku is the model that I want to emulate.

Today I am contemplating what exactly you would need in order to
duplicate the easy-deploy functionality that you have on Heroku on
personal dedicated or VPS server.  So far the services that I know
that you would need are: 

  * Apache + [Passenger](http://www.modrails.com) (or Nginx + Passenger) for serving rails
    applications
  * [Gitolite](https://github.com/sitaramc/gitolite/wiki/) (or maybe [gitosis](http://eagain.net/gitweb/?p=gitosis.git)) for handling the git repositories
  * Postgres database
  * [RVM](http://rvm.beginrescueend.com) for handling the possibly
    different environments that each application needs.
  * sshd setup on the server
  * A fairly complex git post-receive hook.

It wouldn't be too hard to create a simple script (or one of Linode's
[StackScripts](http://www.linode.com/stackscripts/)) to set up all of
this software with a single click / bash command once you have the
basic server setup.  In fact, [this
script](http://www.linode.com/stackscripts/view/?StackScriptID=163) is
probably a good starting point, as it sets up nginx, passenger,
postgres and Ruby Enterprise Edition.

The tricky part is the post-receive hook of course, which needs to do
the heavy lifting of forking what was just pushed, setting up rvm
correctly, running bundle install on the application, and resetting
the server.

There are a bunch of features of heroku that aren't duplicated by this
type of a setup, but I think that this would cover the 80% case.
It also has some advantages like having persistent local storage
available that aren't available on heroku.  If this outage goes on for
very much longer, I might end up setting up this stack just for one of my
current clients.  If I do, then I'll probably share the setup
instructions here.

