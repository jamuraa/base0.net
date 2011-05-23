--- 
title: Github branching with feature orthogonality
layout: post
date: Sun May 22 22:37:08 -0500 2011
tags:
 - life::hack
 - code
 - github
 - android
 - tagtime
---
This weekend while I was playing around with stuff, I decided to improve an app that I've been using on my phone for a while.  The app is
[Tagtime][1], an application which helps me keep track of the time that I am spending on things by sampling me randomly.  I was happy to
find it because I was thinking of building an app with a similar purpose (although my approach was not statistical but rigorous) and
because it was both simple and open source.  There were a couple of things that I wanted to improve about it, and the source is
[right there][2] on github so I could download it and start making it better.   Also github is a "social coding" platform which means that
I can make changes to the app and then submit a "pull request", requesting that the feature that I worked on be included in the main
repository.  The basic idea is that people will fork (or branch, the terminology is fuzzy) the repository and then make improvements, and
if they are good, then they will be included in the "canonical" version of that repository, and be used by more people.  This is the
way that things like Linux have worked for a while on git, but it was kind of tricky to set it up until github came along and made it
easy.

One thing that github encourages on it's [help page on pull requests][3] is that you make a feature branch for your changes, so that
it's easy to update the pull request later, and so that it's not mixed in with a bunch of other things.  This is generally a good idea,
but I hadn't used it in practice until this weekend.  I discovered that it's a little cumbersome when you are doing a lot of little changes
like the ones I made.

First, you need to know that you're actually working on a feature, and not get distracted by some other feature at the time.  Git is actually
pretty good at this, because if you find that you're mixing a couple of features together, you can simply not commit some of the files,
or even only commit the [parts of the files you want][4].  Next you need to actually create the branch of the feature.  Thinking up a name
for this branch might be important, but it's not as important as later when you actually initiate the pull request.  After that, you do the
work on the branch, and then commit your changes to your version of the repository that belongs to you.   Finally, you go to the github site
and click the pull request button.  Then you will fill out a title and description for your pull request (this is the more important part).
Hopefully then someone will look at it and integrate it in.

Then you go and work on another feature.  But wait, what should your other feature be based on?  You have to branch from somewhere in step two.
Here's where **feature orthogonality** comes in.  If your feature doesn't depend on the one that you just worked on, then you should
make another branch from the original fork's master branch.  Hopefully you haven't actually committed any on *your* master branch
in the meantime, and it's easy to find.

Maybe an example will help.  Originally I branched [my repository of TagTime][5] from the [original repository][2].  Then I set out to make
my feature reality - that is, cleaning up tags that aren't in use because they will clutter my screen when I'm tagging (I mistyped them once and now they're everywhere!).
I created the `cleanup-tag-button` branch from the `master` branch and then worked on my changes.  I committed them (they weren't much, just one commit)
and then generated [this pull request][7].  Then I wanted to work on another feature - there was a delay in hitting the buttons when it polled
me.  I rewound my branch to the `master` branch again, and then created the `speedier-tagging` branch from the same spot.  These features
were orthogonal, which means that I could do this without an issue, and test the features in isolation.  I did the same to update the icon
that is used in the notifications, because it was black-on-black in my UI, adding a white background in the `visible-icon` branch.  You can see
how all three branches sprout from the same commit (the most recent commit on the "canonical" repository) in my [network][8].

There are two actual issues that I found when I was
working with this model.  The first actual problem is that when I was working on this, I
wanted to have a copy of the app with all of my new features in it.  For this
reason I created the `integration` branch, so that I could put all of my
features together.  This makes it easy to make sure that my features are
orthogonal as well, because if I can't get `integration` to work, then they are
conflicting.   It's somewhat annoying to re-merge all of the branches every time
that I update it just to get a new copy.  The second actual problem was that I
was stuck working in the branch for each feature when I was working on the feature.
This meant that I couldn't use some of the changes that I made in the other branches
and I was somewhat lost when I was testing it on my phone when, for example, the
visible icon wasn't there when I was testing that the speedier tagging worked.

I also thought of two theoretical issues that I didn't actually run into, but could have
imagined running into quickly.  The first was the problem of non-orthogonal features -
should they just be included in the branch for the feature that they depend on, essentially
making them part of that feature, or should I branch again from that feature branch to go
one level deeper.  What would a pull request for the second feature look like?  I ran into
this problem because the canonical repository for TagTime has a bunch of files in it that
shouldn't be there, compiled files that I don't expect in the repository.  I would have
based my branches off of a cleaned up version of the repository, but I didn't want to force
that choice onto the original branch, so I was working in the "messy" repository for most of the time.

The other
theoretical issue involves publishing, tracking, and rebasing.  I would like to say that if the
"canonical" repository master changes, then I could rebase the feature branches against it, but if
I do then I have to push a non-fastforward of that branch to github, and it looks all strange.
If someone had that branch and was forked off of my `integration` branch for example because
they want all of my features, what would happen when I rebase the feature branch?  It's unclear
to me.

All in all, I was happy with the model.  I'm not sure what a better model would be - maybe there
is something in [darcs][9] or [mercurial][10] that would be better for this type of collaboration
and wouldn't have the issues of above.  In the meantime, I'm going to keep trying to keep my features orthogonal and work with a feature branch model.

[1]: http://messymatters.com/2011/04/30/tagtime/
[2]: https://github.com/dreeves/TagTime
[3]: http://help.github.com/pull-requests/
[4]: http://tomayko.com/writings/the-thing-about-git
[5]: https://github.com/jamuraa/TagTime
[7]: https://github.com/dreeves/TagTime/pull/3
[8]: https://github.com/jamuraa/TagTime/network
[9]: http://darcs.net/
[10]: http://mercurial.selenic.com/

