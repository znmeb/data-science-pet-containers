
# Data Science Pet Containers

M. Edward (Ed) Borasky <znmeb@znmeb.net>, 2019-05-16

## Update - 16 May 2019

1.  I’ve cleaned out the old docs inherited from Hack Oregon. That
    repository is still there and being maintained, so this fork will
    have its own docs in the near future.
2.  The reference implementation is Fedora Silverblue 30. I’m also
    testing on Clear Linux, another container-centric Linux distro made
    by my neighbors at Intel in Hillsboro, Oregon. It’s highly optimized
    for Intel processors, of course. It should work anywhere Docker
    runs. Even Windows 10 Pro. I hope. :-)
3.  PostgreSQL now goes to 11\!
4.  The renaming stays - we are Silver Potato until somebody sends me a
    cease-and-desist letter.

## Update - 6 April 2019

You probably noticed the new name, `silver-potato`. I’ve been working a
lot with Fedora Silverblue and wanted something with “silver” in it, so
I asked GitHub to generate “memorable” project names. The second one it
came up with was `silver-potato` and I said, “OK, cool, done\!” Then
today I did a Google search for “Silver Potato”. And …

<http://www.kaiju.com/bios/sil_01.htm>

So watch this space - there’s probably another rename coming.

## Update - 17 September 2018

I’m forking this project to clean it up for use outside of Hack Oregon.
There are a lot of things in there that are specific to Hack Oregon,
like the Amazon Linux image, that don’t make sense for other users.

My working test environments are Windows 10 Pro with Docker for Windows,
Arch Linux and Fedora Silverblue 29. This last - formerly known as
Fedora Ataomic Workstation - was the original inspiration for doing
this. The Silverblue environment is designed for a
“pet-container-centric” workload.

I’m rebuilding the documentation with Bookdown. That’s in the source now
but I haven’t published it anywhere. License will be Creative Commans
Attribution Share-Alike.
