# Here is our target directory to store archives
TARGET=$PWD/test

# Create target directory if not exists
[ -d $TARGET ] || mkdir -p $TARGET

# Count existing archives
CNT=$(ls -l $TARGET | wc -l)

# Get current timestamp for uid of newly created archive
DATE=`date '+%Y-%m-%d_%H:%M:%S'`

# Create new archive name
DESTNAME=$(printf '%07d' "$CNT")
DESTNAME+="_$DATE"
DEST="$TARGET/$DESTNAME"

# Create new archive directory
mkdir -p $DEST

# Check if new created archive exists
echo $(ls -l $TARGET)

# Do something with newly created archive directory
# TODO move files into it or whatever
