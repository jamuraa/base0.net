--- 
layout: post
title: Sometimes, I find it's easy to be myself
tags: 
- hack
- learn
date: 2004-04-29 17:44:00 -05:00
---
Okay, I'm scatterbrained today, so this entry is unorganized and non-cohesive, as compared to my other ones, I guess.

<strong>UPnP</strong>

Gave my presentation on UPnP today, which was both a joy and a nightmare at the same time.  I didn't prepare like I had wanted to, so I was just going up and talking about the knowledge that I had gained from researching for 4 hours the previous day.   The good part is that the presentation went well by the standards of the class.  The bad part is that it went horribly by my own standards.  Overall, UPnP isn't really a deep topic if you have knowledge of the tools that it uses to do it's job: Multicast, HTTP-UDP, XML, and SOAP.  If you don't have knowledge, it would be a great project to build a UPnP client (or <em>control point</em> as the <a href="http://www.upnp.org">UPnP forum</a> likes to call it) and a UPnP server (<em>device</em>).  You would be forced to learn Multicast - something which I fully understand but haven't actually coded yet - and the full range of HTTP using SOAP and XML, which despite it's non-brevity I have to admit could actually be useful.

Overall UPnP is a good idea, and my favorite zero configuration network service location protocol so far.  Today we looked at UPnP, Jini, SLP, and Salutation.  It is simple, but can be very complex if needed.  Unfortunately the creators decided to be smart and use Multicast, which means that most networks will not be able to handle it correctly.  The fallout of this - if I wanted to use it in my home, I would have to install a "UPnP enabled" network hardware.  It also means that it will never be used on the whole internet.   There's another reason why it won't be used on the whole internet, however: it is too bandwidth-intensive.   Granted, I don't think there is a way to make a directory-less flexible zero configuration protocol with less bandwidth.

Some of the Mac Advocates (Zealots) out there are probably thinking I should look into Rendezvous.  It's something I'm working on, as well as looking into <a href="http://www.zeroconf.org">zeroconf</a>.  This is an area I'm fairly interested in, because I think it's the future of computing - at some point I'm thinking we'll have mature enough wireless that we will not even consider running cable, and at that point, we need devices to discover local services on their own.  Printers is a start, but it could be just the beginning.  Within this view are the problems of security, authentication (printing isn't free anywhere I know of, and even if it was, how long will it take advertising companies to hire people to walk around with devices just broadcasting ads to all printers in range), and human computer interfaces.

<strong>Being Productive</strong>

Yesterday, I considered myself fairly productive.  That was because the night before I actually got a project working (a sensor network simulator in QT), and then I started doing work like grading which always makes me feel productive because it doesn't take long and it's something I have to do.  I also did the research for 4 hours, which I haven't done in a while, but I don't actually mind when I'm interested in the subject at hand.  Not enough time lately to do such things.

Today, I don't consider myself to be productive, even though I have already done laundry and ordering for the lab, and I plan to get some more stuff done later tonight if possible. This weekend I need to be productive - I have another presentation on tuesday on the sensor network simulator, which, while it is working, is far from a final product I could actually present.

<strong>Journaling</strong>

I've considered lately making this journal friends-only and keeping non-Debian related stuff out of the public eye because I like to feed my ego and be in the semi-public eye.  This is something I'm reluctant to do because I know people read this journal who don't have an account on LJ and therefore couldn't keep up with my daily life anymore (Hi Mom).  Luckily, the University of Minnesota is a pretty cool school, and launched <a href="http://blog.lib.umn.edu">UThink</a>, a blog service for any U of M student recently, so I'm thinking of getting one of those and using that for a feed into <a href="http://planet.debian.net">Planet Debian</a>.  Now to make myself a <a href="http://www.livejournal.com/users/wouterverhelst/21322.html">hackergotchi head</a>.  On the other hand, I may just use my <a href="http://www.advogato.org/person/jamuraa/">advogato diary</a>.

I've considered abusing LiveJournal recently - a large number of the journals syndicated on Planet Debian are LiveJournals, so if I want to comment on them, I'd rather just have the user's journal entry to comment on.  I'd also be able to see their real userpics in this situation.  I've considered adding all of the people who are LJ users to my friends list and putting them into a "Debian LJ users" group so I can read them like my normal friends page.  I could take the other blogs that are syndicated at Planet Debian and turn them into syndicated feeds here at LJ, which is easily possible since there are no syndication points anymore.  After thinking about this a bit, I come to the conclusion that a bunch of these people would probably wonder why I friended them - I would be producing a footprint of friend-adding which is common to the serial adder.  So I keep <a href="http://planetdebian.livejournal.com">planetdebian</a> on my friends list and read them that way instead, which is just a slight inconvenience.

Okay, that was much longer than expected, and I even have more to say, or at least I did while I was walking here from home.

It feels like Friday.
