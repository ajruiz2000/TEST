#ifndef _P32XXXX_H
#define _P32XXXX_H

#if defined(__32MX320F032H__)
#include <proc/p32mx320f032h.h>
#elif defined(__32MX320F064H__)
#include <proc/p32mx320f064h.h>
#elif defined(__32MX320F128H__)
#include <proc/p32mx320f128h.h>
#elif defined(__32MX320F128L__)
#include <proc/p32mx320f128l.h>
#elif defined(__32MX340F128H__)
#include <proc/p32mx340f128h.h>
#elif defined(__32MX340F128L__)
#include <proc/p32mx340f128l.h>
#elif defined(__32MX340F256H__)
#include <proc/p32mx340f256h.h>
#elif defined(__32MX340F512H__)
#include <proc/p32mx340f512h.h>
#elif defined(__32MX360F256L__)
#include <proc/p32mx360f256l.h>
#elif defined(__32MX360F512L__)
#include <proc/p32mx360f512l.h>
#elif defined(__32MX420F032H__)
#include <proc/p32mx420f032h.h>
#elif defined(__32MX440F128H__)
#include <proc/p32mx440f128h.h>
#elif defined(__32MX440F128L__)
#include <proc/p32mx440f128l.h>
#elif defined(__32MX440F256H__)
#include <proc/p32mx440f256h.h>
#elif defined(__32MX440F512H__)
#include <proc/p32mx440f512h.h>
#elif defined(__32MX460F256L__)
#include <proc/p32mx460f256l.h>
#elif defined(__32MX460F512L__)
#include <proc/p32mx460f512l.h>


#elif defined(__32MX795F512L__)
#include <proc/p32mx795f512l.h>



#elif defined(__32MXGENERIC__)
#include <proc/p32mxgeneric.h>
#else
#error Unknown processor!
#endif

#ifdef __LANGUAGE_ASSEMBLY__
/*
 * Conventional register names.  Taken from `See MIPS Run' Table 2.1
 */

/* Zero register:  Always returns 0 */
#define zero               $0

/* Assembler temporary register:  Reserved for use by the assembler */
#define at_reg             $1
#define AT_reg             $1

/* Return value registers:  Value returned by subroutine */
#define v0                 $2
#define v1                 $3

/* Argument registers:  First few parameters for a subroutine */
#define a0                 $4
#define a1                 $5
#define a2                 $6
#define a3                 $7

/* Subroutine register temporaries:  Registers that subroutines can use
 * without saving
 */
#define t0                 $8
#define t1                 $9
#define t2                 $10
#define t3                 $11
#define t4                 $12
#define t5                 $13
#define t6                 $14
#define t7                 $15
#define t8                 $24
#define t9                 $25

/* Subroutine register variables:  A subroutine that writes one of these
 * must save the old value and restore it before it exists, so the calling
 * routine sees the values preserved
 */
#define s0                 $16
#define s1                 $17
#define s2                 $18
#define s3                 $19
#define s4                 $20
#define s5                 $21
#define s6                 $22
#define s7                 $23

/* Ninth subroutine register variable:  Can either be used as above or
 * as the frame pointer for functions that require one
 */
#define s8                 $30
#define fp                 $30

/* Interrupt/Trap handler registers:  Reserved for use by interrupt/trap
 * handler.  May change under your feet!
 */
#define k0                 $26
#define k1                 $27

/* Global pointer register:  Gives easy access to (some) `static' or `extern'
 * variables
 */
#define gp                 $28

/* Stack pointer register:  Stack pointer */
#define sp                 $29

/* Return address register:  Contains the return address for the subroutine */
#define ra                 $31
#endif

#ifdef __LANGUAGE_C__
typedef unsigned long _reg_t;

/*
 * Inline assembly macros
 */

#define _nop()  __asm__ __volatile__ ("%(ssnop%)" : :) 

#ifdef __mips16
extern void __attribute__((__nomips16__)) _sync(void);
#else
#define _sync() __asm__ __volatile__ ("sync" : : : "memory")
#endif

#define _wait() __asm__ __volatile__ ("wait")

#ifdef __mips16
extern _reg_t _xxc0 (unsigned int, _reg_t, _reg_t);

#define _mfc0(rn, sel)            _xxc0 ((rn) + (sel)*32, 0, 0)
#define _mtc0(rn, sel, v)         (void) _xxc0 ((rn) + (sel)*32, ~0, v)
#define _mxc0(rn, sel, v)         _xxc0 ((rn) + (sel)*32, ~0, v)
#define _bcc0(rn, sel, clr)       _xxc0 ((rn) + (sel)*32, clr, 0)
#define _bsc0(rn, sel, set)       _xxc0 ((rn) + (sel)*32, 0, set)
#define _bcsc0(rn, sel, clr, set) _xxc0 ((rn) + (sel)*32, c, s)
#else
#define _mfc0(reg, sel) \
__extension__ ({ \
  register unsigned long __r; \
  __asm__ __volatile__ ("mfc0 %0,$%1,%2" \
                        : "=d" (__r) \
                        : "JK" (reg), "JK" (sel)); \
  __r; \
})

#define _mtc0(reg, sel, val) \
do { \
    __asm__ __volatile__ ("%(mtc0 %z0,$%1,%2; ehb%)" \
                          : \
                          : "dJ" ((_reg_t)(val)), "JK" (reg), "JK" (sel) \
                          : "memory"); \
} while (0)

/* exchange (swap) VAL and CP0 register REG,SEL */
#define _mxc0(reg, sel, val) \
__extension__ ({ \
    register _reg_t __o; \
    __o = _mfc0 (reg, sel); \
    _mtc0 (reg, sel, val); \
    __o; \
})

/* bit clear non-zero bits from CLR in CP0 register REG,SEL */
#define _bcc0(reg, sel, clr) \
__extension__ ({ \
    register _reg_t __o; \
    __o = _mfc0 (reg, sel); \
    _mtc0 (reg, sel, __o & ~(clr)); \
    __o; \
})

/* bit set non-zero bits from SET in CP0 register REG,SEL */
#define _bsc0(reg, sel, set) \
__extension__ ({ \
    register _reg_t __o; \
    __o = _mfc0 (reg, sel); \
    _mtc0 (reg, sel, __o | (set)); \
    __o; \
})

/* bit clear non-zero bits from CLR and set non-zero bits from SET in REG,SEL */
#define _bcsc0(reg, sel, clr, set) \
__extension__ ({ \
    register _reg_t __o; \
    __o = _mfc0 (reg, sel); \
    _mtc0 (reg, sel, (__o & ~(clr)) | (set)); \
    __o; \
})
#endif

#if ! __mips16
/* count leading zeroes */
#define _clz(x) __builtin_clz (x)

/* count trailing zeroes */
#define _ctz(x) __builtin_ctz (x)

/* count leading ones */
#define _clo(x) __extension__({ \
    unsigned int __x = (x); \
    unsigned int __v; \
    __asm__ ("clo %0,%1" : "=d" (__v) : "d" (__x)); \
    __v; \
})

/* Simulate 64-bit count leading zeroes */
#define _dclz(x) __extension__({ \
    unsigned long long __x = (x); \
    unsigned int __hx = (__x >> 32); \
    __hx ? _clz(__hx) : 32 + _clz(__x); \
})

/* Simulate 64-bit count leading ones */
#define _dclo(x) __extension__({ \
    unsigned long long __x = (x); \
    unsigned int __hx = (__x >> 32); \
    (~__hx) ? _clo(__hx) : 32 + _clo(__x); \
})

/* Simulate 64-bit count trailing zeroes */
#define _dctz(x) __extension__({ \
    unsigned long long __dx = (x); \
    unsigned int __ldx = __dx; \
    unsigned int __hdx = __dx >> 32; \
    __ldx ? _ctz(__ldx) : (63 ^ _clz(__hdx & -__hdx)); \
   })

/* MIPS32r2 wsbh opcode */
#define _wsbh(x) __extension__({ \
    unsigned int __x = (x), __v; \
    __asm__ ("wsbh %0,%1" \
             : "=d" (__v) \
             : "d" (__x)); \
    __v; \
})

/* MIPS32r2 byte-swap word */
#define _bswapw(x) __extension__({ \
    unsigned int __x = (x), __v; \
    __asm__ ("wsbh %0,%1; rotr %0,16" \
             : "=d" (__v) \
             : "d" (__x)); \
    __v; \
})

/* MIPS32r2 insert bits */
#define _ins(tgt,val,pos,sz) __extension__({ \
    unsigned int __t = (tgt), __v = (val); \
    __asm__ ("ins %0,%z1,%2,%3" \
             : "+d" (__t) \
             : "dJ" (__v), "I" (pos), "I" (sz)); \
    __t; \
})

/* MIPS32r2 extract bits */
#define _ext(x,pos,sz) __extension__({ \
    unsigned int __x = (x), __v; \
    __asm__ ("ext %0,%z1,%2,%3" \
             : "=d" (__v) \
             : "dJ" (__x), "I" (pos), "I" (sz)); \
    __v; \
})

/* MIPS32r2 jr.hb */
#define _jr_hb() __asm__ __volatile__( \
       "bltzal  $0,0f\n"               \
"0:     addiu   $31,1f-0b\n"           \
"       jr.hb   $31\n"                 \
"1:"                                   \
        : : : "$31")

/* MIPS32r2 write previous gpr */
#define _wrpgpr(regno, val) \
do { \
    __asm __volatile__ ("wrpgpr $%0,%z1" \
                        : /* no outputs */ \
                        : "JK" (regno), "dJ" (val)); \
} while (0)

/* MIPS32r2 read previous gpr */
#define _rdpgpr(regno) \
__extension__({ \
    _reg_t __val; \
    __asm __volatile__ ("rdpgpr %0,$%1" \
                        : "=d" (__val) \
                        : "JK" (regno)); \
    __val; \
})

/* MIPS32r2 set SRSCtl.PSS (previous shadow set), returning old value */
extern unsigned int _xchsrspss (unsigned int);
#endif

#define _get_byte(addr, errp)   (*(volatile unsigned char *)(addr))
#define _get_half(addr, errp)   (*(volatile unsigned short *)(addr))
#define _get_word(addr, errp)   (*(volatile unsigned int *)(addr))
#define _get_dword(addr, errp)  (*(volatile unsigned long long *)(addr))

#define _put_byte(addr, v)      (*(volatile unsigned char *)(addr)=(v), 0)
#define _put_half(addr, v)      (*(volatile unsigned short *)(addr)=(v), 0)
#define _put_word(addr, v)      (*(volatile unsigned int *)(addr)=(v), 0)
#define _put_dword(addr, v)     (*(volatile unsigned long long *)(addr)=(v), 0)
#endif

#include <cp0defs.h>
                 
#endif
