/* Public domain, from daemontools-0.76. */

#include "byte.h"
#include "stralloc.h"

int stralloc_cat(stralloc *sato,const stralloc *safrom)
{
  return stralloc_catb(sato,safrom->s,safrom->len);
}
