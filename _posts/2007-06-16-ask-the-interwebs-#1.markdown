--- 

layout: post
title: "Ask the Interwebs #1"
excerpt: |-
  Lately I have been thinking about switching source code management systems.  In years gone by, I have used CVS, Subversion, arch, and most recently bazaar-ng for managing all the source code that I have to change.  Lately I have been unhappy with the speed that bazaar takes to get some things done, and after watching a Google talk by Linus about Git, I thought I would give it a look.
  
  I was surprised to find out that it actually models the way that I work normally slightly better than the bazaar model does.
date: 2007-06-16 12:19:18 -05:00
tags: planet-debian, bazaar, coding, git, location-independence, scm
---
Lately I have been thinking about switching source code management systems.  In years gone by, I have used CVS, Subversion, arch, and most recently bazaar-ng for managing all the source code that I have to change.  Lately I have been unhappy with the speed that bazaar takes to get some things done, and after watching a Google talk by Linus about Git, I thought I would give it a look.

I was surprised to find out that it actually models the way that I work normally slightly better than the bazaar model does.   The main thing is that a repository holds a bunch of branches, but the working directory only has one of those branches checked out at any point in time.  I use bazaar with about 4-5 branches per project, and only work on one of them at once (normally, sometimes I want to transport a bug across a couple branches) - so the "working space replaced by branch you want to work on" actually works out OK for me.  I also need to collaborate with a bunch of projects at school and work that use other systems including CVS and Subversion, which Git seems to make it easy to do.

I did run into some questions that I don't really have a good answer to, however, therefore the new segment on the blog: Ask the interwebs.  Normally I would just ask on some IRC channel, but the Minneapolis public library doesn't seem to allow anything but HTTP out.  On to the question!

<strong>When using Git, how do you manage having multiple computers (at multiple locations) that you work on?</strong> I have approximately 5 different computers that I use regularly.  Luckily I have enough space to have git installed on all of them, and I also have a web server that I can use WebDAV on if necessary.   What I would like to have is a repository that I can pull from before I start work (if I am connected) and then push to when I finish so that the next computer I sit down at I can just pull again and get everyting.  I would like this to include any branches I may have made on the first computer.  Is this possible, hard, or easy for Git users?  How much do I need to worry about slowdown?  My WebDAV server is in the cloud, and I would prefer to be able to get up and go on say, a minute's notice.

I'm also interested on what your workflow is like even if it doesn't match the model I just described.  I'm open to changing - the bazaar-ng to git change is big enough that I can probably incorporate a new workflow as well.
