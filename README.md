# Virtualdisk-Multi-use
Batch script used to manage a single virtual disk that is used simultaniously on multiple comuters using differencing disks

Its chaos, but it works. GamesSoucre.vhdx is used as the master file, it is kind of a backup in case you need to 
revert the main disk (updates), to a previous state. The purpose of this is you just need to mount the updates.vhdx disk on a
machine and add stuff into it. Then, you re-create differencing disks on a list of machines to get this new stuff, and it recreate a new 
differencing disk with the new content on each machine in the script. except the time it took to add these new files, distributing them 
only takes about 1-2 seconds per machine. after adding stuff to the Updates.vhdx, i run the script (option 2 then option 3 for now), and 
it distributes that stuff through the differencing disks. Interresting fact, every time you do this, all the stuff that a machine could have
added to its differencing disk is removed, and everything it deleted is added back, so the user controlling the updates disk have control
over the content on the disk without disabling each user from writing on its disk.

For example, i have a network of about a dozen of computers. I install a huge game on the Updates.vhdx disk, then i run the script with 2 and 3
and it takes less than 15 seconds and the game is playable on every machine, even if it had been installed only once.
