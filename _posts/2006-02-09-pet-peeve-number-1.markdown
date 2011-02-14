--- 
layout: post
title: Pet peeve number 1
tags: 
- think
- hack
date: 2006-02-09 17:18:04 -06:00
---
Okay, something bugs me, and it's somewhat irrational, and somewhat rational.  I totally hate really long <span class="caps">URL</span>s needed to "verify" that the sign-up is valid.  There are more than one type of these, sometimes they are required to continue into the site, sometime just for extra features, but they are more often that not, very long.  Now, I don't like long <span class="caps">URL</span>s in general in emails, because there are <a href="http://xrl.us">many</a><a href="http://tinyurl.com">services</a> which allow you to shorten them for public use.  Recently I signed up for <a href="http://30boxes.com">30 boxes</a> and they sent me this monstrosity:
<pre><code>http://30boxes.com/signup.php?action=finishSignup&amp;d=aSDFJKLa43da
safjdAL5RLKj4afjrafa45J5kljtyTGJrALKJgFKLsaj5klJ4jkljakljdkalflk
fASJKjdfa4r23890fdfjskl342390fakjlei309dk390ujkal39032kd03j9djd9
</code></pre>
Okay, so lets look at this rationally for a bit.  How many unique strings can they have from that huge behemoth of an identifier.  There are 145 characters.  They are using the entire uppercase (26), lowercase (26) and numbers (10), so there are a total of 62 unique symbols for each spot.  That gives us a total of 62<sup>145</sup> different strings.  That's <span style="font-family: monospace; line-height: 18px; font-size: 12px; white-space: pre;">7884877985816054063923340812443632867980747435265064547440365297877812230999983634922053904324829205441837830921209410767866820350392591496465345718879667228701033177516338179747430870298820209307821377548903252404736464300144342990107276174332102635697681203 <span style="font-family: Georgia, 'Times New Roman', 'Bitstream Charter', Times, serif; line-height: 19px; white-space: normal; font-size: 13px;">different combinations.  In scientific notation, thats 7.8 × 10<sup>259</sup>.  Just for comparison, the entire number of atoms in the universe is high-balled at 6 × 10<sup>79</sup> (on <a href="http://www.sunspot.noao.edu/sunspot/pr/answerbook/universe.html#q70">this</a> page).  That's more than a  googol of identifiers for <span class="caps">EACH ATOM, EVERYWHERE. </span> Isn't naming each atom once enough?  Then you would only need 45 characters, which would nicely fit in one line of my email client if you just shortened your "finishSignup" to "fS" and action to "a".  As a bonus, it also saves you approximately 117 bytes of bandwidth per email.</span></span>

<span class="caps">UPDATE</span>:  Apparently it has <span class="caps">ALL </span>the information, in addition to being completely too long.  I replaced it with random crap.
