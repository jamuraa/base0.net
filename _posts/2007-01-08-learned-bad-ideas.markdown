--- 

layout: post
title: Learned Bad Ideas
excerpt: |-
  There are some things that I have learned over the years as bad practice.  There are some that I have learned through reading and contemplation, and a little experimentation.  One of the categories of bad things that I have learned is visual aids for statistics.  There is basically one cardinal rule for data presented in a graphical form:
  <blockquote>Let the user see the actual data.</blockquote>
  It seems kindof obvious, doesn't it?  I'm presenting data, you should be able to see it.
date: 2007-01-08 19:44:57 -06:00
tags: play, think, live-journal, planet-debian, charts, data, graphs, visualization
---
There are some things that I have learned over the years as bad practice.  There are some that I have learned through reading and contemplation, and a little experimentation.  One of the categories of bad things that I have learned is visual aids for statistics.  There is basically one cardinal rule for data presented in a graphical form:
<blockquote>Let the user see the actual data.</blockquote>
It seems kindof obvious, doesn't it?  I'm presenting data, you should be able to see it.  If you want to show me that there are 450 widgets, and 230 whazits, and only 210 whositz, then you should show those.  The simplest way of doing this is by just listing them out in a table:
<table style="padding: 0" border="1">
<tbody>
<tr>
<th>Type</th>
<th>Amount</th>
</tr>
<tr>
<td>Widgets</td>
<td>450</td>
</tr>
<tr>
<td>Whazits</td>
<td>230</td>
</tr>
<tr>
<td>Whositz</td>
<td>210</td>
</tr>
</tbody></table>
That's simple, isn't it?  However, it doesn't help the viewer any.  They're pretty good if you want to know exactly how many of something there is, but not great at other things that you want to do with data.  How do you find the minimum (or maximum) of all of the values?  You scan, remembering the highest one you saw so far, and then go back to that one and find out.  If the goal is to somehow compare, the viewer will be helped out by using a graphical display of some sort.  One thing that humans are good at estimating is length.  Quick, tell me what we have the least of:

<!-- s9ymdb:9 --><img style="border: 0px; padding-left: 5px; padding-right: 5px;" src="/wp-content/uploads/graphs/bargraph.png" alt="Bar graph.  If you're reading this with a text-only browser, this post won't be as interesting. Sorry, lesser-sighted folks." />

That was easy, wasn't it.  Bar charts are good - they can still be <a href="http://junkcharts.typepad.com/junk_charts/2006/11/dropped_just_li.html">abused by people in evil ways</a>, but most of the time they're pretty useful.

All of this is working up to pie charts.  What's smaller, Whazits or Whositz here:

<!-- s9ymdb:10 --><img style="border: 0px; padding-left: 5px; padding-right: 5px;" src="/wp-content/uploads/graphs/piegraph.png" alt="Pie graph.  Text-only people can breathe easy, they can't see the evil." width="243" height="203" />

Is Widgets half or more than half of the pie?  Pie charts are the bad seed of the graph world.  They aren't very useful, hang out a lot, and don't help you much.  The worst thing about pie charts is that they aren't even good at the thing they're supposed to be the best at: comparing relative sizes.  Consider thanksgiving, or christmas, or whatever large gathering you prefer where there is pie.  Lots of pie slices are laid out on the table.  Which one is the biggest?  It's hard to tell.  It's even hard to cut even slices from a normal pie.  Sure, you can cut in 4ths, 6ths, or 8ths, but I challenge you to cut a pie in 5 pieces equally - it's really hard!  It's because humans aren't great at judging the differences between angles. They're only really good for seeing one thing: the largest piece in the pie.  Even then, it's sometimes questionable - if you looked at a evenly sliced pie, could you tell the difference between a 23% piece from a 20% piece? The bad thing about this is that they are ingrained into our culture.  There wasn't a finance report in the last 10 years without a pie chart.

All of this ranting was basically brought to you by a <a href="http://www.boingboing.net/2007/01/08/the_mother_of_all_bo.html">recent post</a> on <a href="http://www.boingboing.net">BoingBoing</a>.  This post features the most horrible monstrosity
I have seen in a long time: the hierarchial pie chart.  Feast your eyes on <a href="http://www.neoformix.com/2006/BoingBoingAnalysisPart5.html">this monstrosity</a>. I challenge any reader to tell me: what is the smallest third-level category?  What is the largest?
