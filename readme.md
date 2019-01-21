## Paste Link Here
### A Linux Mint Nemo Action/Script Set

**TLDR;**

requirements:  must install xclip and xdotool,  

`sudo apt install xclip xdotool` 

1. Download and extract this file https://download.kebler.net/Nemo-Copy-Paste-Link-to-File.tar.gz into  ` ~/.local/share/nemo/actions`.   

2. Make sure the two bash scripts (.sh) have executable permissions.

3.  In Nemo select a file or directory, then right click and select `Link to Clipboard`

4.  Navigate to your desired destination folder, make sure nothing is selected.  Right Click and select `Paste Link Here`

Have fun. Only tested in fresh install on 19.1.  No warranties of nada including crashing nemo or mint.  Scripts have a commented debug lines you can uncomment to get a log file if you have issues.

Provided as is...it's working for me.  If you have problems make an issue.   

---- back story

In other OS there has been this nice feature where one could copy a file and then paste it as a link in another directory all from the context menu.
In several posts here and elsewhere I have seen requests for this (downright begging)

The current `Make Link` is fine except it has two shortcomings.   

1. it puts the link in the same directory from which you must move it to where you want.

2.  It adds a 'Link to' preface which most time the user will need to remove once they move the link.  This is done so that it doesn't conflict with existing file being as the link will be placed in the same directory.

So after to putting a little thought to this I have come up with a couple nemo actions and couple bash scripts that does the trick!

---

The code consists of two bash scripts called by the two nemo actions
`path2clip.sh` copies the currently selected file or directory path to the clipboard

`clip2link.sh` grabs path in clipboard and current directory and makes a link - needs to reload Nemo after making link for it to be seen

The two nemo_action facilitate those.

