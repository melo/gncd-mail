#ifndef CONTROL_H
#define CONTROL_H

#include "stralloc.h"

extern stralloc control_last;

extern int control_init();
extern int control_readline();
extern int control_rldef();
extern int control_readint();
extern int control_readfile();

#endif
