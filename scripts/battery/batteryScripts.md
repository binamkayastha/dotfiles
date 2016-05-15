#Battery Scripts
    Uses crontab to check periodically every 5 minutes, whether your battery
is lower than 20% or is higher than 99%. If so, it sends a battery
notification.

#To use:
Change YOURUSERNAMEHERE into whatever your username is. To find your
username run the command: echo "echo $USER"

Edit your crontab by using the command: crontab -e
Put this in your crontab file:

DISPLAY=:0
XAUTHORITY=/home/YOURUSERNAMEHERE/.Xauthority
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/5 * * * * sh /home/YOURUSERNAMEHERE/crontabScripts/batteryCheck.sh

#Common issues
Scripts:
 - Put both the script files in a directory called crontabScripts in your home directory
 - Make sure the scripts have executable permission, do this by running the
   command: chmod +x batteryNotif.sh, and chmod +x batteryCheck.sh
Dependencies:
 - Make sure your notify-send works, by running a test command: notify-send
   "test"
 - Make sure you have acpi, as this is what the scripts check for the
   percentage of you battery left.

