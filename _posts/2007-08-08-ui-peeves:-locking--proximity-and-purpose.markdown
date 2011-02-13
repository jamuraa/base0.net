--- 
wordpress_id: 220
layout: post
title: "UI Peeves: Locking, Proximity and Purpose"
excerpt: |-
  I have had, on occasion in the past, a reason to use the wonderful <a href="http://tortoisesvn.tigris.org/">TortoiseSVN</a> software.  It is, by all standards, a really great solution for someone wanting to use SVN in a MS Windows environment, and uses the official svn client in order to leverage open source as much as possible.  Recently I have been using it a bit more as I work at Honeywell as a programmer.  I've come across a couple things that bug me about the interface.
  
  The first is that some actions inexplicably lock the place that initiates that action.
date: 2007-08-08 22:37:54 -05:00
tags: think, hack, live-journal, planet-debian, honeywell, pet-peeves, user-interfaces, windows, coding, scm, subversion, tortoisesvn
---
I have had, on occasion in the past, a reason to use the wonderful <a href="http://tortoisesvn.tigris.org/">TortoiseSVN</a> software.  It is, by all standards, a really great solution for someone wanting to use SVN in a MS Windows environment, and uses the official svn client in order to leverage open source as much as possible.  Recently I have been using it a bit more as I work at Honeywell as a programmer.  I've come across a couple things that bug me about the interface.

The first is that some actions inexplicably lock the place that initiates that action. The best example I have of this is when I am looking at the window for an Update, and want to see what happened in the log, I click the button to open the log, and I can't use the window while the log downloads.   Sometimes this can be an issue because the server is pretty slow at producing logs for some reason (it's beyond me, and NotMyProblem(tm) because I'm not in charge of the admin).   This makes it irritating because I can't inspect other files while the log is downloading.  Strangely, the server actually will return other requests quickly, like the request needed to see the diff between the working copy and the tree.  It would be much better if the windows were separate - they're not related to each other in effect, so the locking of the initial window is completely useless.  I could have called up the log from another action, that would leave the update window perfectly usable, so I know it's possible.

The second problem that I have run across more than once relates to the proximity of actions in the right click menu while committing a change.  Take a look at the screenshot of this menu.
<div class="serendipity_imageComment_right" style="width: 338px;">
<div class="serendipity_imageComment_img"><!-- s9ymdb:23 --><img src="/wp-content/uploads/random/stupidcontextmenu.png" alt="" width="338" height="249" /></div>
<div class="serendipity_imageComment_txt">TortoiseSVN commit context menu</div>
</div>
There have been many times when using this window that I realize that I forgot to add a file that I need to commit, so I right click on the file and move down to the "Add" menu item, only to miss and click on the "Delete" item.  "Delete", when used on a unversioned file, performs a windows delete, causing me to curse at the (now missing) entry in the commit log and go running to the recycle bin to retrieve this temporarily lost file.  These two options in the context menu are entirely too close to each other.  The "Delete" and "Add" actions have <strong>completely opposite</strong> meanings and effects, and having the program do exactly the opposite of what you expect is what I consider to be a Very Bad Thing.  I would move the "Add" action up to the top of the list (it is, by far, the most common reason for me to use the context menu), or at least place another menu item in between.

I'm feeling like I'm being very unhelpful here, complaining about these issues in an open source project and not producing a patch to fix these issues.  I may produce one in the near future - unfortunately when I'm not at Honeywell, I don't really have a Windows development environment setup.
