---
title: Reader was failing me before Monday
layout: post
date: Fri Nov 04 23:04:58 -0500 2011
tags:
 - google reader
 - life::hack
 - life::think
 - performance
---
Last Monday, Google deployed a [redesign of Reader](http://googlereader.blogspot.com/2011/10/new-in-reader-fresh-design-and-google.html).  
The Internet was [not][1] [happy][2].  There are a bunch of problems with the new design in my opinion.  The design takes up too much space
with headers, not enough space for content, and forces anyone who wants to share to use Google+, jumping out of "the flow".   People are
rebelling, even going so far as to build [a clone of the previous version](http://hivemined.com) and [offer their services to fix it](http://fury.com/2011/11/my-offer-to-google-reader/).  Aside from the problems with the new design,
though, Google's Reader has issues, and they were broken far before Monday.

The biggest gripe that I have with Reader is the performance.  For what looks like a basic page, it's remarkably easy to overload
your browser with it.   I regularly use Reader to browse through thousands of articles at once.  Because of the [infinite scrolling][3]
feature, the reading pane can get very long, and even the [best browser][4] can start cranking the CPU cycles.  With the old design,
I would reflexively hit the "R" button (to reload the page) every hundred items or so.  If I didn't, it would freeze up and sometimes
crash the browser.

Not that it's much better in the new design either - performance is at least a hundred times worse than it was before.  In addition to the
infinite scrolling, they decided to add a bunch of other new features.  The page itself pegs one of my CPU
cores with less than 15 stories on the scroll list, and reloading easily can take half a minute if I don't catch the slowdown fast.  The
worst offender seems to be related directly to the new Google+ sharing feature.  Every story has a "plus one" button attached to it, and
takes a round trip from the browser to plusone.google.com to find out how many other surfers pressed the little colorful button.  For the
company which invented [SPDY][5], there is something wrong with expecting a browser to round-trip hundreds of times just for a glorified
counter.  I added the domain to the blackhole in my computer's `/etc/hosts` file and the new design got faster immediately.   I'm still
reloading easily every 50 stories though in order to make sure that the browser doesn't crash.

I'm no javascript application expert, but it seems like the major problem is the length of the reading pane.  One solution which I think
could be tried is to remove the large selection of 'read' stories from the page completely.  It is a method that [Cullect][6] used when
it was in service, and it worked well.  It was user-triggered then, but I think it might be possible to make the removal of stories that
you are far past automatically in the same way that stories are added automatically just slightly before you get to them on the page, making
the infinite length page a little less infinite in length, and making the performance a little more tolerable.  For bonus points, make it
possible for me to have only one story visible at a time, and load the next or previous story on demand when I use the magic "j" or "k" buttons.
After all, the browser is going round-trip to Google's servers already.

[1]: http://www.google.com/support/forum/p/reader/thread?tid=6de7f0a78cd35b95&hl=en
[2]: http://www.betabeat.com/2011/11/02/sharebros-everybody-hates-the-new-google-reader/

[3]: http://www.infinite-scroll.com/
[4]: http://www.google.com/chrome
[5]: http://www.chromium.org/spdy

[6]: http://base0.net/posts/cullect-com-part-2-skitzophrenia

