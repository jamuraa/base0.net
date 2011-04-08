--- 
title: Two RSS Reader Features I Would Like
layout: post
date: Thu Apr 07 21:20:36 -0500 2011
tags:
 - life::think
 - rss
 - software
---
More than a year ago I wrote a [couple](http://base0.net/posts/cullect-com-part-1-importance-and-googles-magic) [posts](http://base0.net/posts/cullect-com-part-2-skitzophrenia) about Cullect, currently
the best RSS reader that I've ever used.  Since it's shut off, I've had to make due with Google Reader for all of my RSS needs, since it's the next best thing.  Since then, I've been thinking about
building my own reader and thinking about features that I would love to have in a reader. 

The first is **OPML subscriptions**.  For a while now, I've tried to follow a number of blog aggregates, including [Planet Debian](http://planet.debian.org), [Planet Ruby on Rails](http://www.planetrubyonrails.com),
and a couple others.  Many of them include a OPML download of all of the feeds in the planet, in order to make it easy to subscribe to all of them at once.   The model for this would be a number of source feeds 
going into a single node, and then a single RSS feed coming out.  You can follow the planet's RSS feed and see all of the items from all of the feeds, or you can use the OPML list to subscribe to all of the sources.
I would like to have a reader that would periodically poll the OPML download, and add or remove the feeds that were added or removed from the planet.  Ideally it would also tell me what I was subscribed or
unsubscribed from.

The second is **Link collections**.  I've been following the [Hacker News Firehose Feed](http://static.scripting.com/hackernews/rss.xml), and a number of other tech blogs.  Because it's the firehose feed, there are
a lot of links submitted, and a lot of them are duplicates.  Some of these links are pointing to items that I will see later, or have seen before, or items that I have already read.  The feed reader should be smarter
about the items that it shows to me, analyzing the links that they point to and grouping them together.  Ideally it would try to find the end of those links, and show me the most relevant feed item, along with hiding
the ones that just point to the most relevant one, and marking them all as read when I read the item.  For bonus points, it can mark new items as read if all they do is point to the item that I've already read.

I am fairly sure that Link collections are more useful than OPML subscriptions, and they would actually also provide some important data about which items are the most important.  It's also possible that this
type of analysis is not being done because it requires too much processing power.  If we look at the importance angle, it suddenly sounds very similar to PageRank.  I am not sure if I will ever get around to making
that RSS reader, but if I do, it will definitely have both of these features.

