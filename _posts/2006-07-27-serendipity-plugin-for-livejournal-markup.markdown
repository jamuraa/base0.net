--- 

layout: post
title: Serendipity plugin for LiveJournal markup
excerpt: <a href="http://s9y.org/">Serendipity</a> is my blogging software of choice lately, but in the past I was a happy user of <a href="http://livejournal.org">LiveJournal</a>.  Fortunately, now my friends at LJ can keep up to date with my current blog, because of a great event plugin which mirrors posts here on LiveJournal (configurable of course).   On LJ people use markup like [<strong>lj user="jamuraa"</strong>] in order to make a handy link to the page of the livejournal user in question.
date: 2006-07-27 21:01:07 -05:00
tags: [hack]
---
<a href="http://s9y.org/">Serendipity</a> is my blogging software of choice lately, but in the past I was a happy user of <a href="http://livejournal.org">LiveJournal</a>.  Fortunately, now my friends at LJ can keep up to date with my current blog, because of a great event plugin which mirrors posts here on LiveJournal (configurable of course).   On LJ people use markup like [<strong>lj user="jamuraa"</strong>] in order to make a handy link to the page of the livejournal user in question.  I was missing that feature, so I coded up a small plugin for s9y which converts that into <img title="LJ user" src="http://l-stat.livejournal.com/img/userinfo.gif" alt="" width="17" height="17" /><strong><a href="http://jamuraa.livejournal.com/">jamuraa</a></strong>.  This is version 0.1, which only does the user tag.  It also works in comments if you enable it.  In the future, I hope to add code to detect the user type correctly (on LiveJournal there are <img src="http://stat.livejournal.com/img/community.gif" alt="" /> other <img src="http://stat.livejournal.com/img/syndicated.gif" alt="" /> icons for different user types).  I also probably should not hotlink to the .gifs on the livejournal servers.

To install, just unzip into the plugins/ directory of your s9y installation.

<a href="http://base0.net/uploads/code/s9y/serendipity_event_ljmarkup-0.1.zip">Download the LJ Markup Plugin 0.1 for Serendipity</a>
