#/bin/bash


# Script to smoothen the rights on your webspace.
# Files should have 0644 and directories should have 0755 to run 
# smoothly.
# 
# 21.04.2015

# Make sure you define a path, otherwise the script will only work 
# in the actual directory
path=.

# find all directories and chmod them to 755:
directories=`find $path -type d -print0 | xargs -0 chmod 755`

# find all files and chmod them to 644:
files=`find $path -type f -print0 | xargs -0 chmod 644`

# If you are having a tmp folder wich needs 0777 uncomment the 
# nex line:
# tmp=`find $path -type d -name tmp -print0 | xargs -0 chmod 777`

# Now do it!
echo "changing permissions of directories.."
$directories
echo "done.."
echo "changing permissions of files.."
$files
echo "done.."
# Uncomment for tmp folder
# echo "fixing tmp folder..
# $tmp
# echo "done.."
echo "files and directories modified successfully."


