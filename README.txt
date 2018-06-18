README for unhidelib 0.1.2
By Sriranga Veeraraghavan <ranga@calalum.org>

unhidelib is a LaunchAgent plist file for MacOSX Lion (10.7) newer that
marks your ~/Library folder as visible each time you login.  For more
information, see:

https://www.macworld.com/article/1161156/view_library_folder_in_lion.html

To install:

$ make install

To run (if you didn't run "make install", or "make install" didn't work):

$ /bin/launchctl load ~/Library/LaunchAgents/org.calalum.ranga.unhidelib.plist
$ killall Dock

or

Log out and log back in

History:

v. 0.1.2 (06/18/2018) - Fix permissions on Launch Agent directory
v. 0.1.1 (05/16/2013) - Add killall Dock to Makefile and README
v. 0.1.0 (09/17/2012) - Initial release

License:

See LICENSE.txt

See Also:

See Also:

https://nathangrigg.com/2012/07/schedule-jobs-using-launchd#plist
https://stackoverflow.com/questions/4485972/library-launchagents-plist-runs-manually-but-not-automatically#10580187

