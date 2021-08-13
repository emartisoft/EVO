OPT MODULE
OPT EXPORT

MODULE 'graphics/rastport'

CONST PCMYELLOW=0,
      PCMMAGENTA=1,
      PCMCYAN=2,
      PCMBLACK=3,
      PCMBLUE=0,
      PCMGREEN=1,
      PCMRED=2,
      PCMWHITE=3

OBJECT colorentry
-> a) next four CHARs are unioned as "colorlong:LONG"
-> b) also unioned as "colorsbyte[4]:ARRAY", which is signed CHARs
  colorbyte[4]:ARRAY
ENDOBJECT     /* SIZEOF=4 */

OBJECT prtinfo
  render:LONG
  rp:PTR TO rastport
  temprp:PTR TO rastport
  rowbuf:PTR TO INT  -> Target is unsigned
  hambuf:PTR TO INT  -> Target is unsigned
  colormap:PTR TO colorentry
  colorint:PTR TO colorentry
  hamint:PTR TO colorentry
  dest1int:PTR TO colorentry
  dest2int:PTR TO colorentry
  scalex:PTR TO INT  -> Target is unsigned
  scalexalt:PTR TO INT  -> Target is unsigned
  dmatrix:PTR TO CHAR
  topbuf:PTR TO INT  -> Target is unsigned
  botbuf:PTR TO INT  -> Target is unsigned
  rowbufsize:INT  -> This is unsigned
  hambufsize:INT  -> This is unsigned
  colormapsize:INT  -> This is unsigned
  colorintsize:INT  -> This is unsigned
  hamintsize:INT  -> This is unsigned
  dest1intsize:INT  -> This is unsigned
  dest2intsize:INT  -> This is unsigned
  scalexsize:INT  -> This is unsigned
  scalexaltsize:INT  -> This is unsigned
  prefsflags:INT  -> This is unsigned
  special:LONG
  xstart:INT  -> This is unsigned
  ystart:INT  -> This is unsigned
  width:INT  -> This is unsigned
  height:INT  -> This is unsigned
  pc:LONG
  pr:LONG
  ymult:INT  -> This is unsigned
  ymod:INT  -> This is unsigned
  ety:INT
  xpos:INT  -> This is unsigned
  threshold:INT  -> This is unsigned
  tempwidth:INT  -> This is unsigned
  flags:INT  -> This is unsigned
ENDOBJECT     /* SIZEOF=114 */

