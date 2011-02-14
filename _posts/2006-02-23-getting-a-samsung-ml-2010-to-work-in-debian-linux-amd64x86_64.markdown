--- 
layout: post
title: Getting a Samsung ML-2010 to work in Debian Linux amd64/x86_64
tags: 
- hack
date: 2006-02-23 11:43:17 -06:00
---
I recently bought a Samsung ML-2010, which is a nice laser printer for home use, and tried to set it up on Debian, only to discover that Samsung wasn't hip to my architecture, namely amd64/x86_64.  It's no matter, their printer drivers still work, but you have to hack around a bunch of their checks.   I'm documenting them here because I'd rather not forget when I reinstall, and it's probably useful for others to know about it.

<strong>Step 1</strong> - Install the necessary packages - In my case all I needed to install was ia32-libs, because I already had all of the other packages needed installed.  The samsung tool uses cupsys, so you may need to install the cupsys package and it's dependencies.

<strong>Step 2</strong> - Unpack the driver - Get the driver from <a href="http://www.samsungprinters.com">Samsung</a> and untar it, producing a directory called "image"

<strong>Step 3</strong> - Hack around the glibc detection - The setup program is "smart" and tries to detect if there is a <span class="caps">GLIBC </span>with a high enough version.  The bad news is that it uses the wrong version, because it is not familiar with the ia32-libs positioning of it.  Luckily, it uses a script to do it's dirty work, so I just changed <code>scripts/test-libc.sh</code> to this:

[cc lang="bash"]
#!/bin/sh
#
# Test the Libc version and make sure it is &gt; 2.0
#
exit 0
[/cc]
<pre><span style="font-family: Georgia, 'Times New Roman', 'Bitstream Charter', Times, serif; line-height: 19px; white-space: normal; font-size: 13px;">Mostly because I know that we meet the requirement of glibc &gt; 2.0.</span></pre>
<strong>Step 4</strong> - Run the setup program directly - The setup script (script.sh) doesn't like to run on x86_64 architectures, because of it's architecture checking.  This is annoying, so looking into script.sh, find the program that it runs and run it directly, that is, run <code>./setup.data/bin/Linux/x86/glibc-2.1/setup.gtk</code> as root (it will be putting things in /usr/local).

<strong>Step 5</strong> - Add your printer to the setup utility - run /usr/local/linuxprinter/bin/linux-config and add the printer.  It's pretty straightforward, and actually follows the docs which Samsung gives out from here on.
