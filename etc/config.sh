#
# configurations for this service shell scripts and run files
#

## Where is our release/prooject directory located?
RELEASE_DIR="$HOME/releases"
export RELEASE_DIR


## A place to generate files into
WORKSPACE_DIR="$HOME/workspace"
export WORKSPACE_DIR


## Where is the qmail app?
QMAIL_DIR="/var/qmail"
QMAIL_CONTROL_DIR="$QMAIL_DIR/control"
export QMAIL_DIR QMAIL_CONTROL_DIR


### Configuration ends, sanitize our environment now ###

## A non-existing workspace is not very usefull
if [ ! -d "$WORKSPACE_DIR" ] ; then
  mkdir -p "$WORKSPACE_DIR"
fi
chown $SRV_USER_ID:$SRV_GROUP_ID "$WORKSPACE_DIR"


## Make sure our service UID can manage all the services
[ -d "./supervise" ] &&  chown -R $SRV_USER_ID:$SRV_GROUP_ID "./supervise"


## On runfiles, load parent and local configuration file, if available
[ -d "../supervise" -a -f "../cfg" ] && . "../cfg"
[ -d "./supervise"  -a -f "./cfg"  ] && . "./cfg"
