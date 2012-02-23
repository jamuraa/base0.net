--- 
title: Computing Happiness
layout: post
date: Fri Feb 17 23:37:41 -0600 2012
tags:
 - rules
 - life::think
 - Linux
 - software
 - hardware
---

I've been thinking lately about how happy I am about the state of the
computers that I do most of my work on.  I've gotten into a situation
somehow where most of the work that I do is on Linux computers, which
I have enough control of to set up exactly as I want.  This means that
they all reasonably match, because I use
[Dropbox](http://db.tt/WViGWyU) to store my dotfiles.  I don't have an
exact copy on all the machines, but the basic plan for when I set up a
new development environment is to copy the .Xdefaults file, then copy
the awesome config file, find some backgrounds that are the right
size, and then symbolic link a bunch of files to the synced folder.
Using that synced folder for the dotfiles makes it certain that I am
updating for example my vim config file (and plugins) across all the
systems, and the git aliases as well.

It reminded me of Alex Payne's [Rules for Computing
Happiness](http://al3x.net/2008/09/08/al3xs-rules-for-computing-happiness.html),
which I had bookmarked a while back but didn't actually read through
and think about until now.  I agree with most of them in principle, if
not by exactness.  The list has certainly stood the test of time.
The changes that I would make are mostly in the hardware section.  I
don't use Macs anymore because I use Linux on most of my machines, so
I just need to make sure that the hardware works.  Lately that has
only been a second thought, because hardware is starting to become
even more standardized than it used to be.  In the past, you would
have to worry about your network card being supported, maybe the sound
card, or the disc burner.  Nowadays, the only thing I double-check is
the graphics card.

I also use a
Desktop machine even though I have a [pretty rocking laptop][1],
because I really like working at a big display and having a numeric
keypad when I am typing for some reason.  I could argue that the
compiling that I do rather regularly is resource-intensive, but that's
not really the case most of the time.

[1]: http://base0.net/posts/the-new-macbook-air-and-my-alternative

So, notwithstanding the rules from Alex, which are (mostly) still
valid, my rules for computing happiness (with a slant toward
programmers):

### Software
  * Use a plain text editor that you know well. (Yes, it's on the
    other list. It is important.)
  * Use only software that you either don't care about fixing,
    or you can understand the source code to.
  * If you do something more than 5 times, write a program to do it
    for you instead.
  * The command line is a powerful tool.  Learning awk and sed will
    pay back in spades.
  * Sync your configurations so you can go from zero to programming
    comfortably in 5 minutes or less.
  * Prefer older, simpler versions of things instead of newer, GUI
    versions.
  * Don't do anything with a program that you can reasonably do with
    your text editor and a plaintext file.
  * Use source control for everything you will edit over more than
    one month, and all software you develop.

### Hardware
  * Use Linux on commodity hardware for everything.
  * Get as much memory as is possible in every computer.
  * Try not to use anything but Linux on commodity hardware.
  * Get at least two monitors if you are working at a place for more
    than three hours regularly.  As big as you can afford.
  * Backup everything you can't replace easily.  Trust no hardware.

If I can't follow these rules, I don't make a big deal out of it.  I
still use Windows for Office, Excel, and other random stuff at work,
and I use it for developing programs that others should be using.
It's just not what I use for every day.  However, if I am working for
an extended period of time, following these rules make me happy and
focused on the work instead of focused on the thing getting between me
and the work.

