# gncd-mail service #

My qmail-based email service, targeted at automatic messages + ezmlm
mailing lists.

Explicitly not targeted at end-user email.


## Existing branches ##

 * `master`: contains our final distribution, ready to rsync to a server
   and `./setup`
 * `src/netqmail`: the source of the netqmail project - we import the
   latest version available;
 * `patches/*`: all the patches that we track, either already merged
   into our distribution, or under evaluation for future integration;
 * `qmail/current`: main development branch for our qmail distribution -
   includes all patches we merged already.
