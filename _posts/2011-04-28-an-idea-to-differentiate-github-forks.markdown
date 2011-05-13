---
title: An idea to differentiate github forks
layout: post
date: Thu Apr 28 23:28:41 -0500 2011
tags:
 - life::hack
 - github
 - ideas
---
Lately I've been getting a little more into github.  Lately I've
converted the blog to jekyll, which has been doing me quite well, but
I wanted to add just a couple of features that I couldn't do via the
plugins interface, like I did with the [amazon liquid
filters](http://base0.net/posts/amazon-liquid-filters-for-jekyll).
The first was adding support for haml, but in a more integrated
fashion.

I've used a plugin for haml, that I can't really remember where I got,
but I did have to change the jekyll source.  Of course the way to
accomplish this on github is to fork the repository, make the changes,
and then push it back to github.  I thought that there might be some
of these already on one of the [521
forks](https://github.com/mojombo/jekyll/network) of the original
source to jekyll, but I couldn't really tell if they were.

The changes I on my [jekyll fork](https://github.com/jamuraa/jekyll)
are minor in general and not really of note, but I was frustrated with
looking through the forks that looked active on the network.  Most of
them have basically no indication of what has changed at all that is
readily apparent.  Of course with git you can make a diff of any two
branches, but with such a heavily forked source, it is particularly
hard to work out the differences.

So for my fork, I made one more change than the functional ones - I've
added to the very top of the README file a couple of lines explaining
what I did.

It's something that I propose for other people who have forks - adding
to the top of the README, which is one of the easiest things to see
on the github default repository, what has been changed from the
upstream that you forked from.   Other advantages would be that you
get some type of idea of how many changes there are from the upstream,
as well as some idea of the 'generation' of the fork - if you've
forked from a fork, there are two sets of changes, for example.  The
only downside that I can think of is that these are separate changes
that you don't want to have pulled to upstream.  Because of that, it
would be good to keep these changes on a different branch.

I'm going to be doing this for all of my forks on github in the near
future.

