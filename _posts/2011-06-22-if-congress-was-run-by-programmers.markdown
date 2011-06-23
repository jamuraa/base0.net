--- 
title: If congress was run by programmers
layout: post
date: Wed Jun 22 22:57:01 -0500 2011
tags:
 - life::hack
 - politics
 - versioning
 - crazy ideas
---
There was a large confusion when I first decided that I wanted to read
an actual law.  If you try to read the text of an actual law ([here's an example of some
text](http://thomas.loc.gov/cgi-bin/query/F?c112:1:./temp/~c112H3Isgr:e1604:)),
it's a bunch of really dense text which is all about what is changing
in the [US Code](http://uscode.house.gov/).  It's all about "adding
paragraph" or "adding an additional subsection", or "striking out this
section".

I was thinking that things would be different but still the same if
programmers ran congress.  The entirety of US code could be put into a
single git repository.  In order to propose changes, you would fork
the repository and then make the changes that you need.  A law in it's
current form looks a lot like a patch to the "source" of the US code.

Debate and voting could be done very similar to the github system
where you would make a pull request - then amendments to the bill
would be more commits which are added onto the pull request.  Debate
on the floor of congress would be similar to comments on that
request.

Once debate and amendments are over, you could put in your voting
electronically just like they do now for CSPAN and for the full count.
Right now there's someone who's job is to make sure that the code is
amended correctly - there are a lot of actual cases where the laws
aren't written correctly, and they are amending the wrong part of the
code or something.  It's the Office of the Law Revision
Counsel to [fix
them](http://www.theopenhouseproject.com/2009/05/14/what-happens-after-a-bill-becomes-a-law/).
It would be a lot easier with git, because of the automated merging.

Whether this would make the proposal, debate, and enacting of laws is
another question.  I like to think that it would make things a lot
faster of course, because I'm a programmer and I've seen the fact that
adding these types of "social code review" features make things a lot
more clear and speed up the development cycle.

It's also an idea for an open government project:  Keep track of all
of the laws which are in congress now in the form of patches to the US
code, keeping track via branches in git that are continued based on
the amendments to them.  You could also see which laws conflict with
each other by trying to merge them all together into a single "after
all these laws are passed" branch.

