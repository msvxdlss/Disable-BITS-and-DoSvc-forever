If you have a slow Internet connection, you may notice that services such as: Background Intelligent Data Transfer Service (BITS) and Delivery Optimization (DoSvc) can ship the Internet to you, preventing other programs from working.

After some time exploring the Internet, you will notice that these services can be turned off, but in fact they are turned on again. It's a simple one.the bat file that needs to be added to the startup, and each time Windows starts, these services will be closed and disabled.

It will always work.

HOW TO INSTAL
Path 1 (short)
Download «Start.bat» and run it, then go to the task manager and make sure that a file named «DoSvc_BITS.bat» appears in the startup


Path 2 (long)
Download «DoSvc_BITS.bat». To add a file to the startup, you need to: Win + R — then write it there — 'shell:startup' (without quotes) — enter And move it to this folder .the bat file.

Attention, this is to disable the possibility of updating!
