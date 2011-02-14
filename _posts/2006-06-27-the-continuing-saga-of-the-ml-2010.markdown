--- 
layout: post
title: The Continuing Saga of the ML-2010
tags: 
- hack
date: 2006-06-27 10:08:59 -05:00
---
I upgraded my CUPS to 1.2 today, and had a bit of trouble with getting the ML-2010 to work with it.  Given my <a title="ML-2010 Setup on AMD64" href="http://base0.net/archives/32-Getting-a-Samsung-ML-2010-to-work-in-Debian-Linux-amd64x86_64.html">other issues</a> with this printer, I thought I would expound on how I fixed yet another problem with this semi-supported printer.

The Samsung printing uses the linuxprint system, which uses a configuration file in an XML format which isn't specified.  In the default install for the Samsung linux tool, it is installed in /usr/local/linuxprinter/linuxprint.cfg with a link from /etc/linuxprint.cfg to it.  My file, after being setup, looks like this:
<blockquote>
<div id="_mcePaste">&lt;?xml version="1.0"?&gt;</div>
<div id="_mcePaste">&lt;linux root="/usr/local/linuxprinter" system="cups"&gt;</div>
<div id="_mcePaste">&lt;option name="ghostscript" value="/usr/bin/gs-esp"/&gt;</div>
<div id="_mcePaste">&lt;option name="address" value="localhost"/&gt;</div>
<div id="_mcePaste">&lt;option name="port" value="631"/&gt;</div>
<div id="_mcePaste">&lt;option name="lpr" value="/usr/bin/lp"/&gt;</div>
<div id="_mcePaste">&lt;option name="llpr-default-printer" value="lp"/&gt;</div>
<div id="_mcePaste">&lt;printer ppd="ppd/C/ML-2010spl2.ppd" queue="lp"&gt;</div>
<div id="_mcePaste">&lt;option name="Resolution" value="600"/&gt;</div>
<div id="_mcePaste">&lt;option name="PageSize" value="Letter"/&gt;</div>
<div id="_mcePaste">&lt;option name="InputSlot" value="AUTO"/&gt;</div>
<div id="_mcePaste">&lt;option name="MediaType" value="PRINTER"/&gt;</div>
<div id="_mcePaste">&lt;option name="JCLJamrecovery" value="RWJOff"/&gt;</div>
<div id="_mcePaste">&lt;option name="JCLEconomode" value="PRINTERDEFAULT"/&gt;</div>
<div id="_mcePaste">&lt;/printer&gt;</div>
<div id="_mcePaste">&lt;/linux&gt;</div></blockquote>
I discovered the hard way that if this file isn't there, the filter which is installed (ppmtospl2) doesn't work that well.  In this case, the printer queue is lp.  If this file is setup correctly, you can setup CUPS yourself, using the ppd file which is referenced in the linuxprint.cfg file.  If you have lost your linuxprint.cfg, I suspect you can just modify the above with the correct ppd - the Samsung package has many of them for different printers.   If you don't want to go that way, you can rerun the <tt>/usr/local/linuxprinter/bin/linux-config</tt> as before, but you will have to open your CUPS 1.2 server wide open while you are configuring it so that it can add the printer.  Also, I had to have a printer existing in the CUPS 1.2 server in order to have the linux-config program work at all.  I solved this by just adding a virtual pdf printer (using the package cups-pdf).  Even when you get linux-config to add the printer, it will not add it correctly for CUPS 1.2 - the device is incorrect - so you will have to reconfigure it via the web interface and give it the ppd which is in the directory anyway.

At least I have my printer back again.
