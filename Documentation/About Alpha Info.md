# About Alpha Info

## Endian
* Normally is **Little Endain**


##Cairo supported format

* ARGB32	(A R G B) premultiplied alpha
* RGB24		(_ R G B) upper 8 bits unused
* A8		(A) 8 bits alpha
* A1		(A) 1 bit alpha
* RGB16_565 (R G B), r: 5bits g:6bits b:5bits
* RGB30		(_ R G B) 10 bits

## CoreGraphics format

### AlphaInfo
* AlphaNone -> RGB
* AlphaPremultipliedLast -> RGBA premultiplied
* AlphaPremultipliedFirst -> ARGB premultiplied
* AlphaLast -> RGBA
* AlphaFirst -> ARGB
* AlphaNoneSkipLast -> RBGX
* AlphaNoneSkipFirst -> XRGB
* AlphaOnly -> alpha data only

### Limit
* premultiplied alpha is used only for images