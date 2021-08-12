# --one-file-system, -x    don't cross filesystem boundaries
# --recursive, -r          recurse into directories
# --links, -l              copy symlinks as symlinks
# --perms, -p              preserve permissions
# --times, -t              preserve modification times
# --group, -g              preserve group
# --owner, -o              preserve owner (super-user only)
# --xattrs, -X             preserve extended attributes
# --verbose, -v            increase verbosity
# --hard-links, -H         preserve hard links
# --sparse, -S             turn sequences of nulls into sparse blocks        
# -P                       same as --partial --progress
# 
#
# --archive, -a            archive mode; equals -rlptgoD (no -H,-A,-X)
# -D                       same as --devices --specials
#
#
# A  trailing  slash  on  the  source changes this behavior to avoid creating an additional directory
# level at the destination.  You can think of a trailing / on a source as meaning "copy the  contents
# of  this directory" as opposed to "copy the directory by name", but in both cases the attributes of
# the containing directory are transferred to the containing directory on the destination.  In  other
# words,  each of the following commands copies the files in the same way, including their setting of
# the attributes of /dest/foo:
#     rsync -av /src/foo /dest
#     rsync -av /src/foo/ /dest/foo
# 


sudo rsync --dry-run -xrlptgoXvHSP --stats --progress --fileflags <src> <dst>

