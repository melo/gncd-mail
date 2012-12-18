#
# configurations for this service shell scripts and run files
#

## Where is our release/prooject directory located?
RELEASE_DIR="$HOME/releases"
export RELEASE_DIR


## Where is the qmail app?
QMAIL_DIR="/var/qmail"
QMAIL_CONTROL_DIR="$QMAIL_DIR/control"
export QMAIL_DIR QMAIL_CONTROL_DIR


### Configuration ends, sanitize our environment now ###

## Make sure our service UID can manage all the services
[ -d "./supervise" ] &&  chown -R $SRV_USER_ID:$SRV_GROUP_ID "./supervise"


## On runfiles, load parent and local configuration file, if available
[ -d "../supervise" -a -f "../cfg" ] && . "../cfg"
[ -d "./supervise"  -a -f "./cfg"  ] && . "./cfg"
