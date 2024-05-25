<h1> Disable BITS and DoSvc forever </h1> <br>
If you have a slow Internet connection, you may notice that services such as: Background Intelligent Data Transfer Service (BITS) and Delivery Optimization (DoSvc) can ship the Internet to you, preventing other programs from working.

After some time exploring the Internet, you will notice that these services can be turned off, but in fact they are turned on again. It's a simple one.the bat file that needs to be added to the startup, and each time Windows starts, these services will be closed and disabled.
<br>
<br>This is a very simple but working (and slightly crooked) way, in the future I will try to implement it in C.

<i> It will always work. </i>

<h2> HOW TO INSTAL </h2><br>
<b>Path 1 (short)</b> <br>
Download «Start.bat» and run it, then go to the task manager and make sure that a file named «DoSvc_BITS.bat» appears in the startup. Delete «Start.bat».
<br>
<br>
<b> Path 2 (long) </b> <br>
Download «DoSvc_BITS.bat». To add a file to the startup, you need to: Win + R — then write it there — 'shell:startup' (without quotes) — enter. And move it to this folder .the bat file.

Attention, this is to disable the possibility of updating!
<br>
<br>
<h2> Want to add your own services? </h2> <br>
To add your service, you need to register its short name twice, let's, for example, turn off a service such as: «Update Orchestrator Service», its short name is «UsoSvc».

You need to switch to auto-upload: Win + R — then write it there — 'shell:startup' (without quotes) — enter. You will see the «DoSvc_BITS.bat» file there. Right-click — edit — and add two lines there, it stops the service, the second one turns it off —
<br> net stop UsoSvc
<br> sc config UsoSvc start=Disabled
<br> Instead of «UsoSvc», insert the name of the desired service.
