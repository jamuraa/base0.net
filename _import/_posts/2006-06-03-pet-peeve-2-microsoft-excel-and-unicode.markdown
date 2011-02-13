--- 
wordpress_id: 166
layout: post
title: "Pet Peeve #2: Microsoft Excel and Unicode"
date: 2006-06-03 22:21:31 -05:00
tags: hack
---
Recently I was working on an application for ICRA2006 and I needed to output some data to be read by Excel.  This would seem like an easy problem, just output in CSV and Excel can open the text just fine.  Unfortunately Excel has one of the most backwards implementations of international character support that I have ever worked with.  Being nieve to this, I simply tried UTF-8.  I was greeted with multiple strange characters in the place of my normal umlauted and tilde-d letters.  A quick search turned up that when Excel reads a CSV, it assumes that it is in ASCII or .  However, you can import the CSV as a text file and select it as unicode.  This is where my real pet peeve is:  You can't select the character set of a CSV in Excel.  You have to rename the file as a .TXT file and go through a wizard, basically spelling out that yes, it is comma separated and yes, this is the data I want to import.  There's one drop down box which specifies the character set.  Of course Unicode is supported there.

In the search for a solution to this problem which didn't involve a 10-step process for the customer, I discovered the <a title="KDE Architecture - Unicode Howto" href="http://developer.kde.org/documentation/library/kdeqt/kde3arch/KDE-Unicode-Howto.html">Unicode marker</a> which is supported by Wordpad, but amazingly, does nothing but add a bit of garbage in Excel.  The sad part is that I can be almost certain that the next version of Office will continue to have this problem.  My only hope is that somehow the XML format will be open enough to just create a native Excel file.
