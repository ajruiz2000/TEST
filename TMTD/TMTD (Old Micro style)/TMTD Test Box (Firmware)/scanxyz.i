#line 1 "C:\Users\Anthony\Documents\scanxyz.c"
#line 1 "C:\Users\Anthony\Documents\scanxyz.c"
#line 1 "C:/MCC18/h/p18f4550.h"

#line 5 "C:/MCC18/h/p18f4550.h"
 


#line 9 "C:/MCC18/h/p18f4550.h"

extern volatile near unsigned char       SPPDATA;
extern volatile near unsigned char       SPPCFG;
extern volatile near struct {
  unsigned WS0:1;
  unsigned WS1:1;
  unsigned WS2:1;
  unsigned WS3:1;
  unsigned CLK1EN:1;
  unsigned CSEN:1;
  unsigned CLKCFG0:1;
  unsigned CLKCFG1:1;
} SPPCFGbits;
extern volatile near unsigned char       SPPEPS;
extern volatile near struct {
  unsigned ADDR0:1;
  unsigned ADDR1:1;
  unsigned ADDR2:1;
  unsigned ADDR3:1;
  unsigned SPPBUSY:1;
  unsigned :1;
  unsigned WRSPP:1;
  unsigned RDSPP:1;
} SPPEPSbits;
extern volatile near unsigned char       SPPCON;
extern volatile near struct {
  unsigned SPPEN:1;
  unsigned SPPOWN:1;
} SPPCONbits;
extern volatile near unsigned            UFRM;
extern volatile near unsigned char       UFRML;
extern volatile near struct {
  unsigned FRM0:1;
  unsigned FRM1:1;
  unsigned FRM2:1;
  unsigned FRM3:1;
  unsigned FRM4:1;
  unsigned FRM5:1;
  unsigned FRM6:1;
  unsigned FRM7:1;
} UFRMLbits;
extern volatile near unsigned char       UFRMH;
extern volatile near struct {
  unsigned FRM8:1;
  unsigned FRM9:1;
  unsigned FRM10:1;
} UFRMHbits;
extern volatile near unsigned char       UIR;
extern volatile near struct {
  unsigned URSTIF:1;
  unsigned UERRIF:1;
  unsigned ACTVIF:1;
  unsigned TRNIF:1;
  unsigned IDLEIF:1;
  unsigned STALLIF:1;
  unsigned SOFIF:1;
} UIRbits;
extern volatile near unsigned char       UIE;
extern volatile near struct {
  unsigned URSTIE:1;
  unsigned UERRIE:1;
  unsigned ACTVIE:1;
  unsigned TRNIE:1;
  unsigned IDLEIE:1;
  unsigned STALLIE:1;
  unsigned SOFIE:1;
} UIEbits;
extern volatile near unsigned char       UEIR;
extern volatile near struct {
  unsigned PIDEF:1;
  unsigned CRC5EF:1;
  unsigned CRC16EF:1;
  unsigned DFN8EF:1;
  unsigned BTOEF:1;
  unsigned :2;
  unsigned BTSEF:1;
} UEIRbits;
extern volatile near unsigned char       UEIE;
extern volatile near struct {
  unsigned PIDEE:1;
  unsigned CRC5EE:1;
  unsigned CRC16EE:1;
  unsigned DFN8EE:1;
  unsigned BTOEE:1;
  unsigned :2;
  unsigned BTSEE:1;
} UEIEbits;
extern volatile near unsigned char       USTAT;
extern volatile near struct {
  unsigned :1;
  unsigned PPBI:1;
  unsigned DIR:1;
  unsigned ENDP0:1;
  unsigned ENDP1:1;
  unsigned ENDP2:1;
  unsigned ENDP3:1;
} USTATbits;
extern volatile near unsigned char       UCON;
extern volatile near struct {
  unsigned :1;
  unsigned SUSPND:1;
  unsigned RESUME:1;
  unsigned USBEN:1;
  unsigned PKTDIS:1;
  unsigned SE0:1;
  unsigned PPBRST:1;
} UCONbits;
extern volatile near unsigned char       UADDR;
extern volatile near struct {
  unsigned ADDR0:1;
  unsigned ADDR1:1;
  unsigned ADDR2:1;
  unsigned ADDR3:1;
  unsigned ADDR4:1;
  unsigned ADDR5:1;
  unsigned ADDR6:1;
} UADDRbits;
extern volatile near unsigned char       UCFG;
extern volatile near struct {
  unsigned PPB0:1;
  unsigned PPB1:1;
  unsigned FSEN:1;
  unsigned UTRDIS:1;
  unsigned UPUEN:1;
  unsigned :1;
  unsigned UOEMON:1;
  unsigned UTEYE:1;
} UCFGbits;
extern volatile near unsigned char       UEP0;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP0bits;
extern volatile near unsigned char       UEP1;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP1bits;
extern volatile near unsigned char       UEP2;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP2bits;
extern volatile near unsigned char       UEP3;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP3bits;
extern volatile near unsigned char       UEP4;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP4bits;
extern volatile near unsigned char       UEP5;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP5bits;
extern volatile near unsigned char       UEP6;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP6bits;
extern volatile near unsigned char       UEP7;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP7bits;
extern volatile near unsigned char       UEP8;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP8bits;
extern volatile near unsigned char       UEP9;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP9bits;
extern volatile near unsigned char       UEP10;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP10bits;
extern volatile near unsigned char       UEP11;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP11bits;
extern volatile near unsigned char       UEP12;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP12bits;
extern volatile near unsigned char       UEP13;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP13bits;
extern volatile near unsigned char       UEP14;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP14bits;
extern volatile near unsigned char       UEP15;
extern volatile near struct {
  unsigned EPSTALL:1;
  unsigned EPINEN:1;
  unsigned EPOUTEN:1;
  unsigned EPCONDIS:1;
  unsigned EPHSHK:1;
} UEP15bits;
extern volatile near unsigned char       PORTA;
extern volatile near union {
  struct {
    unsigned RA0:1;
    unsigned RA1:1;
    unsigned RA2:1;
    unsigned RA3:1;
    unsigned RA4:1;
    unsigned RA5:1;
    unsigned RA6:1;
  };
  struct {
    unsigned AN0:1;
    unsigned AN1:1;
    unsigned AN2:1;
    unsigned AN3:1;
    unsigned T0CKI:1;
    unsigned AN4:1;
    unsigned OSC2:1;
  };
  struct {
    unsigned :2;
    unsigned VREFM:1;
    unsigned VREFP:1;
    unsigned :1;
    unsigned LVDIN:1;
  };
  struct {
    unsigned :5;
    unsigned HLVDIN:1;
  };
} PORTAbits;
extern volatile near unsigned char       PORTB;
extern volatile near union {
  struct {
    unsigned RB0:1;
    unsigned RB1:1;
    unsigned RB2:1;
    unsigned RB3:1;
    unsigned RB4:1;
    unsigned RB5:1;
    unsigned RB6:1;
    unsigned RB7:1;
  };
  struct {
    unsigned INT0:1;
    unsigned INT1:1;
    unsigned INT2:1;
  };
  struct {
    unsigned :5;
    unsigned PGM:1;
    unsigned PGC:1;
    unsigned PGD:1;
  };
} PORTBbits;
extern volatile near unsigned char       PORTC;
extern volatile near union {
  struct {
    unsigned RC0:1;
    unsigned RC1:1;
    unsigned RC2:1;
    unsigned :1;
    unsigned RC4:1;
    unsigned RC5:1;
    unsigned RC6:1;
    unsigned RC7:1;
  };
  struct {
    unsigned T1OSO:1;
    unsigned T1OSI:1;
    unsigned CCP1:1;
    unsigned :3;
    unsigned TX:1;
    unsigned RX:1;
  };
  struct {
    unsigned T13CKI:1;
    unsigned :1;
    unsigned P1A:1;
    unsigned :3;
    unsigned CK:1;
    unsigned DT:1;
  };
} PORTCbits;
extern volatile near unsigned char       PORTD;
extern volatile near union {
  struct {
    unsigned RD0:1;
    unsigned RD1:1;
    unsigned RD2:1;
    unsigned RD3:1;
    unsigned RD4:1;
    unsigned RD5:1;
    unsigned RD6:1;
    unsigned RD7:1;
  };
  struct {
    unsigned SPP0:1;
    unsigned SPP1:1;
    unsigned SPP2:1;
    unsigned SPP3:1;
    unsigned SPP4:1;
    unsigned SPP5:1;
    unsigned SPP6:1;
    unsigned SPP7:1;
  };
} PORTDbits;
extern volatile near unsigned char       PORTE;
extern volatile near union {
  struct {
    unsigned RE0:1;
    unsigned RE1:1;
    unsigned RE2:1;
    unsigned RE3:1;
    unsigned :3;
    unsigned RDPU:1;
  };
  struct {
    unsigned CK1SPP:1;
    unsigned CK2SPP:1;
    unsigned OESPP:1;
  };
} PORTEbits;
extern volatile near unsigned char       LATA;
extern volatile near struct {
  unsigned LATA0:1;
  unsigned LATA1:1;
  unsigned LATA2:1;
  unsigned LATA3:1;
  unsigned LATA4:1;
  unsigned LATA5:1;
  unsigned LATA6:1;
} LATAbits;
extern volatile near unsigned char       LATB;
extern volatile near struct {
  unsigned LATB0:1;
  unsigned LATB1:1;
  unsigned LATB2:1;
  unsigned LATB3:1;
  unsigned LATB4:1;
  unsigned LATB5:1;
  unsigned LATB6:1;
  unsigned LATB7:1;
} LATBbits;
extern volatile near unsigned char       LATC;
extern volatile near struct {
  unsigned LATC0:1;
  unsigned LATC1:1;
  unsigned LATC2:1;
  unsigned :3;
  unsigned LATC6:1;
  unsigned LATC7:1;
} LATCbits;
extern volatile near unsigned char       LATD;
extern volatile near struct {
  unsigned LATD0:1;
  unsigned LATD1:1;
  unsigned LATD2:1;
  unsigned LATD3:1;
  unsigned LATD4:1;
  unsigned LATD5:1;
  unsigned LATD6:1;
  unsigned LATD7:1;
} LATDbits;
extern volatile near unsigned char       LATE;
extern volatile near struct {
  unsigned LATE0:1;
  unsigned LATE1:1;
  unsigned LATE2:1;
} LATEbits;
extern volatile near unsigned char       DDRA;
extern volatile near struct {
  unsigned RA0:1;
  unsigned RA1:1;
  unsigned RA2:1;
  unsigned RA3:1;
  unsigned RA4:1;
  unsigned RA5:1;
  unsigned RA6:1;
} DDRAbits;
extern volatile near unsigned char       TRISA;
extern volatile near struct {
  unsigned TRISA0:1;
  unsigned TRISA1:1;
  unsigned TRISA2:1;
  unsigned TRISA3:1;
  unsigned TRISA4:1;
  unsigned TRISA5:1;
  unsigned TRISA6:1;
} TRISAbits;
extern volatile near unsigned char       DDRB;
extern volatile near struct {
  unsigned RB0:1;
  unsigned RB1:1;
  unsigned RB2:1;
  unsigned RB3:1;
  unsigned RB4:1;
  unsigned RB5:1;
  unsigned RB6:1;
  unsigned RB7:1;
} DDRBbits;
extern volatile near unsigned char       TRISB;
extern volatile near struct {
  unsigned TRISB0:1;
  unsigned TRISB1:1;
  unsigned TRISB2:1;
  unsigned TRISB3:1;
  unsigned TRISB4:1;
  unsigned TRISB5:1;
  unsigned TRISB6:1;
  unsigned TRISB7:1;
} TRISBbits;
extern volatile near unsigned char       DDRC;
extern volatile near struct {
  unsigned RC0:1;
  unsigned RC1:1;
  unsigned RC2:1;
  unsigned :3;
  unsigned RC6:1;
  unsigned RC7:1;
} DDRCbits;
extern volatile near unsigned char       TRISC;
extern volatile near struct {
  unsigned TRISC0:1;
  unsigned TRISC1:1;
  unsigned TRISC2:1;
  unsigned :3;
  unsigned TRISC6:1;
  unsigned TRISC7:1;
} TRISCbits;
extern volatile near unsigned char       DDRD;
extern volatile near struct {
  unsigned RD0:1;
  unsigned RD1:1;
  unsigned RD2:1;
  unsigned RD3:1;
  unsigned RD4:1;
  unsigned RD5:1;
  unsigned RD6:1;
  unsigned RD7:1;
} DDRDbits;
extern volatile near unsigned char       TRISD;
extern volatile near struct {
  unsigned TRISD0:1;
  unsigned TRISD1:1;
  unsigned TRISD2:1;
  unsigned TRISD3:1;
  unsigned TRISD4:1;
  unsigned TRISD5:1;
  unsigned TRISD6:1;
  unsigned TRISD7:1;
} TRISDbits;
extern volatile near unsigned char       DDRE;
extern volatile near struct {
  unsigned RE0:1;
  unsigned RE1:1;
  unsigned RE2:1;
} DDREbits;
extern volatile near unsigned char       TRISE;
extern volatile near struct {
  unsigned TRISE0:1;
  unsigned TRISE1:1;
  unsigned TRISE2:1;
} TRISEbits;
extern volatile near unsigned char       OSCTUNE;
extern volatile near struct {
  unsigned TUN0:1;
  unsigned TUN1:1;
  unsigned TUN2:1;
  unsigned TUN3:1;
  unsigned TUN4:1;
  unsigned :2;
  unsigned INTSRC:1;
} OSCTUNEbits;
extern volatile near unsigned char       PIE1;
extern volatile near struct {
  unsigned TMR1IE:1;
  unsigned TMR2IE:1;
  unsigned CCP1IE:1;
  unsigned SSPIE:1;
  unsigned TXIE:1;
  unsigned RCIE:1;
  unsigned ADIE:1;
  unsigned SPPIE:1;
} PIE1bits;
extern volatile near unsigned char       PIR1;
extern volatile near struct {
  unsigned TMR1IF:1;
  unsigned TMR2IF:1;
  unsigned CCP1IF:1;
  unsigned SSPIF:1;
  unsigned TXIF:1;
  unsigned RCIF:1;
  unsigned ADIF:1;
  unsigned SPPIF:1;
} PIR1bits;
extern volatile near unsigned char       IPR1;
extern volatile near struct {
  unsigned TMR1IP:1;
  unsigned TMR2IP:1;
  unsigned CCP1IP:1;
  unsigned SSPIP:1;
  unsigned TXIP:1;
  unsigned RCIP:1;
  unsigned ADIP:1;
  unsigned SPPIP:1;
} IPR1bits;
extern volatile near unsigned char       PIE2;
extern volatile near union {
  struct {
    unsigned CCP2IE:1;
    unsigned TMR3IE:1;
    unsigned LVDIE:1;
    unsigned BCLIE:1;
    unsigned EEIE:1;
    unsigned USBIE:1;
    unsigned CMIE:1;
    unsigned OSCFIE:1;
  };
  struct {
    unsigned :2;
    unsigned HLVDIE:1;
  };
} PIE2bits;
extern volatile near unsigned char       PIR2;
extern volatile near union {
  struct {
    unsigned CCP2IF:1;
    unsigned TMR3IF:1;
    unsigned LVDIF:1;
    unsigned BCLIF:1;
    unsigned EEIF:1;
    unsigned USBIF:1;
    unsigned CMIF:1;
    unsigned OSCFIF:1;
  };
  struct {
    unsigned :2;
    unsigned HLVDIF:1;
  };
} PIR2bits;
extern volatile near unsigned char       IPR2;
extern volatile near union {
  struct {
    unsigned CCP2IP:1;
    unsigned TMR3IP:1;
    unsigned LVDIP:1;
    unsigned BCLIP:1;
    unsigned EEIP:1;
    unsigned USBIP:1;
    unsigned CMIP:1;
    unsigned OSCFIP:1;
  };
  struct {
    unsigned :2;
    unsigned HLVDIP:1;
  };
} IPR2bits;
extern volatile near unsigned char       EECON1;
extern volatile near struct {
  unsigned RD:1;
  unsigned WR:1;
  unsigned WREN:1;
  unsigned WRERR:1;
  unsigned FREE:1;
  unsigned :1;
  unsigned CFGS:1;
  unsigned EEPGD:1;
} EECON1bits;
extern volatile near unsigned char       EECON2;
extern volatile near unsigned char       EEDATA;
extern volatile near unsigned char       EEADR;
extern volatile near unsigned char       RCSTA;
extern volatile near union {
  struct {
    unsigned RX9D:1;
    unsigned OERR:1;
    unsigned FERR:1;
    unsigned ADDEN:1;
    unsigned CREN:1;
    unsigned SREN:1;
    unsigned RX9:1;
    unsigned SPEN:1;
  };
  struct {
    unsigned :3;
    unsigned ADEN:1;
  };
} RCSTAbits;
extern volatile near unsigned char       TXSTA;
extern volatile near struct {
  unsigned TX9D:1;
  unsigned TRMT:1;
  unsigned BRGH:1;
  unsigned SENDB:1;
  unsigned SYNC:1;
  unsigned TXEN:1;
  unsigned TX9:1;
  unsigned CSRC:1;
} TXSTAbits;
extern volatile near unsigned char       TXREG;
extern volatile near unsigned char       RCREG;
extern volatile near unsigned char       SPBRG;
extern volatile near unsigned char       SPBRGH;
extern volatile near unsigned char       T3CON;
extern volatile near union {
  struct {
    unsigned TMR3ON:1;
    unsigned TMR3CS:1;
    unsigned T3SYNC:1;
    unsigned T3CCP1:1;
    unsigned T3CKPS0:1;
    unsigned T3CKPS1:1;
    unsigned T3CCP2:1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned T3NSYNC:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_T3SYNC:1;
  };
} T3CONbits;
extern volatile near unsigned char       TMR3L;
extern volatile near unsigned char       TMR3H;
extern volatile near unsigned char       CMCON;
extern volatile near struct {
  unsigned CM0:1;
  unsigned CM1:1;
  unsigned CM2:1;
  unsigned CIS:1;
  unsigned C1INV:1;
  unsigned C2INV:1;
  unsigned C1OUT:1;
  unsigned C2OUT:1;
} CMCONbits;
extern volatile near unsigned char       CVRCON;
extern volatile near union {
  struct {
    unsigned CVR0:1;
    unsigned CVR1:1;
    unsigned CVR2:1;
    unsigned CVR3:1;
    unsigned CVREF:1;
    unsigned CVRR:1;
    unsigned CVROE:1;
    unsigned CVREN:1;
  };
  struct {
    unsigned :4;
    unsigned CVRSS:1;
  };
} CVRCONbits;
extern volatile near unsigned char       CCP1AS;
extern volatile near struct {
  unsigned PSSBD0:1;
  unsigned PSSBD1:1;
  unsigned PSSAC0:1;
  unsigned PSSAC1:1;
  unsigned ECCPAS0:1;
  unsigned ECCPAS1:1;
  unsigned ECCPAS2:1;
  unsigned ECCPASE:1;
} CCP1ASbits;
extern volatile near unsigned char       ECCP1AS;
extern volatile near struct {
  unsigned PSSBD0:1;
  unsigned PSSBD1:1;
  unsigned PSSAC0:1;
  unsigned PSSAC1:1;
  unsigned ECCPAS0:1;
  unsigned ECCPAS1:1;
  unsigned ECCPAS2:1;
  unsigned ECCPASE:1;
} ECCP1ASbits;
extern volatile near unsigned char       CCP1DEL;
extern volatile near struct {
  unsigned PDC0:1;
  unsigned PDC1:1;
  unsigned PDC2:1;
  unsigned PDC3:1;
  unsigned PDC4:1;
  unsigned PDC5:1;
  unsigned PDC6:1;
  unsigned PRSEN:1;
} CCP1DELbits;
extern volatile near unsigned char       ECCP1DEL;
extern volatile near struct {
  unsigned PDC0:1;
  unsigned PDC1:1;
  unsigned PDC2:1;
  unsigned PDC3:1;
  unsigned PDC4:1;
  unsigned PDC5:1;
  unsigned PDC6:1;
  unsigned PRSEN:1;
} ECCP1DELbits;
extern volatile near unsigned char       BAUDCON;
extern volatile near union {
  struct {
    unsigned ABDEN:1;
    unsigned WUE:1;
    unsigned :1;
    unsigned BRG16:1;
    unsigned SCKP:1;
    unsigned :1;
    unsigned RCIDL:1;
    unsigned ABDOVF:1;
  };
  struct {
    unsigned :4;
    unsigned TXCKP:1;
    unsigned RXDTP:1;
    unsigned RCMT:1;
  };
} BAUDCONbits;
extern volatile near unsigned char       CCP2CON;
extern volatile near struct {
  unsigned CCP2M0:1;
  unsigned CCP2M1:1;
  unsigned CCP2M2:1;
  unsigned CCP2M3:1;
  unsigned DC2B0:1;
  unsigned DC2B1:1;
} CCP2CONbits;
extern volatile near unsigned            CCPR2;
extern volatile near unsigned char       CCPR2L;
extern volatile near unsigned char       CCPR2H;
extern volatile near unsigned char       CCP1CON;
extern volatile near struct {
  unsigned CCP1M0:1;
  unsigned CCP1M1:1;
  unsigned CCP1M2:1;
  unsigned CCP1M3:1;
  unsigned DC1B0:1;
  unsigned DC1B1:1;
  unsigned P1M0:1;
  unsigned P1M1:1;
} CCP1CONbits;
extern volatile near unsigned char       ECCP1CON;
extern volatile near struct {
  unsigned CCP1M0:1;
  unsigned CCP1M1:1;
  unsigned CCP1M2:1;
  unsigned CCP1M3:1;
  unsigned DC1B0:1;
  unsigned DC1B1:1;
  unsigned P1M0:1;
  unsigned P1M1:1;
} ECCP1CONbits;
extern volatile near unsigned            CCPR1;
extern volatile near unsigned char       CCPR1L;
extern volatile near unsigned char       CCPR1H;
extern volatile near unsigned char       ADCON2;
extern volatile near struct {
  unsigned ADCS0:1;
  unsigned ADCS1:1;
  unsigned ADCS2:1;
  unsigned ACQT0:1;
  unsigned ACQT1:1;
  unsigned ACQT2:1;
  unsigned :1;
  unsigned ADFM:1;
} ADCON2bits;
extern volatile near unsigned char       ADCON1;
extern volatile near struct {
  unsigned PCFG0:1;
  unsigned PCFG1:1;
  unsigned PCFG2:1;
  unsigned PCFG3:1;
  unsigned VCFG0:1;
  unsigned VCFG1:1;
} ADCON1bits;
extern volatile near unsigned char       ADCON0;
extern volatile near union {
  struct {
    unsigned ADON:1;
    unsigned GO_DONE:1;
    unsigned CHS0:1;
    unsigned CHS1:1;
    unsigned CHS2:1;
    unsigned CHS3:1;
  };
  struct {
    unsigned :1;
    unsigned DONE:1;
  };
  struct {
    unsigned :1;
    unsigned GO:1;
  };
  struct {
    unsigned :1;
    unsigned NOT_DONE:1;
  };
} ADCON0bits;
extern volatile near unsigned            ADRES;
extern volatile near unsigned char       ADRESL;
extern volatile near unsigned char       ADRESH;
extern volatile near unsigned char       SSPCON2;
extern volatile near struct {
  unsigned SEN:1;
  unsigned RSEN:1;
  unsigned PEN:1;
  unsigned RCEN:1;
  unsigned ACKEN:1;
  unsigned ACKDT:1;
  unsigned ACKSTAT:1;
  unsigned GCEN:1;
} SSPCON2bits;
extern volatile near unsigned char       SSPCON1;
extern volatile near struct {
  unsigned SSPM0:1;
  unsigned SSPM1:1;
  unsigned SSPM2:1;
  unsigned SSPM3:1;
  unsigned CKP:1;
  unsigned SSPEN:1;
  unsigned SSPOV:1;
  unsigned WCOL:1;
} SSPCON1bits;
extern volatile near unsigned char       SSPSTAT;
extern volatile near union {
  struct {
    unsigned BF:1;
    unsigned UA:1;
    unsigned R_W:1;
    unsigned S:1;
    unsigned P:1;
    unsigned D_A:1;
    unsigned CKE:1;
    unsigned SMP:1;
  };
  struct {
    unsigned :2;
    unsigned I2C_READ:1;
    unsigned I2C_START:1;
    unsigned I2C_STOP:1;
    unsigned I2C_DAT:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_W:1;
    unsigned :2;
    unsigned NOT_A:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_WRITE:1;
    unsigned :2;
    unsigned NOT_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned READ_WRITE:1;
    unsigned :2;
    unsigned DATA_ADDRESS:1;
  };
  struct {
    unsigned :2;
    unsigned R:1;
    unsigned :2;
    unsigned D:1;
  };
} SSPSTATbits;
extern volatile near unsigned char       SSPADD;
extern volatile near unsigned char       SSPBUF;
extern volatile near unsigned char       T2CON;
extern volatile near struct {
  unsigned T2CKPS0:1;
  unsigned T2CKPS1:1;
  unsigned TMR2ON:1;
  unsigned T2OUTPS0:1;
  unsigned T2OUTPS1:1;
  unsigned T2OUTPS2:1;
  unsigned T2OUTPS3:1;
} T2CONbits;
extern volatile near unsigned char       PR2;
extern volatile near unsigned char       TMR2;
extern volatile near unsigned char       T1CON;
extern volatile near union {
  struct {
    unsigned TMR1ON:1;
    unsigned TMR1CS:1;
    unsigned T1SYNC:1;
    unsigned T1OSCEN:1;
    unsigned T1CKPS0:1;
    unsigned T1CKPS1:1;
    unsigned T1RUN:1;
    unsigned RD16:1;
  };
  struct {
    unsigned :2;
    unsigned NOT_T1SYNC:1;
  };
} T1CONbits;
extern volatile near unsigned char       TMR1L;
extern volatile near unsigned char       TMR1H;
extern volatile near unsigned char       RCON;
extern volatile near union {
  struct {
    unsigned NOT_BOR:1;
    unsigned NOT_POR:1;
    unsigned NOT_PD:1;
    unsigned NOT_TO:1;
    unsigned NOT_RI:1;
    unsigned :1;
    unsigned SBOREN:1;
    unsigned NOT_IPEN:1;
  };
  struct {
    unsigned BOR:1;
    unsigned POR:1;
    unsigned PD:1;
    unsigned TO:1;
    unsigned RI:1;
    unsigned :2;
    unsigned IPEN:1;
  };
} RCONbits;
extern volatile near unsigned char       WDTCON;
extern volatile near union {
  struct {
    unsigned SWDTEN:1;
  };
  struct {
    unsigned SWDTE:1;
  };
} WDTCONbits;
extern volatile near unsigned char       HLVDCON;
extern volatile near union {
  struct {
    unsigned LVDL0:1;
    unsigned LVDL1:1;
    unsigned LVDL2:1;
    unsigned LVDL3:1;
    unsigned LVDEN:1;
    unsigned IRVST:1;
  };
  struct {
    unsigned LVV0:1;
    unsigned LVV1:1;
    unsigned LVV2:1;
    unsigned LVV3:1;
    unsigned :1;
    unsigned BGST:1;
  };
  struct {
    unsigned HLVDL0:1;
    unsigned HLVDL1:1;
    unsigned HLVDL2:1;
    unsigned HLVDL3:1;
    unsigned HLVDEN:1;
    unsigned :2;
    unsigned VDIRMAG:1;
  };
  struct {
    unsigned :5;
    unsigned IVRST:1;
  };
} HLVDCONbits;
extern volatile near unsigned char       LVDCON;
extern volatile near union {
  struct {
    unsigned LVDL0:1;
    unsigned LVDL1:1;
    unsigned LVDL2:1;
    unsigned LVDL3:1;
    unsigned LVDEN:1;
    unsigned IRVST:1;
  };
  struct {
    unsigned LVV0:1;
    unsigned LVV1:1;
    unsigned LVV2:1;
    unsigned LVV3:1;
    unsigned :1;
    unsigned BGST:1;
  };
  struct {
    unsigned HLVDL0:1;
    unsigned HLVDL1:1;
    unsigned HLVDL2:1;
    unsigned HLVDL3:1;
    unsigned HLVDEN:1;
    unsigned :2;
    unsigned VDIRMAG:1;
  };
  struct {
    unsigned :5;
    unsigned IVRST:1;
  };
} LVDCONbits;
extern volatile near unsigned char       OSCCON;
extern volatile near union {
  struct {
    unsigned SCS0:1;
    unsigned SCS1:1;
    unsigned IOFS:1;
    unsigned OSTS:1;
    unsigned IRCF0:1;
    unsigned IRCF1:1;
    unsigned IRCF2:1;
    unsigned IDLEN:1;
  };
  struct {
    unsigned :2;
    unsigned FLTS:1;
  };
} OSCCONbits;
extern volatile near unsigned char       T0CON;
extern volatile near struct {
  unsigned T0PS0:1;
  unsigned T0PS1:1;
  unsigned T0PS2:1;
  unsigned PSA:1;
  unsigned T0SE:1;
  unsigned T0CS:1;
  unsigned T08BIT:1;
  unsigned TMR0ON:1;
} T0CONbits;
extern volatile near unsigned char       TMR0L;
extern volatile near unsigned char       TMR0H;
extern          near unsigned char       STATUS;
extern          near struct {
  unsigned C:1;
  unsigned DC:1;
  unsigned Z:1;
  unsigned OV:1;
  unsigned N:1;
} STATUSbits;
extern          near unsigned            FSR2;
extern          near unsigned char       FSR2L;
extern          near unsigned char       FSR2H;
extern volatile near unsigned char       PLUSW2;
extern volatile near unsigned char       PREINC2;
extern volatile near unsigned char       POSTDEC2;
extern volatile near unsigned char       POSTINC2;
extern          near unsigned char       INDF2;
extern          near unsigned char       BSR;
extern          near unsigned            FSR1;
extern          near unsigned char       FSR1L;
extern          near unsigned char       FSR1H;
extern volatile near unsigned char       PLUSW1;
extern volatile near unsigned char       PREINC1;
extern volatile near unsigned char       POSTDEC1;
extern volatile near unsigned char       POSTINC1;
extern          near unsigned char       INDF1;
extern          near unsigned char       WREG;
extern          near unsigned            FSR0;
extern          near unsigned char       FSR0L;
extern          near unsigned char       FSR0H;
extern volatile near unsigned char       PLUSW0;
extern volatile near unsigned char       PREINC0;
extern volatile near unsigned char       POSTDEC0;
extern volatile near unsigned char       POSTINC0;
extern          near unsigned char       INDF0;
extern volatile near unsigned char       INTCON3;
extern volatile near union {
  struct {
    unsigned INT1IF:1;
    unsigned INT2IF:1;
    unsigned :1;
    unsigned INT1IE:1;
    unsigned INT2IE:1;
    unsigned :1;
    unsigned INT1IP:1;
    unsigned INT2IP:1;
  };
  struct {
    unsigned INT1F:1;
    unsigned INT2F:1;
    unsigned :1;
    unsigned INT1E:1;
    unsigned INT2E:1;
    unsigned :1;
    unsigned INT1P:1;
    unsigned INT2P:1;
  };
} INTCON3bits;
extern volatile near unsigned char       INTCON2;
extern volatile near union {
  struct {
    unsigned RBIP:1;
    unsigned :1;
    unsigned TMR0IP:1;
    unsigned :1;
    unsigned INTEDG2:1;
    unsigned INTEDG1:1;
    unsigned INTEDG0:1;
    unsigned NOT_RBPU:1;
  };
  struct {
    unsigned :2;
    unsigned T0IP:1;
    unsigned :4;
    unsigned RBPU:1;
  };
} INTCON2bits;
extern volatile near unsigned char       INTCON;
extern volatile near union {
  struct {
    unsigned RBIF:1;
    unsigned INT0IF:1;
    unsigned TMR0IF:1;
    unsigned RBIE:1;
    unsigned INT0IE:1;
    unsigned TMR0IE:1;
    unsigned PEIE:1;
    unsigned GIE:1;
  };
  struct {
    unsigned :1;
    unsigned INT0F:1;
    unsigned T0IF:1;
    unsigned :1;
    unsigned INT0E:1;
    unsigned T0IE:1;
    unsigned GIEL:1;
    unsigned GIEH:1;
  };
} INTCONbits;
extern          near unsigned            PROD;
extern          near unsigned char       PRODL;
extern          near unsigned char       PRODH;
extern volatile near unsigned char       TABLAT;
extern volatile near unsigned short long TBLPTR;
extern volatile near unsigned char       TBLPTRL;
extern volatile near unsigned char       TBLPTRH;
extern volatile near unsigned char       TBLPTRU;
extern volatile near unsigned short long PC;
extern volatile near unsigned char       PCL;
extern volatile near unsigned char       PCLATH;
extern volatile near unsigned char       PCLATU;
extern volatile near unsigned char       STKPTR;
extern volatile near struct {
  unsigned STKPTR0:1;
  unsigned STKPTR1:1;
  unsigned STKPTR2:1;
  unsigned STKPTR3:1;
  unsigned STKPTR4:1;
  unsigned :1;
  unsigned STKUNF:1;
  unsigned STKFUL:1;
} STKPTRbits;
extern          near unsigned short long TOS;
extern          near unsigned char       TOSL;
extern          near unsigned char       TOSH;
extern          near unsigned char       TOSU;



#line 1221 "C:/MCC18/h/p18f4550.h"
 
#line 1223 "C:/MCC18/h/p18f4550.h"
#line 1224 "C:/MCC18/h/p18f4550.h"


#line 1227 "C:/MCC18/h/p18f4550.h"
 
#line 1229 "C:/MCC18/h/p18f4550.h"
#line 1230 "C:/MCC18/h/p18f4550.h"
#line 1231 "C:/MCC18/h/p18f4550.h"
#line 1232 "C:/MCC18/h/p18f4550.h"

#line 1234 "C:/MCC18/h/p18f4550.h"
#line 1235 "C:/MCC18/h/p18f4550.h"
#line 1236 "C:/MCC18/h/p18f4550.h"
#line 1237 "C:/MCC18/h/p18f4550.h"
#line 1238 "C:/MCC18/h/p18f4550.h"


#line 1242 "C:/MCC18/h/p18f4550.h"
 
#line 1244 "C:/MCC18/h/p18f4550.h"


#line 1247 "C:/MCC18/h/p18f4550.h"
#line 1 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:/MCC18/h/stdlib.h"
 

#line 4 "C:/MCC18/h/stdlib.h"

#line 6 "C:/MCC18/h/stdlib.h"

#line 9 "C:/MCC18/h/stdlib.h"
 
 

#line 16 "C:/MCC18/h/stdlib.h"
 
double atof (const auto char *s);

#line 28 "C:/MCC18/h/stdlib.h"
 
signed char atob (const auto char *s);


#line 39 "C:/MCC18/h/stdlib.h"
 
int atoi (const auto char *s);

#line 47 "C:/MCC18/h/stdlib.h"
 
long atol (const auto char *s);

#line 58 "C:/MCC18/h/stdlib.h"
 
unsigned long atoul (const auto char *s);


#line 71 "C:/MCC18/h/stdlib.h"
 
char *btoa (auto signed char value, auto char *s);

#line 83 "C:/MCC18/h/stdlib.h"
 
char *itoa (auto int value, auto char *s);

#line 95 "C:/MCC18/h/stdlib.h"
 
char *ltoa (auto long value, auto char *s);

#line 107 "C:/MCC18/h/stdlib.h"
 
char *ultoa (auto unsigned long value, auto char *s);
 


#line 112 "C:/MCC18/h/stdlib.h"
 
 

#line 116 "C:/MCC18/h/stdlib.h"
 
#line 118 "C:/MCC18/h/stdlib.h"


#line 124 "C:/MCC18/h/stdlib.h"
 
int rand (void);

#line 136 "C:/MCC18/h/stdlib.h"
 
void srand (auto unsigned int seed);
 
#line 140 "C:/MCC18/h/stdlib.h"
#line 149 "C:/MCC18/h/stdlib.h"

#line 151 "C:/MCC18/h/stdlib.h"
#line 2 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:/MCC18/h/delays.h"

#line 3 "C:/MCC18/h/delays.h"


#line 13 "C:/MCC18/h/delays.h"
 

 
#line 1 "C:/MCC18/h/p18cxxx.h"

#line 3 "C:/MCC18/h/p18cxxx.h"

#line 5 "C:/MCC18/h/p18cxxx.h"
#line 7 "C:/MCC18/h/p18cxxx.h"
#line 9 "C:/MCC18/h/p18cxxx.h"
#line 11 "C:/MCC18/h/p18cxxx.h"
#line 13 "C:/MCC18/h/p18cxxx.h"
#line 15 "C:/MCC18/h/p18cxxx.h"
#line 17 "C:/MCC18/h/p18cxxx.h"
#line 19 "C:/MCC18/h/p18cxxx.h"
#line 21 "C:/MCC18/h/p18cxxx.h"
#line 23 "C:/MCC18/h/p18cxxx.h"
#line 25 "C:/MCC18/h/p18cxxx.h"
#line 27 "C:/MCC18/h/p18cxxx.h"
#line 29 "C:/MCC18/h/p18cxxx.h"
#line 31 "C:/MCC18/h/p18cxxx.h"
#line 33 "C:/MCC18/h/p18cxxx.h"
#line 35 "C:/MCC18/h/p18cxxx.h"
#line 37 "C:/MCC18/h/p18cxxx.h"
#line 39 "C:/MCC18/h/p18cxxx.h"
#line 41 "C:/MCC18/h/p18cxxx.h"
#line 43 "C:/MCC18/h/p18cxxx.h"
#line 45 "C:/MCC18/h/p18cxxx.h"
#line 47 "C:/MCC18/h/p18cxxx.h"
#line 49 "C:/MCC18/h/p18cxxx.h"
#line 51 "C:/MCC18/h/p18cxxx.h"
#line 53 "C:/MCC18/h/p18cxxx.h"
#line 55 "C:/MCC18/h/p18cxxx.h"
#line 57 "C:/MCC18/h/p18cxxx.h"
#line 59 "C:/MCC18/h/p18cxxx.h"
#line 61 "C:/MCC18/h/p18cxxx.h"
#line 63 "C:/MCC18/h/p18cxxx.h"
#line 65 "C:/MCC18/h/p18cxxx.h"
#line 67 "C:/MCC18/h/p18cxxx.h"
#line 69 "C:/MCC18/h/p18cxxx.h"
#line 71 "C:/MCC18/h/p18cxxx.h"
#line 73 "C:/MCC18/h/p18cxxx.h"
#line 75 "C:/MCC18/h/p18cxxx.h"
#line 77 "C:/MCC18/h/p18cxxx.h"
#line 79 "C:/MCC18/h/p18cxxx.h"
#line 81 "C:/MCC18/h/p18cxxx.h"
#line 83 "C:/MCC18/h/p18cxxx.h"
#line 85 "C:/MCC18/h/p18cxxx.h"
#line 87 "C:/MCC18/h/p18cxxx.h"
#line 89 "C:/MCC18/h/p18cxxx.h"
#line 91 "C:/MCC18/h/p18cxxx.h"
#line 93 "C:/MCC18/h/p18cxxx.h"
#line 95 "C:/MCC18/h/p18cxxx.h"
#line 97 "C:/MCC18/h/p18cxxx.h"
#line 99 "C:/MCC18/h/p18cxxx.h"
#line 101 "C:/MCC18/h/p18cxxx.h"
#line 103 "C:/MCC18/h/p18cxxx.h"
#line 105 "C:/MCC18/h/p18cxxx.h"
#line 107 "C:/MCC18/h/p18cxxx.h"
#line 109 "C:/MCC18/h/p18cxxx.h"
#line 111 "C:/MCC18/h/p18cxxx.h"
#line 113 "C:/MCC18/h/p18cxxx.h"
#line 115 "C:/MCC18/h/p18cxxx.h"
#line 117 "C:/MCC18/h/p18cxxx.h"
#line 119 "C:/MCC18/h/p18cxxx.h"
#line 121 "C:/MCC18/h/p18cxxx.h"
#line 123 "C:/MCC18/h/p18cxxx.h"
#line 125 "C:/MCC18/h/p18cxxx.h"
#line 127 "C:/MCC18/h/p18cxxx.h"
#line 129 "C:/MCC18/h/p18cxxx.h"
#line 131 "C:/MCC18/h/p18cxxx.h"
#line 133 "C:/MCC18/h/p18cxxx.h"
#line 135 "C:/MCC18/h/p18cxxx.h"
#line 137 "C:/MCC18/h/p18cxxx.h"
#line 139 "C:/MCC18/h/p18cxxx.h"
#line 141 "C:/MCC18/h/p18cxxx.h"
#line 143 "C:/MCC18/h/p18cxxx.h"
#line 145 "C:/MCC18/h/p18cxxx.h"
#line 147 "C:/MCC18/h/p18cxxx.h"
#line 149 "C:/MCC18/h/p18cxxx.h"
#line 151 "C:/MCC18/h/p18cxxx.h"
#line 153 "C:/MCC18/h/p18cxxx.h"
#line 155 "C:/MCC18/h/p18cxxx.h"
#line 157 "C:/MCC18/h/p18cxxx.h"
#line 159 "C:/MCC18/h/p18cxxx.h"
#line 161 "C:/MCC18/h/p18cxxx.h"
#line 163 "C:/MCC18/h/p18cxxx.h"
#line 165 "C:/MCC18/h/p18cxxx.h"
#line 167 "C:/MCC18/h/p18cxxx.h"
#line 169 "C:/MCC18/h/p18cxxx.h"
#line 171 "C:/MCC18/h/p18cxxx.h"
#line 173 "C:/MCC18/h/p18cxxx.h"
#line 175 "C:/MCC18/h/p18cxxx.h"
#line 177 "C:/MCC18/h/p18cxxx.h"
#line 179 "C:/MCC18/h/p18cxxx.h"
#line 181 "C:/MCC18/h/p18cxxx.h"
#line 183 "C:/MCC18/h/p18cxxx.h"
#line 185 "C:/MCC18/h/p18cxxx.h"
#line 187 "C:/MCC18/h/p18cxxx.h"
#line 189 "C:/MCC18/h/p18cxxx.h"
#line 191 "C:/MCC18/h/p18cxxx.h"
#line 193 "C:/MCC18/h/p18cxxx.h"
#line 195 "C:/MCC18/h/p18cxxx.h"
#line 197 "C:/MCC18/h/p18cxxx.h"
#line 199 "C:/MCC18/h/p18cxxx.h"
#line 201 "C:/MCC18/h/p18cxxx.h"
#line 203 "C:/MCC18/h/p18cxxx.h"
#line 205 "C:/MCC18/h/p18cxxx.h"
#line 207 "C:/MCC18/h/p18cxxx.h"
#line 1 "C:/MCC18/h/p18f4550.h"

#line 5 "C:/MCC18/h/p18f4550.h"
 


#line 1221 "C:/MCC18/h/p18f4550.h"

#line 1227 "C:/MCC18/h/p18f4550.h"

#line 1242 "C:/MCC18/h/p18f4550.h"
#line 1247 "C:/MCC18/h/p18f4550.h"
#line 207 "C:/MCC18/h/p18cxxx.h"

#line 209 "C:/MCC18/h/p18cxxx.h"
#line 211 "C:/MCC18/h/p18cxxx.h"
#line 213 "C:/MCC18/h/p18cxxx.h"
#line 215 "C:/MCC18/h/p18cxxx.h"
#line 217 "C:/MCC18/h/p18cxxx.h"
#line 219 "C:/MCC18/h/p18cxxx.h"
#line 221 "C:/MCC18/h/p18cxxx.h"
#line 223 "C:/MCC18/h/p18cxxx.h"
#line 225 "C:/MCC18/h/p18cxxx.h"
#line 227 "C:/MCC18/h/p18cxxx.h"
#line 229 "C:/MCC18/h/p18cxxx.h"
#line 231 "C:/MCC18/h/p18cxxx.h"
#line 233 "C:/MCC18/h/p18cxxx.h"
#line 235 "C:/MCC18/h/p18cxxx.h"
#line 237 "C:/MCC18/h/p18cxxx.h"
#line 239 "C:/MCC18/h/p18cxxx.h"
#line 241 "C:/MCC18/h/p18cxxx.h"
#line 243 "C:/MCC18/h/p18cxxx.h"
#line 245 "C:/MCC18/h/p18cxxx.h"
#line 247 "C:/MCC18/h/p18cxxx.h"
#line 249 "C:/MCC18/h/p18cxxx.h"
#line 251 "C:/MCC18/h/p18cxxx.h"
#line 253 "C:/MCC18/h/p18cxxx.h"
#line 255 "C:/MCC18/h/p18cxxx.h"
#line 257 "C:/MCC18/h/p18cxxx.h"
#line 259 "C:/MCC18/h/p18cxxx.h"
#line 261 "C:/MCC18/h/p18cxxx.h"
#line 263 "C:/MCC18/h/p18cxxx.h"
#line 265 "C:/MCC18/h/p18cxxx.h"
#line 267 "C:/MCC18/h/p18cxxx.h"
#line 269 "C:/MCC18/h/p18cxxx.h"
#line 271 "C:/MCC18/h/p18cxxx.h"
#line 273 "C:/MCC18/h/p18cxxx.h"
#line 275 "C:/MCC18/h/p18cxxx.h"
#line 277 "C:/MCC18/h/p18cxxx.h"
#line 279 "C:/MCC18/h/p18cxxx.h"
#line 281 "C:/MCC18/h/p18cxxx.h"
#line 283 "C:/MCC18/h/p18cxxx.h"
#line 285 "C:/MCC18/h/p18cxxx.h"
#line 287 "C:/MCC18/h/p18cxxx.h"
#line 289 "C:/MCC18/h/p18cxxx.h"
#line 291 "C:/MCC18/h/p18cxxx.h"
#line 293 "C:/MCC18/h/p18cxxx.h"
#line 295 "C:/MCC18/h/p18cxxx.h"
#line 297 "C:/MCC18/h/p18cxxx.h"
#line 299 "C:/MCC18/h/p18cxxx.h"
#line 301 "C:/MCC18/h/p18cxxx.h"
#line 303 "C:/MCC18/h/p18cxxx.h"
#line 305 "C:/MCC18/h/p18cxxx.h"
#line 307 "C:/MCC18/h/p18cxxx.h"
#line 309 "C:/MCC18/h/p18cxxx.h"
#line 311 "C:/MCC18/h/p18cxxx.h"
#line 313 "C:/MCC18/h/p18cxxx.h"
#line 315 "C:/MCC18/h/p18cxxx.h"
#line 317 "C:/MCC18/h/p18cxxx.h"
#line 319 "C:/MCC18/h/p18cxxx.h"
#line 321 "C:/MCC18/h/p18cxxx.h"
#line 323 "C:/MCC18/h/p18cxxx.h"
#line 325 "C:/MCC18/h/p18cxxx.h"
#line 327 "C:/MCC18/h/p18cxxx.h"
#line 329 "C:/MCC18/h/p18cxxx.h"
#line 331 "C:/MCC18/h/p18cxxx.h"
#line 333 "C:/MCC18/h/p18cxxx.h"
#line 335 "C:/MCC18/h/p18cxxx.h"
#line 337 "C:/MCC18/h/p18cxxx.h"
#line 339 "C:/MCC18/h/p18cxxx.h"
#line 341 "C:/MCC18/h/p18cxxx.h"
#line 343 "C:/MCC18/h/p18cxxx.h"
#line 345 "C:/MCC18/h/p18cxxx.h"
#line 347 "C:/MCC18/h/p18cxxx.h"
#line 349 "C:/MCC18/h/p18cxxx.h"
#line 351 "C:/MCC18/h/p18cxxx.h"
#line 353 "C:/MCC18/h/p18cxxx.h"
#line 355 "C:/MCC18/h/p18cxxx.h"
#line 357 "C:/MCC18/h/p18cxxx.h"
#line 359 "C:/MCC18/h/p18cxxx.h"
#line 361 "C:/MCC18/h/p18cxxx.h"
#line 363 "C:/MCC18/h/p18cxxx.h"
#line 365 "C:/MCC18/h/p18cxxx.h"
#line 367 "C:/MCC18/h/p18cxxx.h"
#line 369 "C:/MCC18/h/p18cxxx.h"
#line 371 "C:/MCC18/h/p18cxxx.h"
#line 373 "C:/MCC18/h/p18cxxx.h"
#line 375 "C:/MCC18/h/p18cxxx.h"
#line 377 "C:/MCC18/h/p18cxxx.h"
#line 379 "C:/MCC18/h/p18cxxx.h"
#line 381 "C:/MCC18/h/p18cxxx.h"
#line 383 "C:/MCC18/h/p18cxxx.h"
#line 385 "C:/MCC18/h/p18cxxx.h"
#line 387 "C:/MCC18/h/p18cxxx.h"
#line 389 "C:/MCC18/h/p18cxxx.h"
#line 391 "C:/MCC18/h/p18cxxx.h"
#line 393 "C:/MCC18/h/p18cxxx.h"
#line 395 "C:/MCC18/h/p18cxxx.h"
#line 397 "C:/MCC18/h/p18cxxx.h"
#line 399 "C:/MCC18/h/p18cxxx.h"
#line 401 "C:/MCC18/h/p18cxxx.h"
#line 403 "C:/MCC18/h/p18cxxx.h"
#line 405 "C:/MCC18/h/p18cxxx.h"
#line 407 "C:/MCC18/h/p18cxxx.h"
#line 409 "C:/MCC18/h/p18cxxx.h"
#line 411 "C:/MCC18/h/p18cxxx.h"
#line 413 "C:/MCC18/h/p18cxxx.h"
#line 415 "C:/MCC18/h/p18cxxx.h"
#line 417 "C:/MCC18/h/p18cxxx.h"
#line 419 "C:/MCC18/h/p18cxxx.h"
#line 421 "C:/MCC18/h/p18cxxx.h"
#line 423 "C:/MCC18/h/p18cxxx.h"
#line 425 "C:/MCC18/h/p18cxxx.h"
#line 427 "C:/MCC18/h/p18cxxx.h"
#line 429 "C:/MCC18/h/p18cxxx.h"
#line 431 "C:/MCC18/h/p18cxxx.h"
#line 433 "C:/MCC18/h/p18cxxx.h"
#line 435 "C:/MCC18/h/p18cxxx.h"
#line 437 "C:/MCC18/h/p18cxxx.h"
#line 439 "C:/MCC18/h/p18cxxx.h"
#line 441 "C:/MCC18/h/p18cxxx.h"
#line 443 "C:/MCC18/h/p18cxxx.h"
#line 445 "C:/MCC18/h/p18cxxx.h"
#line 447 "C:/MCC18/h/p18cxxx.h"
#line 449 "C:/MCC18/h/p18cxxx.h"
#line 451 "C:/MCC18/h/p18cxxx.h"
#line 453 "C:/MCC18/h/p18cxxx.h"
#line 455 "C:/MCC18/h/p18cxxx.h"
#line 457 "C:/MCC18/h/p18cxxx.h"
#line 459 "C:/MCC18/h/p18cxxx.h"
#line 461 "C:/MCC18/h/p18cxxx.h"
#line 463 "C:/MCC18/h/p18cxxx.h"
#line 465 "C:/MCC18/h/p18cxxx.h"
#line 467 "C:/MCC18/h/p18cxxx.h"
#line 469 "C:/MCC18/h/p18cxxx.h"
#line 471 "C:/MCC18/h/p18cxxx.h"
#line 473 "C:/MCC18/h/p18cxxx.h"
#line 475 "C:/MCC18/h/p18cxxx.h"
#line 477 "C:/MCC18/h/p18cxxx.h"
#line 479 "C:/MCC18/h/p18cxxx.h"
#line 481 "C:/MCC18/h/p18cxxx.h"
#line 483 "C:/MCC18/h/p18cxxx.h"
#line 485 "C:/MCC18/h/p18cxxx.h"
#line 487 "C:/MCC18/h/p18cxxx.h"
#line 489 "C:/MCC18/h/p18cxxx.h"
#line 491 "C:/MCC18/h/p18cxxx.h"
#line 493 "C:/MCC18/h/p18cxxx.h"
#line 495 "C:/MCC18/h/p18cxxx.h"
#line 497 "C:/MCC18/h/p18cxxx.h"
#line 499 "C:/MCC18/h/p18cxxx.h"
#line 501 "C:/MCC18/h/p18cxxx.h"
#line 503 "C:/MCC18/h/p18cxxx.h"
#line 505 "C:/MCC18/h/p18cxxx.h"
#line 507 "C:/MCC18/h/p18cxxx.h"
#line 509 "C:/MCC18/h/p18cxxx.h"
#line 511 "C:/MCC18/h/p18cxxx.h"
#line 513 "C:/MCC18/h/p18cxxx.h"
#line 515 "C:/MCC18/h/p18cxxx.h"
#line 517 "C:/MCC18/h/p18cxxx.h"
#line 519 "C:/MCC18/h/p18cxxx.h"
#line 521 "C:/MCC18/h/p18cxxx.h"
#line 523 "C:/MCC18/h/p18cxxx.h"
#line 525 "C:/MCC18/h/p18cxxx.h"
#line 527 "C:/MCC18/h/p18cxxx.h"
#line 529 "C:/MCC18/h/p18cxxx.h"
#line 531 "C:/MCC18/h/p18cxxx.h"
#line 533 "C:/MCC18/h/p18cxxx.h"
#line 535 "C:/MCC18/h/p18cxxx.h"
#line 537 "C:/MCC18/h/p18cxxx.h"
#line 539 "C:/MCC18/h/p18cxxx.h"
#line 541 "C:/MCC18/h/p18cxxx.h"
#line 543 "C:/MCC18/h/p18cxxx.h"
#line 545 "C:/MCC18/h/p18cxxx.h"
#line 547 "C:/MCC18/h/p18cxxx.h"
#line 549 "C:/MCC18/h/p18cxxx.h"
#line 551 "C:/MCC18/h/p18cxxx.h"

#line 553 "C:/MCC18/h/p18cxxx.h"
#line 16 "C:/MCC18/h/delays.h"


 
#line 20 "C:/MCC18/h/delays.h"

#line 22 "C:/MCC18/h/delays.h"

 
#line 25 "C:/MCC18/h/delays.h"


#line 31 "C:/MCC18/h/delays.h"
 
void Delay10TCYx(auto  unsigned char);


#line 38 "C:/MCC18/h/delays.h"
 



void Delay100TCYx(auto  unsigned char);


#line 48 "C:/MCC18/h/delays.h"
 
void Delay1KTCYx(auto  unsigned char);


#line 55 "C:/MCC18/h/delays.h"
 
void Delay10KTCYx(auto  unsigned char);

#line 59 "C:/MCC18/h/delays.h"
#line 3 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:/MCC18/h/usart.h"

#line 3 "C:/MCC18/h/usart.h"

#line 30 "C:/MCC18/h/usart.h"
 
 
#line 1 "C:/MCC18/h/pconfig.h"



#line 5 "C:/MCC18/h/pconfig.h"

#line 11 "C:/MCC18/h/pconfig.h"
 



#line 1 "C:/MCC18/h/p18cxxx.h"
#line 5 "C:/MCC18/h/p18cxxx.h"
#line 7 "C:/MCC18/h/p18cxxx.h"
#line 9 "C:/MCC18/h/p18cxxx.h"
#line 11 "C:/MCC18/h/p18cxxx.h"
#line 13 "C:/MCC18/h/p18cxxx.h"
#line 15 "C:/MCC18/h/p18cxxx.h"
#line 17 "C:/MCC18/h/p18cxxx.h"
#line 19 "C:/MCC18/h/p18cxxx.h"
#line 21 "C:/MCC18/h/p18cxxx.h"
#line 23 "C:/MCC18/h/p18cxxx.h"
#line 25 "C:/MCC18/h/p18cxxx.h"
#line 27 "C:/MCC18/h/p18cxxx.h"
#line 29 "C:/MCC18/h/p18cxxx.h"
#line 31 "C:/MCC18/h/p18cxxx.h"
#line 33 "C:/MCC18/h/p18cxxx.h"
#line 35 "C:/MCC18/h/p18cxxx.h"
#line 37 "C:/MCC18/h/p18cxxx.h"
#line 39 "C:/MCC18/h/p18cxxx.h"
#line 41 "C:/MCC18/h/p18cxxx.h"
#line 43 "C:/MCC18/h/p18cxxx.h"
#line 45 "C:/MCC18/h/p18cxxx.h"
#line 47 "C:/MCC18/h/p18cxxx.h"
#line 49 "C:/MCC18/h/p18cxxx.h"
#line 51 "C:/MCC18/h/p18cxxx.h"
#line 53 "C:/MCC18/h/p18cxxx.h"
#line 55 "C:/MCC18/h/p18cxxx.h"
#line 57 "C:/MCC18/h/p18cxxx.h"
#line 59 "C:/MCC18/h/p18cxxx.h"
#line 61 "C:/MCC18/h/p18cxxx.h"
#line 63 "C:/MCC18/h/p18cxxx.h"
#line 65 "C:/MCC18/h/p18cxxx.h"
#line 67 "C:/MCC18/h/p18cxxx.h"
#line 69 "C:/MCC18/h/p18cxxx.h"
#line 71 "C:/MCC18/h/p18cxxx.h"
#line 73 "C:/MCC18/h/p18cxxx.h"
#line 75 "C:/MCC18/h/p18cxxx.h"
#line 77 "C:/MCC18/h/p18cxxx.h"
#line 79 "C:/MCC18/h/p18cxxx.h"
#line 81 "C:/MCC18/h/p18cxxx.h"
#line 83 "C:/MCC18/h/p18cxxx.h"
#line 85 "C:/MCC18/h/p18cxxx.h"
#line 87 "C:/MCC18/h/p18cxxx.h"
#line 89 "C:/MCC18/h/p18cxxx.h"
#line 91 "C:/MCC18/h/p18cxxx.h"
#line 93 "C:/MCC18/h/p18cxxx.h"
#line 95 "C:/MCC18/h/p18cxxx.h"
#line 97 "C:/MCC18/h/p18cxxx.h"
#line 99 "C:/MCC18/h/p18cxxx.h"
#line 101 "C:/MCC18/h/p18cxxx.h"
#line 103 "C:/MCC18/h/p18cxxx.h"
#line 105 "C:/MCC18/h/p18cxxx.h"
#line 107 "C:/MCC18/h/p18cxxx.h"
#line 109 "C:/MCC18/h/p18cxxx.h"
#line 111 "C:/MCC18/h/p18cxxx.h"
#line 113 "C:/MCC18/h/p18cxxx.h"
#line 115 "C:/MCC18/h/p18cxxx.h"
#line 117 "C:/MCC18/h/p18cxxx.h"
#line 119 "C:/MCC18/h/p18cxxx.h"
#line 121 "C:/MCC18/h/p18cxxx.h"
#line 123 "C:/MCC18/h/p18cxxx.h"
#line 125 "C:/MCC18/h/p18cxxx.h"
#line 127 "C:/MCC18/h/p18cxxx.h"
#line 129 "C:/MCC18/h/p18cxxx.h"
#line 131 "C:/MCC18/h/p18cxxx.h"
#line 133 "C:/MCC18/h/p18cxxx.h"
#line 135 "C:/MCC18/h/p18cxxx.h"
#line 137 "C:/MCC18/h/p18cxxx.h"
#line 139 "C:/MCC18/h/p18cxxx.h"
#line 141 "C:/MCC18/h/p18cxxx.h"
#line 143 "C:/MCC18/h/p18cxxx.h"
#line 145 "C:/MCC18/h/p18cxxx.h"
#line 147 "C:/MCC18/h/p18cxxx.h"
#line 149 "C:/MCC18/h/p18cxxx.h"
#line 151 "C:/MCC18/h/p18cxxx.h"
#line 153 "C:/MCC18/h/p18cxxx.h"
#line 155 "C:/MCC18/h/p18cxxx.h"
#line 157 "C:/MCC18/h/p18cxxx.h"
#line 159 "C:/MCC18/h/p18cxxx.h"
#line 161 "C:/MCC18/h/p18cxxx.h"
#line 163 "C:/MCC18/h/p18cxxx.h"
#line 165 "C:/MCC18/h/p18cxxx.h"
#line 167 "C:/MCC18/h/p18cxxx.h"
#line 169 "C:/MCC18/h/p18cxxx.h"
#line 171 "C:/MCC18/h/p18cxxx.h"
#line 173 "C:/MCC18/h/p18cxxx.h"
#line 175 "C:/MCC18/h/p18cxxx.h"
#line 177 "C:/MCC18/h/p18cxxx.h"
#line 179 "C:/MCC18/h/p18cxxx.h"
#line 181 "C:/MCC18/h/p18cxxx.h"
#line 183 "C:/MCC18/h/p18cxxx.h"
#line 185 "C:/MCC18/h/p18cxxx.h"
#line 187 "C:/MCC18/h/p18cxxx.h"
#line 189 "C:/MCC18/h/p18cxxx.h"
#line 191 "C:/MCC18/h/p18cxxx.h"
#line 193 "C:/MCC18/h/p18cxxx.h"
#line 195 "C:/MCC18/h/p18cxxx.h"
#line 197 "C:/MCC18/h/p18cxxx.h"
#line 199 "C:/MCC18/h/p18cxxx.h"
#line 201 "C:/MCC18/h/p18cxxx.h"
#line 203 "C:/MCC18/h/p18cxxx.h"
#line 205 "C:/MCC18/h/p18cxxx.h"
#line 207 "C:/MCC18/h/p18cxxx.h"
#line 209 "C:/MCC18/h/p18cxxx.h"
#line 211 "C:/MCC18/h/p18cxxx.h"
#line 213 "C:/MCC18/h/p18cxxx.h"
#line 215 "C:/MCC18/h/p18cxxx.h"
#line 217 "C:/MCC18/h/p18cxxx.h"
#line 219 "C:/MCC18/h/p18cxxx.h"
#line 221 "C:/MCC18/h/p18cxxx.h"
#line 223 "C:/MCC18/h/p18cxxx.h"
#line 225 "C:/MCC18/h/p18cxxx.h"
#line 227 "C:/MCC18/h/p18cxxx.h"
#line 229 "C:/MCC18/h/p18cxxx.h"
#line 231 "C:/MCC18/h/p18cxxx.h"
#line 233 "C:/MCC18/h/p18cxxx.h"
#line 235 "C:/MCC18/h/p18cxxx.h"
#line 237 "C:/MCC18/h/p18cxxx.h"
#line 239 "C:/MCC18/h/p18cxxx.h"
#line 241 "C:/MCC18/h/p18cxxx.h"
#line 243 "C:/MCC18/h/p18cxxx.h"
#line 245 "C:/MCC18/h/p18cxxx.h"
#line 247 "C:/MCC18/h/p18cxxx.h"
#line 249 "C:/MCC18/h/p18cxxx.h"
#line 251 "C:/MCC18/h/p18cxxx.h"
#line 253 "C:/MCC18/h/p18cxxx.h"
#line 255 "C:/MCC18/h/p18cxxx.h"
#line 257 "C:/MCC18/h/p18cxxx.h"
#line 259 "C:/MCC18/h/p18cxxx.h"
#line 261 "C:/MCC18/h/p18cxxx.h"
#line 263 "C:/MCC18/h/p18cxxx.h"
#line 265 "C:/MCC18/h/p18cxxx.h"
#line 267 "C:/MCC18/h/p18cxxx.h"
#line 269 "C:/MCC18/h/p18cxxx.h"
#line 271 "C:/MCC18/h/p18cxxx.h"
#line 273 "C:/MCC18/h/p18cxxx.h"
#line 275 "C:/MCC18/h/p18cxxx.h"
#line 277 "C:/MCC18/h/p18cxxx.h"
#line 279 "C:/MCC18/h/p18cxxx.h"
#line 281 "C:/MCC18/h/p18cxxx.h"
#line 283 "C:/MCC18/h/p18cxxx.h"
#line 285 "C:/MCC18/h/p18cxxx.h"
#line 287 "C:/MCC18/h/p18cxxx.h"
#line 289 "C:/MCC18/h/p18cxxx.h"
#line 291 "C:/MCC18/h/p18cxxx.h"
#line 293 "C:/MCC18/h/p18cxxx.h"
#line 295 "C:/MCC18/h/p18cxxx.h"
#line 297 "C:/MCC18/h/p18cxxx.h"
#line 299 "C:/MCC18/h/p18cxxx.h"
#line 301 "C:/MCC18/h/p18cxxx.h"
#line 303 "C:/MCC18/h/p18cxxx.h"
#line 305 "C:/MCC18/h/p18cxxx.h"
#line 307 "C:/MCC18/h/p18cxxx.h"
#line 309 "C:/MCC18/h/p18cxxx.h"
#line 311 "C:/MCC18/h/p18cxxx.h"
#line 313 "C:/MCC18/h/p18cxxx.h"
#line 315 "C:/MCC18/h/p18cxxx.h"
#line 317 "C:/MCC18/h/p18cxxx.h"
#line 319 "C:/MCC18/h/p18cxxx.h"
#line 321 "C:/MCC18/h/p18cxxx.h"
#line 323 "C:/MCC18/h/p18cxxx.h"
#line 325 "C:/MCC18/h/p18cxxx.h"
#line 327 "C:/MCC18/h/p18cxxx.h"
#line 329 "C:/MCC18/h/p18cxxx.h"
#line 331 "C:/MCC18/h/p18cxxx.h"
#line 333 "C:/MCC18/h/p18cxxx.h"
#line 335 "C:/MCC18/h/p18cxxx.h"
#line 337 "C:/MCC18/h/p18cxxx.h"
#line 339 "C:/MCC18/h/p18cxxx.h"
#line 341 "C:/MCC18/h/p18cxxx.h"
#line 343 "C:/MCC18/h/p18cxxx.h"
#line 345 "C:/MCC18/h/p18cxxx.h"
#line 347 "C:/MCC18/h/p18cxxx.h"
#line 349 "C:/MCC18/h/p18cxxx.h"
#line 351 "C:/MCC18/h/p18cxxx.h"
#line 353 "C:/MCC18/h/p18cxxx.h"
#line 355 "C:/MCC18/h/p18cxxx.h"
#line 357 "C:/MCC18/h/p18cxxx.h"
#line 359 "C:/MCC18/h/p18cxxx.h"
#line 361 "C:/MCC18/h/p18cxxx.h"
#line 363 "C:/MCC18/h/p18cxxx.h"
#line 365 "C:/MCC18/h/p18cxxx.h"
#line 367 "C:/MCC18/h/p18cxxx.h"
#line 369 "C:/MCC18/h/p18cxxx.h"
#line 371 "C:/MCC18/h/p18cxxx.h"
#line 373 "C:/MCC18/h/p18cxxx.h"
#line 375 "C:/MCC18/h/p18cxxx.h"
#line 377 "C:/MCC18/h/p18cxxx.h"
#line 379 "C:/MCC18/h/p18cxxx.h"
#line 381 "C:/MCC18/h/p18cxxx.h"
#line 383 "C:/MCC18/h/p18cxxx.h"
#line 385 "C:/MCC18/h/p18cxxx.h"
#line 387 "C:/MCC18/h/p18cxxx.h"
#line 389 "C:/MCC18/h/p18cxxx.h"
#line 391 "C:/MCC18/h/p18cxxx.h"
#line 393 "C:/MCC18/h/p18cxxx.h"
#line 395 "C:/MCC18/h/p18cxxx.h"
#line 397 "C:/MCC18/h/p18cxxx.h"
#line 399 "C:/MCC18/h/p18cxxx.h"
#line 401 "C:/MCC18/h/p18cxxx.h"
#line 403 "C:/MCC18/h/p18cxxx.h"
#line 405 "C:/MCC18/h/p18cxxx.h"
#line 407 "C:/MCC18/h/p18cxxx.h"
#line 409 "C:/MCC18/h/p18cxxx.h"
#line 411 "C:/MCC18/h/p18cxxx.h"
#line 413 "C:/MCC18/h/p18cxxx.h"
#line 415 "C:/MCC18/h/p18cxxx.h"
#line 417 "C:/MCC18/h/p18cxxx.h"
#line 419 "C:/MCC18/h/p18cxxx.h"
#line 421 "C:/MCC18/h/p18cxxx.h"
#line 423 "C:/MCC18/h/p18cxxx.h"
#line 425 "C:/MCC18/h/p18cxxx.h"
#line 427 "C:/MCC18/h/p18cxxx.h"
#line 429 "C:/MCC18/h/p18cxxx.h"
#line 431 "C:/MCC18/h/p18cxxx.h"
#line 433 "C:/MCC18/h/p18cxxx.h"
#line 435 "C:/MCC18/h/p18cxxx.h"
#line 437 "C:/MCC18/h/p18cxxx.h"
#line 439 "C:/MCC18/h/p18cxxx.h"
#line 441 "C:/MCC18/h/p18cxxx.h"
#line 443 "C:/MCC18/h/p18cxxx.h"
#line 445 "C:/MCC18/h/p18cxxx.h"
#line 447 "C:/MCC18/h/p18cxxx.h"
#line 449 "C:/MCC18/h/p18cxxx.h"
#line 451 "C:/MCC18/h/p18cxxx.h"
#line 453 "C:/MCC18/h/p18cxxx.h"
#line 455 "C:/MCC18/h/p18cxxx.h"
#line 457 "C:/MCC18/h/p18cxxx.h"
#line 459 "C:/MCC18/h/p18cxxx.h"
#line 461 "C:/MCC18/h/p18cxxx.h"
#line 463 "C:/MCC18/h/p18cxxx.h"
#line 465 "C:/MCC18/h/p18cxxx.h"
#line 467 "C:/MCC18/h/p18cxxx.h"
#line 469 "C:/MCC18/h/p18cxxx.h"
#line 471 "C:/MCC18/h/p18cxxx.h"
#line 473 "C:/MCC18/h/p18cxxx.h"
#line 475 "C:/MCC18/h/p18cxxx.h"
#line 477 "C:/MCC18/h/p18cxxx.h"
#line 479 "C:/MCC18/h/p18cxxx.h"
#line 481 "C:/MCC18/h/p18cxxx.h"
#line 483 "C:/MCC18/h/p18cxxx.h"
#line 485 "C:/MCC18/h/p18cxxx.h"
#line 487 "C:/MCC18/h/p18cxxx.h"
#line 489 "C:/MCC18/h/p18cxxx.h"
#line 491 "C:/MCC18/h/p18cxxx.h"
#line 493 "C:/MCC18/h/p18cxxx.h"
#line 495 "C:/MCC18/h/p18cxxx.h"
#line 497 "C:/MCC18/h/p18cxxx.h"
#line 499 "C:/MCC18/h/p18cxxx.h"
#line 501 "C:/MCC18/h/p18cxxx.h"
#line 503 "C:/MCC18/h/p18cxxx.h"
#line 505 "C:/MCC18/h/p18cxxx.h"
#line 507 "C:/MCC18/h/p18cxxx.h"
#line 509 "C:/MCC18/h/p18cxxx.h"
#line 511 "C:/MCC18/h/p18cxxx.h"
#line 513 "C:/MCC18/h/p18cxxx.h"
#line 515 "C:/MCC18/h/p18cxxx.h"
#line 517 "C:/MCC18/h/p18cxxx.h"
#line 519 "C:/MCC18/h/p18cxxx.h"
#line 521 "C:/MCC18/h/p18cxxx.h"
#line 523 "C:/MCC18/h/p18cxxx.h"
#line 525 "C:/MCC18/h/p18cxxx.h"
#line 527 "C:/MCC18/h/p18cxxx.h"
#line 529 "C:/MCC18/h/p18cxxx.h"
#line 531 "C:/MCC18/h/p18cxxx.h"
#line 533 "C:/MCC18/h/p18cxxx.h"
#line 535 "C:/MCC18/h/p18cxxx.h"
#line 537 "C:/MCC18/h/p18cxxx.h"
#line 539 "C:/MCC18/h/p18cxxx.h"
#line 541 "C:/MCC18/h/p18cxxx.h"
#line 543 "C:/MCC18/h/p18cxxx.h"
#line 545 "C:/MCC18/h/p18cxxx.h"
#line 547 "C:/MCC18/h/p18cxxx.h"
#line 549 "C:/MCC18/h/p18cxxx.h"
#line 551 "C:/MCC18/h/p18cxxx.h"
#line 553 "C:/MCC18/h/p18cxxx.h"
#line 15 "C:/MCC18/h/pconfig.h"



#line 84 "C:/MCC18/h/pconfig.h"
#line 150 "C:/MCC18/h/pconfig.h"
#line 216 "C:/MCC18/h/pconfig.h"
#line 282 "C:/MCC18/h/pconfig.h"
#line 348 "C:/MCC18/h/pconfig.h"
#line 414 "C:/MCC18/h/pconfig.h"
#line 480 "C:/MCC18/h/pconfig.h"
#line 546 "C:/MCC18/h/pconfig.h"
#line 612 "C:/MCC18/h/pconfig.h"
#line 678 "C:/MCC18/h/pconfig.h"
#line 744 "C:/MCC18/h/pconfig.h"
#line 810 "C:/MCC18/h/pconfig.h"
#line 876 "C:/MCC18/h/pconfig.h"
#line 942 "C:/MCC18/h/pconfig.h"
#line 1008 "C:/MCC18/h/pconfig.h"
#line 1074 "C:/MCC18/h/pconfig.h"
#line 1140 "C:/MCC18/h/pconfig.h"
#line 1206 "C:/MCC18/h/pconfig.h"
#line 1272 "C:/MCC18/h/pconfig.h"
#line 1338 "C:/MCC18/h/pconfig.h"
#line 1404 "C:/MCC18/h/pconfig.h"
#line 1470 "C:/MCC18/h/pconfig.h"
#line 1536 "C:/MCC18/h/pconfig.h"
#line 1602 "C:/MCC18/h/pconfig.h"
#line 1668 "C:/MCC18/h/pconfig.h"
#line 1734 "C:/MCC18/h/pconfig.h"
#line 1800 "C:/MCC18/h/pconfig.h"
#line 1866 "C:/MCC18/h/pconfig.h"
#line 1932 "C:/MCC18/h/pconfig.h"
#line 1998 "C:/MCC18/h/pconfig.h"
#line 2064 "C:/MCC18/h/pconfig.h"
#line 2130 "C:/MCC18/h/pconfig.h"
#line 2196 "C:/MCC18/h/pconfig.h"
#line 2262 "C:/MCC18/h/pconfig.h"
#line 2328 "C:/MCC18/h/pconfig.h"
#line 2394 "C:/MCC18/h/pconfig.h"
#line 2460 "C:/MCC18/h/pconfig.h"
#line 2526 "C:/MCC18/h/pconfig.h"
#line 2592 "C:/MCC18/h/pconfig.h"
#line 2658 "C:/MCC18/h/pconfig.h"
#line 2724 "C:/MCC18/h/pconfig.h"
#line 2790 "C:/MCC18/h/pconfig.h"
#line 2856 "C:/MCC18/h/pconfig.h"
#line 2922 "C:/MCC18/h/pconfig.h"
#line 2988 "C:/MCC18/h/pconfig.h"
#line 3054 "C:/MCC18/h/pconfig.h"
#line 3120 "C:/MCC18/h/pconfig.h"

 
 
 

 
#line 3127 "C:/MCC18/h/pconfig.h"

 
 

 
#line 3133 "C:/MCC18/h/pconfig.h"

 
#line 3136 "C:/MCC18/h/pconfig.h"

 
#line 3139 "C:/MCC18/h/pconfig.h"

 
 

 
#line 3145 "C:/MCC18/h/pconfig.h"

 
#line 3148 "C:/MCC18/h/pconfig.h"

 
#line 3151 "C:/MCC18/h/pconfig.h"

 
#line 3154 "C:/MCC18/h/pconfig.h"

 
#line 3157 "C:/MCC18/h/pconfig.h"

 
#line 3160 "C:/MCC18/h/pconfig.h"

 
#line 3163 "C:/MCC18/h/pconfig.h"

 
#line 3166 "C:/MCC18/h/pconfig.h"

 
 

 
 

 
 

 
 

 
 

 
#line 3184 "C:/MCC18/h/pconfig.h"

#line 3186 "C:/MCC18/h/pconfig.h"
#line 3252 "C:/MCC18/h/pconfig.h"
#line 3318 "C:/MCC18/h/pconfig.h"
#line 3384 "C:/MCC18/h/pconfig.h"
#line 3450 "C:/MCC18/h/pconfig.h"
#line 3516 "C:/MCC18/h/pconfig.h"
#line 3582 "C:/MCC18/h/pconfig.h"
#line 3648 "C:/MCC18/h/pconfig.h"
#line 3714 "C:/MCC18/h/pconfig.h"
#line 3780 "C:/MCC18/h/pconfig.h"
#line 3846 "C:/MCC18/h/pconfig.h"
#line 3912 "C:/MCC18/h/pconfig.h"
#line 3978 "C:/MCC18/h/pconfig.h"
#line 4044 "C:/MCC18/h/pconfig.h"
#line 4110 "C:/MCC18/h/pconfig.h"
#line 4176 "C:/MCC18/h/pconfig.h"
#line 4242 "C:/MCC18/h/pconfig.h"
#line 4308 "C:/MCC18/h/pconfig.h"
#line 4374 "C:/MCC18/h/pconfig.h"
#line 4440 "C:/MCC18/h/pconfig.h"
#line 4506 "C:/MCC18/h/pconfig.h"
#line 4572 "C:/MCC18/h/pconfig.h"
#line 4638 "C:/MCC18/h/pconfig.h"
#line 4704 "C:/MCC18/h/pconfig.h"
#line 4770 "C:/MCC18/h/pconfig.h"
#line 4836 "C:/MCC18/h/pconfig.h"
#line 4902 "C:/MCC18/h/pconfig.h"
#line 4968 "C:/MCC18/h/pconfig.h"
#line 5034 "C:/MCC18/h/pconfig.h"
#line 5100 "C:/MCC18/h/pconfig.h"
#line 5166 "C:/MCC18/h/pconfig.h"
#line 5232 "C:/MCC18/h/pconfig.h"
#line 5298 "C:/MCC18/h/pconfig.h"
#line 5364 "C:/MCC18/h/pconfig.h"
#line 5430 "C:/MCC18/h/pconfig.h"
#line 5496 "C:/MCC18/h/pconfig.h"
#line 5562 "C:/MCC18/h/pconfig.h"
#line 5628 "C:/MCC18/h/pconfig.h"
#line 5694 "C:/MCC18/h/pconfig.h"
#line 5760 "C:/MCC18/h/pconfig.h"
#line 5826 "C:/MCC18/h/pconfig.h"
#line 5892 "C:/MCC18/h/pconfig.h"
#line 5958 "C:/MCC18/h/pconfig.h"
#line 6024 "C:/MCC18/h/pconfig.h"
#line 6090 "C:/MCC18/h/pconfig.h"
#line 6156 "C:/MCC18/h/pconfig.h"
#line 6222 "C:/MCC18/h/pconfig.h"
#line 6288 "C:/MCC18/h/pconfig.h"
#line 6354 "C:/MCC18/h/pconfig.h"
#line 6420 "C:/MCC18/h/pconfig.h"
#line 6486 "C:/MCC18/h/pconfig.h"
#line 6552 "C:/MCC18/h/pconfig.h"
#line 6618 "C:/MCC18/h/pconfig.h"
#line 6684 "C:/MCC18/h/pconfig.h"
#line 6750 "C:/MCC18/h/pconfig.h"
#line 6816 "C:/MCC18/h/pconfig.h"
#line 6882 "C:/MCC18/h/pconfig.h"
#line 6948 "C:/MCC18/h/pconfig.h"
#line 7014 "C:/MCC18/h/pconfig.h"
#line 7080 "C:/MCC18/h/pconfig.h"
#line 7146 "C:/MCC18/h/pconfig.h"
#line 7212 "C:/MCC18/h/pconfig.h"
#line 7278 "C:/MCC18/h/pconfig.h"
#line 7344 "C:/MCC18/h/pconfig.h"
#line 7410 "C:/MCC18/h/pconfig.h"
#line 7476 "C:/MCC18/h/pconfig.h"
#line 7542 "C:/MCC18/h/pconfig.h"
#line 7608 "C:/MCC18/h/pconfig.h"
#line 7674 "C:/MCC18/h/pconfig.h"
#line 7740 "C:/MCC18/h/pconfig.h"
#line 7806 "C:/MCC18/h/pconfig.h"
#line 7872 "C:/MCC18/h/pconfig.h"
#line 7938 "C:/MCC18/h/pconfig.h"
#line 8004 "C:/MCC18/h/pconfig.h"
#line 8070 "C:/MCC18/h/pconfig.h"
#line 8136 "C:/MCC18/h/pconfig.h"
#line 8202 "C:/MCC18/h/pconfig.h"
#line 8268 "C:/MCC18/h/pconfig.h"
#line 8334 "C:/MCC18/h/pconfig.h"
#line 8400 "C:/MCC18/h/pconfig.h"
#line 8466 "C:/MCC18/h/pconfig.h"
#line 8532 "C:/MCC18/h/pconfig.h"
#line 8598 "C:/MCC18/h/pconfig.h"
#line 8664 "C:/MCC18/h/pconfig.h"
#line 8730 "C:/MCC18/h/pconfig.h"
#line 8796 "C:/MCC18/h/pconfig.h"
#line 8862 "C:/MCC18/h/pconfig.h"
#line 8928 "C:/MCC18/h/pconfig.h"
#line 8994 "C:/MCC18/h/pconfig.h"
#line 9060 "C:/MCC18/h/pconfig.h"
#line 9126 "C:/MCC18/h/pconfig.h"
#line 9192 "C:/MCC18/h/pconfig.h"
#line 9258 "C:/MCC18/h/pconfig.h"
#line 9324 "C:/MCC18/h/pconfig.h"
#line 9390 "C:/MCC18/h/pconfig.h"
#line 9456 "C:/MCC18/h/pconfig.h"
#line 9522 "C:/MCC18/h/pconfig.h"
#line 9588 "C:/MCC18/h/pconfig.h"
#line 9654 "C:/MCC18/h/pconfig.h"
#line 9720 "C:/MCC18/h/pconfig.h"
#line 9786 "C:/MCC18/h/pconfig.h"
#line 9852 "C:/MCC18/h/pconfig.h"
#line 9918 "C:/MCC18/h/pconfig.h"
#line 9984 "C:/MCC18/h/pconfig.h"
#line 10050 "C:/MCC18/h/pconfig.h"
#line 10116 "C:/MCC18/h/pconfig.h"
#line 10182 "C:/MCC18/h/pconfig.h"
#line 10248 "C:/MCC18/h/pconfig.h"
#line 10314 "C:/MCC18/h/pconfig.h"
#line 10380 "C:/MCC18/h/pconfig.h"
#line 10446 "C:/MCC18/h/pconfig.h"
#line 10512 "C:/MCC18/h/pconfig.h"
#line 10578 "C:/MCC18/h/pconfig.h"
#line 10644 "C:/MCC18/h/pconfig.h"
#line 10710 "C:/MCC18/h/pconfig.h"
#line 10776 "C:/MCC18/h/pconfig.h"
#line 10842 "C:/MCC18/h/pconfig.h"
#line 10908 "C:/MCC18/h/pconfig.h"
#line 10974 "C:/MCC18/h/pconfig.h"
#line 11040 "C:/MCC18/h/pconfig.h"
#line 11106 "C:/MCC18/h/pconfig.h"
#line 11172 "C:/MCC18/h/pconfig.h"
#line 11238 "C:/MCC18/h/pconfig.h"
#line 11304 "C:/MCC18/h/pconfig.h"
#line 11370 "C:/MCC18/h/pconfig.h"
#line 11436 "C:/MCC18/h/pconfig.h"
#line 11502 "C:/MCC18/h/pconfig.h"
#line 11568 "C:/MCC18/h/pconfig.h"
#line 11634 "C:/MCC18/h/pconfig.h"
#line 11700 "C:/MCC18/h/pconfig.h"
#line 11766 "C:/MCC18/h/pconfig.h"
#line 11832 "C:/MCC18/h/pconfig.h"
#line 11898 "C:/MCC18/h/pconfig.h"
#line 11964 "C:/MCC18/h/pconfig.h"
#line 12030 "C:/MCC18/h/pconfig.h"
#line 12096 "C:/MCC18/h/pconfig.h"
#line 12162 "C:/MCC18/h/pconfig.h"
#line 12228 "C:/MCC18/h/pconfig.h"
#line 12294 "C:/MCC18/h/pconfig.h"
#line 12360 "C:/MCC18/h/pconfig.h"
#line 12426 "C:/MCC18/h/pconfig.h"
#line 12492 "C:/MCC18/h/pconfig.h"
#line 12558 "C:/MCC18/h/pconfig.h"
#line 12624 "C:/MCC18/h/pconfig.h"
#line 12690 "C:/MCC18/h/pconfig.h"
#line 12756 "C:/MCC18/h/pconfig.h"
#line 12822 "C:/MCC18/h/pconfig.h"
#line 12888 "C:/MCC18/h/pconfig.h"
#line 12954 "C:/MCC18/h/pconfig.h"
#line 13020 "C:/MCC18/h/pconfig.h"
#line 13086 "C:/MCC18/h/pconfig.h"
#line 13152 "C:/MCC18/h/pconfig.h"
#line 13218 "C:/MCC18/h/pconfig.h"
#line 13284 "C:/MCC18/h/pconfig.h"
#line 13350 "C:/MCC18/h/pconfig.h"
#line 13416 "C:/MCC18/h/pconfig.h"
#line 13482 "C:/MCC18/h/pconfig.h"
#line 13548 "C:/MCC18/h/pconfig.h"
#line 13614 "C:/MCC18/h/pconfig.h"
#line 13680 "C:/MCC18/h/pconfig.h"
#line 13746 "C:/MCC18/h/pconfig.h"
#line 13812 "C:/MCC18/h/pconfig.h"
#line 13878 "C:/MCC18/h/pconfig.h"
#line 13944 "C:/MCC18/h/pconfig.h"
#line 14010 "C:/MCC18/h/pconfig.h"
#line 14076 "C:/MCC18/h/pconfig.h"
#line 14142 "C:/MCC18/h/pconfig.h"
#line 14208 "C:/MCC18/h/pconfig.h"
#line 14274 "C:/MCC18/h/pconfig.h"
#line 14340 "C:/MCC18/h/pconfig.h"
#line 14406 "C:/MCC18/h/pconfig.h"
#line 14472 "C:/MCC18/h/pconfig.h"
#line 14538 "C:/MCC18/h/pconfig.h"
#line 14604 "C:/MCC18/h/pconfig.h"
#line 14670 "C:/MCC18/h/pconfig.h"
#line 14736 "C:/MCC18/h/pconfig.h"
#line 14802 "C:/MCC18/h/pconfig.h"
#line 14868 "C:/MCC18/h/pconfig.h"
#line 14934 "C:/MCC18/h/pconfig.h"
#line 15000 "C:/MCC18/h/pconfig.h"
#line 15066 "C:/MCC18/h/pconfig.h"
#line 15132 "C:/MCC18/h/pconfig.h"
#line 15198 "C:/MCC18/h/pconfig.h"
#line 15264 "C:/MCC18/h/pconfig.h"
#line 15330 "C:/MCC18/h/pconfig.h"
#line 15396 "C:/MCC18/h/pconfig.h"
#line 15462 "C:/MCC18/h/pconfig.h"
#line 15528 "C:/MCC18/h/pconfig.h"
#line 15594 "C:/MCC18/h/pconfig.h"
#line 15660 "C:/MCC18/h/pconfig.h"
#line 15726 "C:/MCC18/h/pconfig.h"
#line 15792 "C:/MCC18/h/pconfig.h"
#line 15858 "C:/MCC18/h/pconfig.h"
#line 15924 "C:/MCC18/h/pconfig.h"
#line 15990 "C:/MCC18/h/pconfig.h"
#line 16056 "C:/MCC18/h/pconfig.h"
#line 16122 "C:/MCC18/h/pconfig.h"
#line 16188 "C:/MCC18/h/pconfig.h"
#line 16254 "C:/MCC18/h/pconfig.h"
#line 16320 "C:/MCC18/h/pconfig.h"
#line 16386 "C:/MCC18/h/pconfig.h"
#line 16452 "C:/MCC18/h/pconfig.h"
#line 16518 "C:/MCC18/h/pconfig.h"
#line 16584 "C:/MCC18/h/pconfig.h"
#line 16650 "C:/MCC18/h/pconfig.h"
#line 16716 "C:/MCC18/h/pconfig.h"
#line 16782 "C:/MCC18/h/pconfig.h"
#line 16848 "C:/MCC18/h/pconfig.h"
#line 16914 "C:/MCC18/h/pconfig.h"
#line 16980 "C:/MCC18/h/pconfig.h"
#line 17046 "C:/MCC18/h/pconfig.h"
#line 17112 "C:/MCC18/h/pconfig.h"

#line 17114 "C:/MCC18/h/pconfig.h"




 
 
 

#line 17148 "C:/MCC18/h/pconfig.h"
 
 


#line 17153 "C:/MCC18/h/pconfig.h"

#line 17155 "C:/MCC18/h/pconfig.h"
#line 17156 "C:/MCC18/h/pconfig.h"
#line 17157 "C:/MCC18/h/pconfig.h"


#line 17168 "C:/MCC18/h/pconfig.h"
#line 17169 "C:/MCC18/h/pconfig.h"
#line 17170 "C:/MCC18/h/pconfig.h"
#line 17171 "C:/MCC18/h/pconfig.h"


#line 17192 "C:/MCC18/h/pconfig.h"
#line 17193 "C:/MCC18/h/pconfig.h"
#line 17194 "C:/MCC18/h/pconfig.h"

#line 17199 "C:/MCC18/h/pconfig.h"
#line 17200 "C:/MCC18/h/pconfig.h"
#line 17202 "C:/MCC18/h/pconfig.h"
#line 17203 "C:/MCC18/h/pconfig.h"

#line 17205 "C:/MCC18/h/pconfig.h"
#line 17210 "C:/MCC18/h/pconfig.h"

#line 17212 "C:/MCC18/h/pconfig.h"
#line 17215 "C:/MCC18/h/pconfig.h"

#line 17217 "C:/MCC18/h/pconfig.h"
#line 17222 "C:/MCC18/h/pconfig.h"

#line 17224 "C:/MCC18/h/pconfig.h"
#line 17228 "C:/MCC18/h/pconfig.h"


#line 17236 "C:/MCC18/h/pconfig.h"
#line 17237 "C:/MCC18/h/pconfig.h"
#line 17242 "C:/MCC18/h/pconfig.h"


#line 17244 "C:/MCC18/h/pconfig.h"
#line 17245 "C:/MCC18/h/pconfig.h"
#line 17249 "C:/MCC18/h/pconfig.h"


#line 17251 "C:/MCC18/h/pconfig.h"
#line 17252 "C:/MCC18/h/pconfig.h"
#line 17259 "C:/MCC18/h/pconfig.h"

#line 17261 "C:/MCC18/h/pconfig.h"
#line 17266 "C:/MCC18/h/pconfig.h"


#line 17273 "C:/MCC18/h/pconfig.h"
#line 17274 "C:/MCC18/h/pconfig.h"

#line 17277 "C:/MCC18/h/pconfig.h"
#line 17278 "C:/MCC18/h/pconfig.h"
#line 17280 "C:/MCC18/h/pconfig.h"
#line 17281 "C:/MCC18/h/pconfig.h"


#line 17289 "C:/MCC18/h/pconfig.h"
#line 17290 "C:/MCC18/h/pconfig.h"

#line 17297 "C:/MCC18/h/pconfig.h"
#line 17298 "C:/MCC18/h/pconfig.h"
#line 17300 "C:/MCC18/h/pconfig.h"
#line 17301 "C:/MCC18/h/pconfig.h"


#line 17305 "C:/MCC18/h/pconfig.h"
#line 17306 "C:/MCC18/h/pconfig.h"
#line 17310 "C:/MCC18/h/pconfig.h"


#line 17314 "C:/MCC18/h/pconfig.h"
#line 17315 "C:/MCC18/h/pconfig.h"
#line 17317 "C:/MCC18/h/pconfig.h"
	
#line 17319 "C:/MCC18/h/pconfig.h"
#line 17321 "C:/MCC18/h/pconfig.h"


#line 17326 "C:/MCC18/h/pconfig.h"
#line 17327 "C:/MCC18/h/pconfig.h"
#line 17333 "C:/MCC18/h/pconfig.h"


#line 17335 "C:/MCC18/h/pconfig.h"
#line 17336 "C:/MCC18/h/pconfig.h"
#line 17337 "C:/MCC18/h/pconfig.h"
#line 17338 "C:/MCC18/h/pconfig.h"
#line 17339 "C:/MCC18/h/pconfig.h"
#line 17340 "C:/MCC18/h/pconfig.h"
#line 17341 "C:/MCC18/h/pconfig.h"
#line 17342 "C:/MCC18/h/pconfig.h"
#line 17343 "C:/MCC18/h/pconfig.h"
#line 17344 "C:/MCC18/h/pconfig.h"

#line 17346 "C:/MCC18/h/pconfig.h"
#line 17355 "C:/MCC18/h/pconfig.h"

#line 17357 "C:/MCC18/h/pconfig.h"
#line 17364 "C:/MCC18/h/pconfig.h"

#line 17366 "C:/MCC18/h/pconfig.h"
#line 17374 "C:/MCC18/h/pconfig.h"


#line 17376 "C:/MCC18/h/pconfig.h"
#line 17377 "C:/MCC18/h/pconfig.h"
#line 17387 "C:/MCC18/h/pconfig.h"

#line 17389 "C:/MCC18/h/pconfig.h"
#line 17395 "C:/MCC18/h/pconfig.h"

#line 17397 "C:/MCC18/h/pconfig.h"
#line 17402 "C:/MCC18/h/pconfig.h"


#line 17406 "C:/MCC18/h/pconfig.h"
#line 17407 "C:/MCC18/h/pconfig.h"
#line 17417 "C:/MCC18/h/pconfig.h"
#line 17419 "C:/MCC18/h/pconfig.h"

#line 17420 "C:/MCC18/h/pconfig.h"
#line 17421 "C:/MCC18/h/pconfig.h"
#line 17423 "C:/MCC18/h/pconfig.h"
#line 17424 "C:/MCC18/h/pconfig.h"

#line 17426 "C:/MCC18/h/pconfig.h"
#line 17437 "C:/MCC18/h/pconfig.h"


#line 17439 "C:/MCC18/h/pconfig.h"
#line 17440 "C:/MCC18/h/pconfig.h"
#line 17443 "C:/MCC18/h/pconfig.h"


#line 17451 "C:/MCC18/h/pconfig.h"
#line 17452 "C:/MCC18/h/pconfig.h"
#line 17457 "C:/MCC18/h/pconfig.h"


#line 17459 "C:/MCC18/h/pconfig.h"
#line 17460 "C:/MCC18/h/pconfig.h"
#line 17463 "C:/MCC18/h/pconfig.h"


#line 17465 "C:/MCC18/h/pconfig.h"
#line 17466 "C:/MCC18/h/pconfig.h"
#line 17471 "C:/MCC18/h/pconfig.h"
#line 17474 "C:/MCC18/h/pconfig.h"
#line 17475 "C:/MCC18/h/pconfig.h"


#line 17477 "C:/MCC18/h/pconfig.h"
#line 17478 "C:/MCC18/h/pconfig.h"
#line 17485 "C:/MCC18/h/pconfig.h"
#line 17487 "C:/MCC18/h/pconfig.h"

#line 17488 "C:/MCC18/h/pconfig.h"
#line 17489 "C:/MCC18/h/pconfig.h"
#line 17493 "C:/MCC18/h/pconfig.h"
#line 17494 "C:/MCC18/h/pconfig.h"


#line 17499 "C:/MCC18/h/pconfig.h"
#line 17500 "C:/MCC18/h/pconfig.h"
#line 17510 "C:/MCC18/h/pconfig.h"

#line 17512 "C:/MCC18/h/pconfig.h"
#line 17518 "C:/MCC18/h/pconfig.h"

#line 17520 "C:/MCC18/h/pconfig.h"
#line 17527 "C:/MCC18/h/pconfig.h"

#line 17529 "C:/MCC18/h/pconfig.h"
#line 17537 "C:/MCC18/h/pconfig.h"

#line 17539 "C:/MCC18/h/pconfig.h"
#line 17549 "C:/MCC18/h/pconfig.h"


#line 17552 "C:/MCC18/h/pconfig.h"
#line 17553 "C:/MCC18/h/pconfig.h"

#line 17561 "C:/MCC18/h/pconfig.h"
#line 17562 "C:/MCC18/h/pconfig.h"
#line 17564 "C:/MCC18/h/pconfig.h"
#line 17565 "C:/MCC18/h/pconfig.h"


#line 17568 "C:/MCC18/h/pconfig.h"
#line 17569 "C:/MCC18/h/pconfig.h"
#line 17575 "C:/MCC18/h/pconfig.h"


#line 17578 "C:/MCC18/h/pconfig.h"
#line 17579 "C:/MCC18/h/pconfig.h"
#line 17584 "C:/MCC18/h/pconfig.h"


#line 17588 "C:/MCC18/h/pconfig.h"
#line 17589 "C:/MCC18/h/pconfig.h"
#line 17592 "C:/MCC18/h/pconfig.h"


#line 17595 "C:/MCC18/h/pconfig.h"
#line 17596 "C:/MCC18/h/pconfig.h"
#line 17600 "C:/MCC18/h/pconfig.h"


#line 17604 "C:/MCC18/h/pconfig.h"
#line 17605 "C:/MCC18/h/pconfig.h"

#line 17615 "C:/MCC18/h/pconfig.h"
#line 17616 "C:/MCC18/h/pconfig.h"

#line 17619 "C:/MCC18/h/pconfig.h"
#line 17620 "C:/MCC18/h/pconfig.h"
#line 17623 "C:/MCC18/h/pconfig.h"
#line 17624 "C:/MCC18/h/pconfig.h"

#line 17626 "C:/MCC18/h/pconfig.h"
#line 32 "C:/MCC18/h/usart.h"



 


#line 43 "C:/MCC18/h/usart.h"
 

 
#line 86 "C:/MCC18/h/usart.h"
 


#line 89 "C:/MCC18/h/usart.h"
 
#line 91 "C:/MCC18/h/usart.h"


#line 93 "C:/MCC18/h/usart.h"
 



#line 98 "C:/MCC18/h/usart.h"
#line 99 "C:/MCC18/h/usart.h"
#line 100 "C:/MCC18/h/usart.h"
#line 101 "C:/MCC18/h/usart.h"
#line 102 "C:/MCC18/h/usart.h"
#line 103 "C:/MCC18/h/usart.h"
#line 104 "C:/MCC18/h/usart.h"
#line 105 "C:/MCC18/h/usart.h"
#line 106 "C:/MCC18/h/usart.h"
#line 107 "C:/MCC18/h/usart.h"
#line 108 "C:/MCC18/h/usart.h"
#line 109 "C:/MCC18/h/usart.h"
#line 110 "C:/MCC18/h/usart.h"
#line 111 "C:/MCC18/h/usart.h"
#line 112 "C:/MCC18/h/usart.h"
#line 113 "C:/MCC18/h/usart.h"



#line 117 "C:/MCC18/h/usart.h"
#line 150 "C:/MCC18/h/usart.h"

 

#line 154 "C:/MCC18/h/usart.h"
#line 155 "C:/MCC18/h/usart.h"


#line 157 "C:/MCC18/h/usart.h"
 


#line 161 "C:/MCC18/h/usart.h"
#line 162 "C:/MCC18/h/usart.h"
#line 163 "C:/MCC18/h/usart.h"
#line 164 "C:/MCC18/h/usart.h"
#line 165 "C:/MCC18/h/usart.h"
#line 166 "C:/MCC18/h/usart.h"
#line 167 "C:/MCC18/h/usart.h"
#line 168 "C:/MCC18/h/usart.h"

#line 170 "C:/MCC18/h/usart.h"
#line 187 "C:/MCC18/h/usart.h"

#line 189 "C:/MCC18/h/usart.h"


 

#line 194 "C:/MCC18/h/usart.h"
#line 195 "C:/MCC18/h/usart.h"
#line 216 "C:/MCC18/h/usart.h"

#line 226 "C:/MCC18/h/usart.h"
#line 229 "C:/MCC18/h/usart.h"

#line 239 "C:/MCC18/h/usart.h"
#line 242 "C:/MCC18/h/usart.h"

#line 257 "C:/MCC18/h/usart.h"

#line 268 "C:/MCC18/h/usart.h"

#line 281 "C:/MCC18/h/usart.h"

#line 295 "C:/MCC18/h/usart.h"
#line 298 "C:/MCC18/h/usart.h"

 

#line 301 "C:/MCC18/h/usart.h"
#line 302 "C:/MCC18/h/usart.h"

#line 328 "C:/MCC18/h/usart.h"

#line 345 "C:/MCC18/h/usart.h"

#line 356 "C:/MCC18/h/usart.h"

#line 369 "C:/MCC18/h/usart.h"

#line 383 "C:/MCC18/h/usart.h"
#line 387 "C:/MCC18/h/usart.h"


#line 389 "C:/MCC18/h/usart.h"
#line 390 "C:/MCC18/h/usart.h"
 
 
union USART
{
  unsigned char val;
  struct
  {
    unsigned RX_NINE:1;         
    unsigned TX_NINE:1;         
    unsigned FRAME_ERROR:1;     
    unsigned OVERRUN_ERROR:1;   
    unsigned fill:4;
  };
};
extern union USART USART_Status;
void OpenUSART ( unsigned char config,  unsigned spbrg);


#line 417 "C:/MCC18/h/usart.h"
 
#line 419 "C:/MCC18/h/usart.h"

char ReadUSART (void);
void WriteUSART ( char data);
void getsUSART ( char *buffer,  unsigned char len);
void putsUSART ( char *data);
void putrsUSART ( const far  rom char *data);


#line 434 "C:/MCC18/h/usart.h"
 
#line 436 "C:/MCC18/h/usart.h"


#line 445 "C:/MCC18/h/usart.h"
 
#line 447 "C:/MCC18/h/usart.h"


#line 458 "C:/MCC18/h/usart.h"
 
#line 460 "C:/MCC18/h/usart.h"


#line 472 "C:/MCC18/h/usart.h"
 
#line 474 "C:/MCC18/h/usart.h"

#line 476 "C:/MCC18/h/usart.h"

#line 478 "C:/MCC18/h/usart.h"
void baudUSART ( unsigned char baudconfig);
#line 480 "C:/MCC18/h/usart.h"


#line 483 "C:/MCC18/h/usart.h"
#line 485 "C:/MCC18/h/usart.h"


#line 487 "C:/MCC18/h/usart.h"
#line 488 "C:/MCC18/h/usart.h"
#line 491 "C:/MCC18/h/usart.h"

 

	
#line 496 "C:/MCC18/h/usart.h"
#line 497 "C:/MCC18/h/usart.h"
#line 498 "C:/MCC18/h/usart.h"
#line 499 "C:/MCC18/h/usart.h"
	
#line 501 "C:/MCC18/h/usart.h"
#line 507 "C:/MCC18/h/usart.h"

#line 509 "C:/MCC18/h/usart.h"
#line 511 "C:/MCC18/h/usart.h"

#line 513 "C:/MCC18/h/usart.h"
#line 4 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:\Users\Anthony\Documents/usb_config.h"

#line 45 "C:\Users\Anthony\Documents/usb_config.h"
 


#line 49 "C:\Users\Anthony\Documents/usb_config.h"
 


#line 53 "C:\Users\Anthony\Documents/usb_config.h"

 
#line 56 "C:\Users\Anthony\Documents/usb_config.h"
								
								
								
								
								
									
#line 63 "C:\Users\Anthony\Documents/usb_config.h"




#line 68 "C:\Users\Anthony\Documents/usb_config.h"
#line 69 "C:\Users\Anthony\Documents/usb_config.h"



#line 73 "C:\Users\Anthony\Documents/usb_config.h"
#line 74 "C:\Users\Anthony\Documents/usb_config.h"




#line 79 "C:\Users\Anthony\Documents/usb_config.h"





#line 85 "C:\Users\Anthony\Documents/usb_config.h"

 
#line 88 "C:\Users\Anthony\Documents/usb_config.h"


#line 91 "C:\Users\Anthony\Documents/usb_config.h"





#line 97 "C:\Users\Anthony\Documents/usb_config.h"























#line 121 "C:\Users\Anthony\Documents/usb_config.h"















#line 137 "C:\Users\Anthony\Documents/usb_config.h"
                                                
                                                



#line 143 "C:\Users\Anthony\Documents/usb_config.h"

#line 145 "C:\Users\Anthony\Documents/usb_config.h"


#line 148 "C:\Users\Anthony\Documents/usb_config.h"










 
#line 160 "C:\Users\Anthony\Documents/usb_config.h"

 
#line 163 "C:\Users\Anthony\Documents/usb_config.h"

 
#line 166 "C:\Users\Anthony\Documents/usb_config.h"
#line 167 "C:\Users\Anthony\Documents/usb_config.h"
#line 168 "C:\Users\Anthony\Documents/usb_config.h"

#line 170 "C:\Users\Anthony\Documents/usb_config.h"
#line 171 "C:\Users\Anthony\Documents/usb_config.h"
#line 172 "C:\Users\Anthony\Documents/usb_config.h"
#line 173 "C:\Users\Anthony\Documents/usb_config.h"


#line 176 "C:\Users\Anthony\Documents/usb_config.h"
 

#line 179 "C:\Users\Anthony\Documents/usb_config.h"
#line 5 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

#line 45 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
 


#line 49 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

 
#line 52 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 54 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 55 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 56 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

#line 58 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 59 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 60 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

 
#line 1 "C:/MCC18/h/stddef.h"
 

#line 4 "C:/MCC18/h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "C:/MCC18/h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "C:/MCC18/h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "C:/MCC18/h/stddef.h"
 
#line 36 "C:/MCC18/h/stddef.h"


#line 41 "C:/MCC18/h/stddef.h"
 
#line 43 "C:/MCC18/h/stddef.h"

#line 45 "C:/MCC18/h/stddef.h"
#line 62 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
 

typedef enum _BOOL { FALSE = 0, TRUE } BOOL;     
typedef enum _BIT { CLEAR = 0, SET } BIT;

#line 68 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 69 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 70 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

 
typedef signed int          INT;
typedef signed char         INT8;
typedef signed short int    INT16;
typedef signed long int     INT32;

 
#line 79 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 81 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

 
typedef unsigned int        UINT;
typedef unsigned char       UINT8;
typedef unsigned short int  UINT16;
 
#line 88 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
typedef unsigned short long UINT24;
#line 90 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
typedef unsigned long int   UINT32;      
 
#line 93 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 95 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

typedef union
{
    UINT8 Val;
    struct
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
    } bits;
} UINT8_VAL, UINT8_BITS;

typedef union 
{
    UINT16 Val;
    UINT8 v[2] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
    } bits;
} UINT16_VAL, UINT16_BITS;

 
#line 144 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
typedef union
{
    UINT24 Val;
    UINT8 v[3] ;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
    } byte;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
    } bits;
} UINT24_VAL, UINT24_BITS;
#line 183 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

typedef union
{
    UINT32 Val;
    UINT16 w[2] ;
    UINT8  v[4] ;
    struct 
    {
        UINT16 LW;
        UINT16 HW;
    } word;
    struct 
    {
        UINT8 LB;
        UINT8 HB;
        UINT8 UB;
        UINT8 MB;
    } byte;
    struct 
    {
        UINT16_VAL low;
        UINT16_VAL high;
    }wordUnion;
    struct 
    {
         UINT8 b0:1;
         UINT8 b1:1;
         UINT8 b2:1;
         UINT8 b3:1;
         UINT8 b4:1;
         UINT8 b5:1;
         UINT8 b6:1;
         UINT8 b7:1;
         UINT8 b8:1;
         UINT8 b9:1;
         UINT8 b10:1;
         UINT8 b11:1;
         UINT8 b12:1;
         UINT8 b13:1;
         UINT8 b14:1;
         UINT8 b15:1;
         UINT8 b16:1;
         UINT8 b17:1;
         UINT8 b18:1;
         UINT8 b19:1;
         UINT8 b20:1;
         UINT8 b21:1;
         UINT8 b22:1;
         UINT8 b23:1;
         UINT8 b24:1;
         UINT8 b25:1;
         UINT8 b26:1;
         UINT8 b27:1;
         UINT8 b28:1;
         UINT8 b29:1;
         UINT8 b30:1;
         UINT8 b31:1;
    } bits;
} UINT32_VAL;

 
#line 245 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 332 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

 

 
typedef void                    VOID;

typedef char                    CHAR8;
typedef unsigned char           UCHAR8;

typedef unsigned char           BYTE;                            
typedef unsigned short int      WORD;                            
typedef unsigned long           DWORD;                           
 

typedef unsigned long long      QWORD;                           
typedef signed char             CHAR;                            
typedef signed short int        SHORT;                           
typedef signed long             LONG;                            
 

typedef signed long long        LONGLONG;                        
typedef union
{
    BYTE Val;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
    } bits;
} BYTE_VAL, BYTE_BITS;

typedef union
{
    WORD Val;
    BYTE v[2] ;
    struct 
    {
        BYTE LB;
        BYTE HB;
    } byte;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
    } bits;
} WORD_VAL, WORD_BITS;

typedef union
{
    DWORD Val;
    WORD w[2] ;
    BYTE v[4] ;
    struct 
    {
        WORD LW;
        WORD HW;
    } word;
    struct 
    {
        BYTE LB;
        BYTE HB;
        BYTE UB;
        BYTE MB;
    } byte;
    struct 
    {
        WORD_VAL low;
        WORD_VAL high;
    }wordUnion;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
    } bits;
} DWORD_VAL;

 
typedef union
{
    QWORD Val;
    DWORD d[2] ;
    WORD w[4] ;
    BYTE v[8] ;
    struct 
    {
        DWORD LD;
        DWORD HD;
    } dword;
    struct 
    {
        WORD LW;
        WORD HW;
        WORD UW;
        WORD MW;
    } word;
    struct 
    {
         BYTE b0:1;
         BYTE b1:1;
         BYTE b2:1;
         BYTE b3:1;
         BYTE b4:1;
         BYTE b5:1;
         BYTE b6:1;
         BYTE b7:1;
         BYTE b8:1;
         BYTE b9:1;
         BYTE b10:1;
         BYTE b11:1;
         BYTE b12:1;
         BYTE b13:1;
         BYTE b14:1;
         BYTE b15:1;
         BYTE b16:1;
         BYTE b17:1;
         BYTE b18:1;
         BYTE b19:1;
         BYTE b20:1;
         BYTE b21:1;
         BYTE b22:1;
         BYTE b23:1;
         BYTE b24:1;
         BYTE b25:1;
         BYTE b26:1;
         BYTE b27:1;
         BYTE b28:1;
         BYTE b29:1;
         BYTE b30:1;
         BYTE b31:1;
         BYTE b32:1;
         BYTE b33:1;
         BYTE b34:1;
         BYTE b35:1;
         BYTE b36:1;
         BYTE b37:1;
         BYTE b38:1;
         BYTE b39:1;
         BYTE b40:1;
         BYTE b41:1;
         BYTE b42:1;
         BYTE b43:1;
         BYTE b44:1;
         BYTE b45:1;
         BYTE b46:1;
         BYTE b47:1;
         BYTE b48:1;
         BYTE b49:1;
         BYTE b50:1;
         BYTE b51:1;
         BYTE b52:1;
         BYTE b53:1;
         BYTE b54:1;
         BYTE b55:1;
         BYTE b56:1;
         BYTE b57:1;
         BYTE b58:1;
         BYTE b59:1;
         BYTE b60:1;
         BYTE b61:1;
         BYTE b62:1;
         BYTE b63:1;
    } bits;
} QWORD_VAL;

#line 547 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

#line 549 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 6 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:\Users\Anthony\Documents/Compiler.h"

#line 54 "C:\Users\Anthony\Documents/Compiler.h"
 

#line 57 "C:\Users\Anthony\Documents/Compiler.h"


#line 60 "C:\Users\Anthony\Documents/Compiler.h"
	
#line 62 "C:\Users\Anthony\Documents/Compiler.h"
#line 1 "C:/MCC18/h/p18cxxx.h"
#line 5 "C:/MCC18/h/p18cxxx.h"
#line 7 "C:/MCC18/h/p18cxxx.h"
#line 9 "C:/MCC18/h/p18cxxx.h"
#line 11 "C:/MCC18/h/p18cxxx.h"
#line 13 "C:/MCC18/h/p18cxxx.h"
#line 15 "C:/MCC18/h/p18cxxx.h"
#line 17 "C:/MCC18/h/p18cxxx.h"
#line 19 "C:/MCC18/h/p18cxxx.h"
#line 21 "C:/MCC18/h/p18cxxx.h"
#line 23 "C:/MCC18/h/p18cxxx.h"
#line 25 "C:/MCC18/h/p18cxxx.h"
#line 27 "C:/MCC18/h/p18cxxx.h"
#line 29 "C:/MCC18/h/p18cxxx.h"
#line 31 "C:/MCC18/h/p18cxxx.h"
#line 33 "C:/MCC18/h/p18cxxx.h"
#line 35 "C:/MCC18/h/p18cxxx.h"
#line 37 "C:/MCC18/h/p18cxxx.h"
#line 39 "C:/MCC18/h/p18cxxx.h"
#line 41 "C:/MCC18/h/p18cxxx.h"
#line 43 "C:/MCC18/h/p18cxxx.h"
#line 45 "C:/MCC18/h/p18cxxx.h"
#line 47 "C:/MCC18/h/p18cxxx.h"
#line 49 "C:/MCC18/h/p18cxxx.h"
#line 51 "C:/MCC18/h/p18cxxx.h"
#line 53 "C:/MCC18/h/p18cxxx.h"
#line 55 "C:/MCC18/h/p18cxxx.h"
#line 57 "C:/MCC18/h/p18cxxx.h"
#line 59 "C:/MCC18/h/p18cxxx.h"
#line 61 "C:/MCC18/h/p18cxxx.h"
#line 63 "C:/MCC18/h/p18cxxx.h"
#line 65 "C:/MCC18/h/p18cxxx.h"
#line 67 "C:/MCC18/h/p18cxxx.h"
#line 69 "C:/MCC18/h/p18cxxx.h"
#line 71 "C:/MCC18/h/p18cxxx.h"
#line 73 "C:/MCC18/h/p18cxxx.h"
#line 75 "C:/MCC18/h/p18cxxx.h"
#line 77 "C:/MCC18/h/p18cxxx.h"
#line 79 "C:/MCC18/h/p18cxxx.h"
#line 81 "C:/MCC18/h/p18cxxx.h"
#line 83 "C:/MCC18/h/p18cxxx.h"
#line 85 "C:/MCC18/h/p18cxxx.h"
#line 87 "C:/MCC18/h/p18cxxx.h"
#line 89 "C:/MCC18/h/p18cxxx.h"
#line 91 "C:/MCC18/h/p18cxxx.h"
#line 93 "C:/MCC18/h/p18cxxx.h"
#line 95 "C:/MCC18/h/p18cxxx.h"
#line 97 "C:/MCC18/h/p18cxxx.h"
#line 99 "C:/MCC18/h/p18cxxx.h"
#line 101 "C:/MCC18/h/p18cxxx.h"
#line 103 "C:/MCC18/h/p18cxxx.h"
#line 105 "C:/MCC18/h/p18cxxx.h"
#line 107 "C:/MCC18/h/p18cxxx.h"
#line 109 "C:/MCC18/h/p18cxxx.h"
#line 111 "C:/MCC18/h/p18cxxx.h"
#line 113 "C:/MCC18/h/p18cxxx.h"
#line 115 "C:/MCC18/h/p18cxxx.h"
#line 117 "C:/MCC18/h/p18cxxx.h"
#line 119 "C:/MCC18/h/p18cxxx.h"
#line 121 "C:/MCC18/h/p18cxxx.h"
#line 123 "C:/MCC18/h/p18cxxx.h"
#line 125 "C:/MCC18/h/p18cxxx.h"
#line 127 "C:/MCC18/h/p18cxxx.h"
#line 129 "C:/MCC18/h/p18cxxx.h"
#line 131 "C:/MCC18/h/p18cxxx.h"
#line 133 "C:/MCC18/h/p18cxxx.h"
#line 135 "C:/MCC18/h/p18cxxx.h"
#line 137 "C:/MCC18/h/p18cxxx.h"
#line 139 "C:/MCC18/h/p18cxxx.h"
#line 141 "C:/MCC18/h/p18cxxx.h"
#line 143 "C:/MCC18/h/p18cxxx.h"
#line 145 "C:/MCC18/h/p18cxxx.h"
#line 147 "C:/MCC18/h/p18cxxx.h"
#line 149 "C:/MCC18/h/p18cxxx.h"
#line 151 "C:/MCC18/h/p18cxxx.h"
#line 153 "C:/MCC18/h/p18cxxx.h"
#line 155 "C:/MCC18/h/p18cxxx.h"
#line 157 "C:/MCC18/h/p18cxxx.h"
#line 159 "C:/MCC18/h/p18cxxx.h"
#line 161 "C:/MCC18/h/p18cxxx.h"
#line 163 "C:/MCC18/h/p18cxxx.h"
#line 165 "C:/MCC18/h/p18cxxx.h"
#line 167 "C:/MCC18/h/p18cxxx.h"
#line 169 "C:/MCC18/h/p18cxxx.h"
#line 171 "C:/MCC18/h/p18cxxx.h"
#line 173 "C:/MCC18/h/p18cxxx.h"
#line 175 "C:/MCC18/h/p18cxxx.h"
#line 177 "C:/MCC18/h/p18cxxx.h"
#line 179 "C:/MCC18/h/p18cxxx.h"
#line 181 "C:/MCC18/h/p18cxxx.h"
#line 183 "C:/MCC18/h/p18cxxx.h"
#line 185 "C:/MCC18/h/p18cxxx.h"
#line 187 "C:/MCC18/h/p18cxxx.h"
#line 189 "C:/MCC18/h/p18cxxx.h"
#line 191 "C:/MCC18/h/p18cxxx.h"
#line 193 "C:/MCC18/h/p18cxxx.h"
#line 195 "C:/MCC18/h/p18cxxx.h"
#line 197 "C:/MCC18/h/p18cxxx.h"
#line 199 "C:/MCC18/h/p18cxxx.h"
#line 201 "C:/MCC18/h/p18cxxx.h"
#line 203 "C:/MCC18/h/p18cxxx.h"
#line 205 "C:/MCC18/h/p18cxxx.h"
#line 207 "C:/MCC18/h/p18cxxx.h"
#line 209 "C:/MCC18/h/p18cxxx.h"
#line 211 "C:/MCC18/h/p18cxxx.h"
#line 213 "C:/MCC18/h/p18cxxx.h"
#line 215 "C:/MCC18/h/p18cxxx.h"
#line 217 "C:/MCC18/h/p18cxxx.h"
#line 219 "C:/MCC18/h/p18cxxx.h"
#line 221 "C:/MCC18/h/p18cxxx.h"
#line 223 "C:/MCC18/h/p18cxxx.h"
#line 225 "C:/MCC18/h/p18cxxx.h"
#line 227 "C:/MCC18/h/p18cxxx.h"
#line 229 "C:/MCC18/h/p18cxxx.h"
#line 231 "C:/MCC18/h/p18cxxx.h"
#line 233 "C:/MCC18/h/p18cxxx.h"
#line 235 "C:/MCC18/h/p18cxxx.h"
#line 237 "C:/MCC18/h/p18cxxx.h"
#line 239 "C:/MCC18/h/p18cxxx.h"
#line 241 "C:/MCC18/h/p18cxxx.h"
#line 243 "C:/MCC18/h/p18cxxx.h"
#line 245 "C:/MCC18/h/p18cxxx.h"
#line 247 "C:/MCC18/h/p18cxxx.h"
#line 249 "C:/MCC18/h/p18cxxx.h"
#line 251 "C:/MCC18/h/p18cxxx.h"
#line 253 "C:/MCC18/h/p18cxxx.h"
#line 255 "C:/MCC18/h/p18cxxx.h"
#line 257 "C:/MCC18/h/p18cxxx.h"
#line 259 "C:/MCC18/h/p18cxxx.h"
#line 261 "C:/MCC18/h/p18cxxx.h"
#line 263 "C:/MCC18/h/p18cxxx.h"
#line 265 "C:/MCC18/h/p18cxxx.h"
#line 267 "C:/MCC18/h/p18cxxx.h"
#line 269 "C:/MCC18/h/p18cxxx.h"
#line 271 "C:/MCC18/h/p18cxxx.h"
#line 273 "C:/MCC18/h/p18cxxx.h"
#line 275 "C:/MCC18/h/p18cxxx.h"
#line 277 "C:/MCC18/h/p18cxxx.h"
#line 279 "C:/MCC18/h/p18cxxx.h"
#line 281 "C:/MCC18/h/p18cxxx.h"
#line 283 "C:/MCC18/h/p18cxxx.h"
#line 285 "C:/MCC18/h/p18cxxx.h"
#line 287 "C:/MCC18/h/p18cxxx.h"
#line 289 "C:/MCC18/h/p18cxxx.h"
#line 291 "C:/MCC18/h/p18cxxx.h"
#line 293 "C:/MCC18/h/p18cxxx.h"
#line 295 "C:/MCC18/h/p18cxxx.h"
#line 297 "C:/MCC18/h/p18cxxx.h"
#line 299 "C:/MCC18/h/p18cxxx.h"
#line 301 "C:/MCC18/h/p18cxxx.h"
#line 303 "C:/MCC18/h/p18cxxx.h"
#line 305 "C:/MCC18/h/p18cxxx.h"
#line 307 "C:/MCC18/h/p18cxxx.h"
#line 309 "C:/MCC18/h/p18cxxx.h"
#line 311 "C:/MCC18/h/p18cxxx.h"
#line 313 "C:/MCC18/h/p18cxxx.h"
#line 315 "C:/MCC18/h/p18cxxx.h"
#line 317 "C:/MCC18/h/p18cxxx.h"
#line 319 "C:/MCC18/h/p18cxxx.h"
#line 321 "C:/MCC18/h/p18cxxx.h"
#line 323 "C:/MCC18/h/p18cxxx.h"
#line 325 "C:/MCC18/h/p18cxxx.h"
#line 327 "C:/MCC18/h/p18cxxx.h"
#line 329 "C:/MCC18/h/p18cxxx.h"
#line 331 "C:/MCC18/h/p18cxxx.h"
#line 333 "C:/MCC18/h/p18cxxx.h"
#line 335 "C:/MCC18/h/p18cxxx.h"
#line 337 "C:/MCC18/h/p18cxxx.h"
#line 339 "C:/MCC18/h/p18cxxx.h"
#line 341 "C:/MCC18/h/p18cxxx.h"
#line 343 "C:/MCC18/h/p18cxxx.h"
#line 345 "C:/MCC18/h/p18cxxx.h"
#line 347 "C:/MCC18/h/p18cxxx.h"
#line 349 "C:/MCC18/h/p18cxxx.h"
#line 351 "C:/MCC18/h/p18cxxx.h"
#line 353 "C:/MCC18/h/p18cxxx.h"
#line 355 "C:/MCC18/h/p18cxxx.h"
#line 357 "C:/MCC18/h/p18cxxx.h"
#line 359 "C:/MCC18/h/p18cxxx.h"
#line 361 "C:/MCC18/h/p18cxxx.h"
#line 363 "C:/MCC18/h/p18cxxx.h"
#line 365 "C:/MCC18/h/p18cxxx.h"
#line 367 "C:/MCC18/h/p18cxxx.h"
#line 369 "C:/MCC18/h/p18cxxx.h"
#line 371 "C:/MCC18/h/p18cxxx.h"
#line 373 "C:/MCC18/h/p18cxxx.h"
#line 375 "C:/MCC18/h/p18cxxx.h"
#line 377 "C:/MCC18/h/p18cxxx.h"
#line 379 "C:/MCC18/h/p18cxxx.h"
#line 381 "C:/MCC18/h/p18cxxx.h"
#line 383 "C:/MCC18/h/p18cxxx.h"
#line 385 "C:/MCC18/h/p18cxxx.h"
#line 387 "C:/MCC18/h/p18cxxx.h"
#line 389 "C:/MCC18/h/p18cxxx.h"
#line 391 "C:/MCC18/h/p18cxxx.h"
#line 393 "C:/MCC18/h/p18cxxx.h"
#line 395 "C:/MCC18/h/p18cxxx.h"
#line 397 "C:/MCC18/h/p18cxxx.h"
#line 399 "C:/MCC18/h/p18cxxx.h"
#line 401 "C:/MCC18/h/p18cxxx.h"
#line 403 "C:/MCC18/h/p18cxxx.h"
#line 405 "C:/MCC18/h/p18cxxx.h"
#line 407 "C:/MCC18/h/p18cxxx.h"
#line 409 "C:/MCC18/h/p18cxxx.h"
#line 411 "C:/MCC18/h/p18cxxx.h"
#line 413 "C:/MCC18/h/p18cxxx.h"
#line 415 "C:/MCC18/h/p18cxxx.h"
#line 417 "C:/MCC18/h/p18cxxx.h"
#line 419 "C:/MCC18/h/p18cxxx.h"
#line 421 "C:/MCC18/h/p18cxxx.h"
#line 423 "C:/MCC18/h/p18cxxx.h"
#line 425 "C:/MCC18/h/p18cxxx.h"
#line 427 "C:/MCC18/h/p18cxxx.h"
#line 429 "C:/MCC18/h/p18cxxx.h"
#line 431 "C:/MCC18/h/p18cxxx.h"
#line 433 "C:/MCC18/h/p18cxxx.h"
#line 435 "C:/MCC18/h/p18cxxx.h"
#line 437 "C:/MCC18/h/p18cxxx.h"
#line 439 "C:/MCC18/h/p18cxxx.h"
#line 441 "C:/MCC18/h/p18cxxx.h"
#line 443 "C:/MCC18/h/p18cxxx.h"
#line 445 "C:/MCC18/h/p18cxxx.h"
#line 447 "C:/MCC18/h/p18cxxx.h"
#line 449 "C:/MCC18/h/p18cxxx.h"
#line 451 "C:/MCC18/h/p18cxxx.h"
#line 453 "C:/MCC18/h/p18cxxx.h"
#line 455 "C:/MCC18/h/p18cxxx.h"
#line 457 "C:/MCC18/h/p18cxxx.h"
#line 459 "C:/MCC18/h/p18cxxx.h"
#line 461 "C:/MCC18/h/p18cxxx.h"
#line 463 "C:/MCC18/h/p18cxxx.h"
#line 465 "C:/MCC18/h/p18cxxx.h"
#line 467 "C:/MCC18/h/p18cxxx.h"
#line 469 "C:/MCC18/h/p18cxxx.h"
#line 471 "C:/MCC18/h/p18cxxx.h"
#line 473 "C:/MCC18/h/p18cxxx.h"
#line 475 "C:/MCC18/h/p18cxxx.h"
#line 477 "C:/MCC18/h/p18cxxx.h"
#line 479 "C:/MCC18/h/p18cxxx.h"
#line 481 "C:/MCC18/h/p18cxxx.h"
#line 483 "C:/MCC18/h/p18cxxx.h"
#line 485 "C:/MCC18/h/p18cxxx.h"
#line 487 "C:/MCC18/h/p18cxxx.h"
#line 489 "C:/MCC18/h/p18cxxx.h"
#line 491 "C:/MCC18/h/p18cxxx.h"
#line 493 "C:/MCC18/h/p18cxxx.h"
#line 495 "C:/MCC18/h/p18cxxx.h"
#line 497 "C:/MCC18/h/p18cxxx.h"
#line 499 "C:/MCC18/h/p18cxxx.h"
#line 501 "C:/MCC18/h/p18cxxx.h"
#line 503 "C:/MCC18/h/p18cxxx.h"
#line 505 "C:/MCC18/h/p18cxxx.h"
#line 507 "C:/MCC18/h/p18cxxx.h"
#line 509 "C:/MCC18/h/p18cxxx.h"
#line 511 "C:/MCC18/h/p18cxxx.h"
#line 513 "C:/MCC18/h/p18cxxx.h"
#line 515 "C:/MCC18/h/p18cxxx.h"
#line 517 "C:/MCC18/h/p18cxxx.h"
#line 519 "C:/MCC18/h/p18cxxx.h"
#line 521 "C:/MCC18/h/p18cxxx.h"
#line 523 "C:/MCC18/h/p18cxxx.h"
#line 525 "C:/MCC18/h/p18cxxx.h"
#line 527 "C:/MCC18/h/p18cxxx.h"
#line 529 "C:/MCC18/h/p18cxxx.h"
#line 531 "C:/MCC18/h/p18cxxx.h"
#line 533 "C:/MCC18/h/p18cxxx.h"
#line 535 "C:/MCC18/h/p18cxxx.h"
#line 537 "C:/MCC18/h/p18cxxx.h"
#line 539 "C:/MCC18/h/p18cxxx.h"
#line 541 "C:/MCC18/h/p18cxxx.h"
#line 543 "C:/MCC18/h/p18cxxx.h"
#line 545 "C:/MCC18/h/p18cxxx.h"
#line 547 "C:/MCC18/h/p18cxxx.h"
#line 549 "C:/MCC18/h/p18cxxx.h"
#line 551 "C:/MCC18/h/p18cxxx.h"
#line 553 "C:/MCC18/h/p18cxxx.h"
#line 62 "C:\Users\Anthony\Documents/Compiler.h"

#line 64 "C:\Users\Anthony\Documents/Compiler.h"
#line 66 "C:\Users\Anthony\Documents/Compiler.h"
#line 68 "C:\Users\Anthony\Documents/Compiler.h"
#line 71 "C:\Users\Anthony\Documents/Compiler.h"
#line 75 "C:\Users\Anthony\Documents/Compiler.h"
#line 79 "C:\Users\Anthony\Documents/Compiler.h"
#line 83 "C:\Users\Anthony\Documents/Compiler.h"
#line 87 "C:\Users\Anthony\Documents/Compiler.h"
#line 91 "C:\Users\Anthony\Documents/Compiler.h"
#line 95 "C:\Users\Anthony\Documents/Compiler.h"
#line 100 "C:\Users\Anthony\Documents/Compiler.h"
#line 105 "C:\Users\Anthony\Documents/Compiler.h"
#line 106 "C:\Users\Anthony\Documents/Compiler.h"
#line 107 "C:\Users\Anthony\Documents/Compiler.h"
#line 109 "C:\Users\Anthony\Documents/Compiler.h"
#line 113 "C:\Users\Anthony\Documents/Compiler.h"
#line 115 "C:\Users\Anthony\Documents/Compiler.h"

#line 1 "C:/MCC18/h/stdio.h"

#line 3 "C:/MCC18/h/stdio.h"

#line 1 "C:/MCC18/h/stdarg.h"
 


#line 5 "C:/MCC18/h/stdarg.h"

typedef void* va_list;
#line 8 "C:/MCC18/h/stdarg.h"
#line 9 "C:/MCC18/h/stdarg.h"
#line 10 "C:/MCC18/h/stdarg.h"
#line 11 "C:/MCC18/h/stdarg.h"
#line 12 "C:/MCC18/h/stdarg.h"
#line 4 "C:/MCC18/h/stdio.h"

#line 1 "C:/MCC18/h/stddef.h"
 

#line 10 "C:/MCC18/h/stddef.h"

#line 20 "C:/MCC18/h/stddef.h"

#line 34 "C:/MCC18/h/stddef.h"

#line 41 "C:/MCC18/h/stddef.h"
#line 45 "C:/MCC18/h/stddef.h"
#line 5 "C:/MCC18/h/stdio.h"



#line 9 "C:/MCC18/h/stdio.h"
 
#line 11 "C:/MCC18/h/stdio.h"

#line 13 "C:/MCC18/h/stdio.h"


typedef unsigned char FILE;

 
#line 19 "C:/MCC18/h/stdio.h"
#line 20 "C:/MCC18/h/stdio.h"

extern FILE *stderr;
extern FILE *stdout;


int putc (auto char c, auto FILE *f);
int vsprintf (auto char *buf, auto const far  rom char *fmt, auto va_list ap);
int vprintf (auto const far  rom char *fmt, auto va_list ap);
int sprintf (auto char *buf, auto const far  rom char *fmt, ...);
int printf (auto const far  rom char *fmt, ...);
int fprintf (auto FILE *f, auto const far  rom char *fmt, ...);
int vfprintf (auto FILE *f, auto const far  rom char *fmt, auto va_list ap);
int puts (auto const far  rom char *s);
int fputs (auto const far  rom char *s, auto FILE *f);

#line 36 "C:/MCC18/h/stdio.h"
#line 116 "C:\Users\Anthony\Documents/Compiler.h"

#line 1 "C:/MCC18/h/stdlib.h"
 
#line 6 "C:/MCC18/h/stdlib.h"

#line 9 "C:/MCC18/h/stdlib.h"

#line 16 "C:/MCC18/h/stdlib.h"

#line 28 "C:/MCC18/h/stdlib.h"

#line 39 "C:/MCC18/h/stdlib.h"

#line 47 "C:/MCC18/h/stdlib.h"

#line 58 "C:/MCC18/h/stdlib.h"

#line 71 "C:/MCC18/h/stdlib.h"

#line 83 "C:/MCC18/h/stdlib.h"

#line 95 "C:/MCC18/h/stdlib.h"

#line 107 "C:/MCC18/h/stdlib.h"

#line 112 "C:/MCC18/h/stdlib.h"

#line 116 "C:/MCC18/h/stdlib.h"

#line 124 "C:/MCC18/h/stdlib.h"

#line 136 "C:/MCC18/h/stdlib.h"
#line 140 "C:/MCC18/h/stdlib.h"
#line 149 "C:/MCC18/h/stdlib.h"
#line 151 "C:/MCC18/h/stdlib.h"
#line 117 "C:\Users\Anthony\Documents/Compiler.h"

#line 1 "C:/MCC18/h/string.h"

#line 3 "C:/MCC18/h/string.h"

#line 7 "C:/MCC18/h/string.h"


#line 20 "C:/MCC18/h/string.h"
 
#line 22 "C:/MCC18/h/string.h"


#line 25 "C:/MCC18/h/string.h"
 
#line 27 "C:/MCC18/h/string.h"

 

#line 39 "C:/MCC18/h/string.h"
 
void *memcpy (auto void *s1, auto const void *s2, auto size_t n);


#line 55 "C:/MCC18/h/string.h"
 
void *memmove (auto void *s1, auto const void *s2, auto size_t n);


#line 67 "C:/MCC18/h/string.h"
 
char *strcpy (auto char *s1, auto const char *s2);


#line 83 "C:/MCC18/h/string.h"
 
char *strncpy (auto char *s1, auto const char *s2, auto size_t n);


#line 97 "C:/MCC18/h/string.h"
 
char *strcat (auto char *s1, auto const char *s2);


#line 113 "C:/MCC18/h/string.h"
 
char *strncat (auto char *s1, auto const char *s2, auto size_t n);


#line 128 "C:/MCC18/h/string.h"
 
signed char memcmp (auto const void *s1, auto const void *s2, auto size_t n);


#line 141 "C:/MCC18/h/string.h"
 
signed char strcmp (auto const char *s1, auto const char *s2);


#line 147 "C:/MCC18/h/string.h"
 


#line 161 "C:/MCC18/h/string.h"
 
signed char strncmp (auto const char *s1, auto const char *s2, auto size_t n);


#line 167 "C:/MCC18/h/string.h"
 


#line 183 "C:/MCC18/h/string.h"
 
void *memchr (auto const void *s, auto unsigned char c, auto size_t n);


#line 199 "C:/MCC18/h/string.h"
 
char *strchr (auto const char *s, auto unsigned char c);


#line 210 "C:/MCC18/h/string.h"
 
size_t strcspn (auto const char *s1, auto const char *s2);


#line 222 "C:/MCC18/h/string.h"
 
char *strpbrk (auto const char *s1, auto const char *s2);


#line 238 "C:/MCC18/h/string.h"
 
char *strrchr (auto const char *s, auto unsigned char c);


#line 249 "C:/MCC18/h/string.h"
 
size_t strspn (auto const char *s1, auto const char *s2);


#line 262 "C:/MCC18/h/string.h"
 
char *strstr (auto const char *s1, auto const char *s2);


#line 305 "C:/MCC18/h/string.h"
 
char *strtok (auto char *s1, auto const char *s2);


#line 321 "C:/MCC18/h/string.h"
 
void *memset (auto void *s, auto unsigned char c, auto size_t n);


#line 339 "C:/MCC18/h/string.h"
 
#line 341 "C:/MCC18/h/string.h"


#line 349 "C:/MCC18/h/string.h"
 
size_t strlen (auto const char *s);


#line 358 "C:/MCC18/h/string.h"
 
char *strupr (auto char *s);


#line 367 "C:/MCC18/h/string.h"
 
char *strlwr (auto char *s);



 

#line 379 "C:/MCC18/h/string.h"
 
far  rom void *memcpypgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 389 "C:/MCC18/h/string.h"
 
void *memcpypgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 398 "C:/MCC18/h/string.h"
 
far  rom void *memcpyram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 407 "C:/MCC18/h/string.h"
 
far  rom void *memmovepgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 417 "C:/MCC18/h/string.h"
 
void *memmovepgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 426 "C:/MCC18/h/string.h"
 
far  rom void *memmoveram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 434 "C:/MCC18/h/string.h"
 
far  rom char *strcpypgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 443 "C:/MCC18/h/string.h"
 
char *strcpypgm2ram (auto char *s1, auto const far  rom char *s2);


#line 451 "C:/MCC18/h/string.h"
 
far  rom char *strcpyram2pgm (auto far  rom char *s1, auto const char *s2);


#line 460 "C:/MCC18/h/string.h"
 
far  rom char *strncpypgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 470 "C:/MCC18/h/string.h"
 
char *strncpypgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 479 "C:/MCC18/h/string.h"
 
far  rom char *strncpyram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 487 "C:/MCC18/h/string.h"
 
far  rom char *strcatpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 496 "C:/MCC18/h/string.h"
 
char *strcatpgm2ram (auto char *s1, auto const far  rom char *s2);


#line 504 "C:/MCC18/h/string.h"
 
far  rom char *strcatram2pgm (auto far  rom char *s1, auto const char *s2);


#line 513 "C:/MCC18/h/string.h"
 
far  rom char *strncatpgm (auto far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 523 "C:/MCC18/h/string.h"
 
char *strncatpgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 532 "C:/MCC18/h/string.h"
 
far  rom char *strncatram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 541 "C:/MCC18/h/string.h"
 
signed char memcmppgm (auto far  rom void *s1, auto const far  rom void *s2, auto sizerom_t n);


#line 551 "C:/MCC18/h/string.h"
 
signed char memcmppgm2ram (auto void *s1, auto const far  rom void *s2, auto sizeram_t n);


#line 560 "C:/MCC18/h/string.h"
 
signed char memcmpram2pgm (auto far  rom void *s1, auto const void *s2, auto sizeram_t n);


#line 568 "C:/MCC18/h/string.h"
 
signed char strcmppgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 577 "C:/MCC18/h/string.h"
 
signed char strcmppgm2ram (auto const char *s1, auto const far  rom char *s2);


#line 585 "C:/MCC18/h/string.h"
 
signed char strcmpram2pgm (auto const far  rom char *s1, auto const char *s2);


#line 594 "C:/MCC18/h/string.h"
 
signed char strncmppgm (auto const far  rom char *s1, auto const far  rom char *s2, auto sizerom_t n);


#line 604 "C:/MCC18/h/string.h"
 
signed char strncmppgm2ram (auto char *s1, auto const far  rom char *s2, auto sizeram_t n);


#line 613 "C:/MCC18/h/string.h"
 
signed char strncmpram2pgm (auto far  rom char *s1, auto const char *s2, auto sizeram_t n);


#line 622 "C:/MCC18/h/string.h"
 
far  rom char *memchrpgm (auto const far  rom char *s, auto const unsigned char c, auto sizerom_t n);


#line 631 "C:/MCC18/h/string.h"
 
far  rom char *strchrpgm (auto const far  rom char *s, auto unsigned char c);


#line 639 "C:/MCC18/h/string.h"
 
sizerom_t strcspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 647 "C:/MCC18/h/string.h"
 
sizerom_t strcspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 655 "C:/MCC18/h/string.h"
 
sizeram_t strcspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 663 "C:/MCC18/h/string.h"
 
far  rom char *strpbrkpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 671 "C:/MCC18/h/string.h"
 
far  rom char *strpbrkpgmram (auto const far  rom char *s1, auto const char *s2);


#line 679 "C:/MCC18/h/string.h"
 
char *strpbrkrampgm (auto const char *s1, auto const far  rom char *s2);


#line 688 "C:/MCC18/h/string.h"
 
 


#line 696 "C:/MCC18/h/string.h"
 
sizerom_t strspnpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 704 "C:/MCC18/h/string.h"
 
sizerom_t strspnpgmram (auto const far  rom char *s1, auto const char *s2);


#line 712 "C:/MCC18/h/string.h"
 
sizeram_t strspnrampgm (auto const char *s1, auto const far  rom char *s2);


#line 720 "C:/MCC18/h/string.h"
 
far  rom char *strstrpgm (auto const far  rom char *s1, auto const far  rom char *s2);


#line 729 "C:/MCC18/h/string.h"
 
far  rom char *strstrpgmram (auto const far  rom char *s1, auto const char *s2);


#line 737 "C:/MCC18/h/string.h"
 
char *strstrrampgm (auto const char *s1, auto const far  rom char *s2);


#line 745 "C:/MCC18/h/string.h"
 
far  rom char *strtokpgm (auto far  rom char *s1, auto const far  rom char *s2);


#line 754 "C:/MCC18/h/string.h"
 
char *strtokpgmram (auto char *s1, auto const far  rom char *s2);


#line 762 "C:/MCC18/h/string.h"
 
far  rom char *strtokrampgm (auto far  rom char *s1, auto const char *s2);


#line 771 "C:/MCC18/h/string.h"
 
far  rom void *memsetpgm (auto far  rom void *s, auto unsigned char c, auto sizerom_t n);


#line 778 "C:/MCC18/h/string.h"
 
far  rom char *struprpgm (auto far  rom char *s);


#line 785 "C:/MCC18/h/string.h"
 
far  rom char *strlwrpgm (auto far  rom char *s);


#line 792 "C:/MCC18/h/string.h"
 
sizerom_t strlenpgm (auto const far  rom char *s);

#line 796 "C:/MCC18/h/string.h"

#line 798 "C:/MCC18/h/string.h"

#line 805 "C:/MCC18/h/string.h"
#line 814 "C:/MCC18/h/string.h"

#line 816 "C:/MCC18/h/string.h"
#line 118 "C:\Users\Anthony\Documents/Compiler.h"




#line 123 "C:\Users\Anthony\Documents/Compiler.h"
#line 126 "C:\Users\Anthony\Documents/Compiler.h"
#line 129 "C:\Users\Anthony\Documents/Compiler.h"
#line 130 "C:\Users\Anthony\Documents/Compiler.h"
#line 131 "C:\Users\Anthony\Documents/Compiler.h"
#line 132 "C:\Users\Anthony\Documents/Compiler.h"
#line 135 "C:\Users\Anthony\Documents/Compiler.h"



#line 139 "C:\Users\Anthony\Documents/Compiler.h"
#line 149 "C:\Users\Anthony\Documents/Compiler.h"




#line 154 "C:\Users\Anthony\Documents/Compiler.h"
#line 155 "C:\Users\Anthony\Documents/Compiler.h"

#line 157 "C:\Users\Anthony\Documents/Compiler.h"

	
#line 160 "C:\Users\Anthony\Documents/Compiler.h"
#line 161 "C:\Users\Anthony\Documents/Compiler.h"
#line 162 "C:\Users\Anthony\Documents/Compiler.h"
	
	
#line 165 "C:\Users\Anthony\Documents/Compiler.h"
#line 171 "C:\Users\Anthony\Documents/Compiler.h"
    


#line 175 "C:\Users\Anthony\Documents/Compiler.h"
#line 179 "C:\Users\Anthony\Documents/Compiler.h"
#line 182 "C:\Users\Anthony\Documents/Compiler.h"
#line 185 "C:\Users\Anthony\Documents/Compiler.h"
#line 194 "C:\Users\Anthony\Documents/Compiler.h"
#line 196 "C:\Users\Anthony\Documents/Compiler.h"
#line 197 "C:\Users\Anthony\Documents/Compiler.h"
#line 198 "C:\Users\Anthony\Documents/Compiler.h"



#line 202 "C:\Users\Anthony\Documents/Compiler.h"
#line 7 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:\Users\Anthony\Documents/usb_config.h"

#line 45 "C:\Users\Anthony\Documents/usb_config.h"
 


#line 49 "C:\Users\Anthony\Documents/usb_config.h"
 

#line 179 "C:\Users\Anthony\Documents/usb_config.h"
#line 8 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 10 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 


#line 54 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 


#line 58 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"



#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"

#line 10 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 


#line 43 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 




#line 49 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"









#line 59 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 60 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 61 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 62 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 63 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 64 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 65 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 66 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 67 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"



#line 74 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 
typedef struct   _USB_DEVICE_DESCRIPTOR
{
    BYTE bLength;               
    BYTE bDescriptorType;       
    WORD bcdUSB;                
    BYTE bDeviceClass;          
    BYTE bDeviceSubClass;       
    BYTE bDeviceProtocol;       
    BYTE bMaxPacketSize0;       
    WORD idVendor;              
    WORD idProduct;             
    WORD bcdDevice;             
    BYTE iManufacturer;         
    BYTE iProduct;              
    BYTE iSerialNumber;         
    BYTE bNumConfigurations;    
} USB_DEVICE_DESCRIPTOR;




#line 100 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 
typedef struct   _USB_CONFIGURATION_DESCRIPTOR
{
    BYTE bLength;               
    BYTE bDescriptorType;       
    WORD wTotalLength;          
    BYTE bNumInterfaces;        
    BYTE bConfigurationValue;   
    BYTE iConfiguration;        
    BYTE bmAttributes;          
    BYTE bMaxPower;             
} USB_CONFIGURATION_DESCRIPTOR;


#line 115 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 116 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 117 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"




#line 125 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 
typedef struct   _USB_INTERFACE_DESCRIPTOR
{
    BYTE bLength;               
    BYTE bDescriptorType;       
    BYTE bInterfaceNumber;      
    BYTE bAlternateSetting;     
    BYTE bNumEndpoints;         
    BYTE bInterfaceClass;       
    BYTE bInterfaceSubClass;    
    BYTE bInterfaceProtocol;    
    BYTE iInterface;            
} USB_INTERFACE_DESCRIPTOR;




#line 146 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 
typedef struct   _USB_ENDPOINT_DESCRIPTOR
{
    BYTE bLength;               
    BYTE bDescriptorType;       
    BYTE bEndpointAddress;      
    BYTE bmAttributes;          
    WORD wMaxPacketSize;        
    BYTE bInterval;             
} USB_ENDPOINT_DESCRIPTOR;



#line 160 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 161 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"







#line 169 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 170 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 171 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 172 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"


#line 175 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 176 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 177 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 178 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"


#line 181 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 182 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 183 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"


#line 186 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 187 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 188 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 189 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 190 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 191 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 192 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"




#line 200 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 
typedef struct   _USB_OTG_DESCRIPTOR
{
    BYTE bLength;               
    BYTE bDescriptorType;       
    BYTE bmAttributes;          
} USB_OTG_DESCRIPTOR;


















typedef struct   _USB_STRING_DSC
{
    BYTE   bLength;             
    BYTE   bDescriptorType;     

} USB_STRING_DESCRIPTOR;













typedef struct   _USB_DEVICE_QUALIFIER_DESCRIPTOR
{
    BYTE bLength;               
    BYTE bType;                 
    WORD bcdUSB;                
    BYTE bDeviceClass;          
    BYTE bDeviceSubClass;       
    BYTE bDeviceProtocol;       
    BYTE bMaxPacketSize0;       
    BYTE bNumConfigurations;    
    BYTE bReserved;             

} USB_DEVICE_QUALIFIER_DESCRIPTOR;












typedef struct   SetupPkt
{
    union                           
    {                               
        BYTE bmRequestType;         
        struct
        {
            BYTE    recipient:  5;  
            BYTE    type:       2;  
            BYTE    direction:  1;  
        };
    }requestInfo;

    BYTE    bRequest;               
    UINT16  wValue;                 
    UINT16  wIndex;                 
    UINT16  wLength;                

} SETUP_PKT, *PSETUP_PKT;










#line 299 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 300 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 301 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 302 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 303 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 304 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 305 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 306 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 307 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 308 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 309 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 310 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 311 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 312 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 313 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 314 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"

#line 316 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 317 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"




#line 322 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 323 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 324 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"




#line 329 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 330 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"



#line 334 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 335 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"



#line 339 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 340 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 341 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 342 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 343 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 344 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 345 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 346 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 347 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 348 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 349 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"

#line 351 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 352 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 353 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"



#line 357 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 358 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 359 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 360 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 361 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 362 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 363 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 364 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 365 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"



#line 369 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 370 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 371 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"



#line 375 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 376 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 377 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 378 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"


#line 381 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 382 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
#line 383 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"



#line 387 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"


#line 390 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"

#line 392 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_ch9.h"
 

#line 61 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 8 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
 


#line 51 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
 


#line 55 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"


#line 58 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 61 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 86 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 89 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 118 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 122 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 124 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 126 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 129 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 137 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 145 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 166 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 189 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 201 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 224 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 230 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 262 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 293 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 297 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 323 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 327 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 352 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 357 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 391 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 445 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 483 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 489 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 496 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 503 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 507 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 527 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 532 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 533 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 18 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
 


#line 59 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
 


#line 74 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
 
#line 76 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"


#line 88 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
 
#line 90 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 91 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 93 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 94 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 95 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 96 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 98 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 99 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 100 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 101 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 103 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 104 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 105 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 106 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 108 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 109 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 110 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 111 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 113 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 114 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 115 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 116 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 118 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 119 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 120 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 121 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 123 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 124 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 125 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 126 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 128 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 129 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 130 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 131 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 133 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 134 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 135 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 136 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 137 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 138 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 139 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 140 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 141 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 142 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 143 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 144 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

 
#line 147 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 148 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 149 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 150 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 151 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 152 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 153 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 154 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 155 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 157 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

 
typedef union _BD_STAT
{
    BYTE Val;
    struct{
        
        unsigned BC8:1;         
        unsigned BC9:1;         
        unsigned BSTALL:1;      
        unsigned DTSEN:1;       
        unsigned INCDIS:1;      
        unsigned KEN:1;         
        unsigned DTS:1;         
        unsigned UOWN:1;        
    };
    struct{
        
        
        unsigned BC8:1;         
        unsigned BC9:1;         
        unsigned PID0:1;        
        unsigned PID1:1;
        unsigned PID2:1;
        unsigned PID3:1;
        unsigned :1;
        unsigned UOWN:1;        
    };
    struct{
        unsigned :2;
        unsigned PID:4;         
        unsigned :2;
    };
} BD_STAT;                      


typedef union __BDT
{
    struct
    {
        BD_STAT STAT;
        BYTE CNT;
        BYTE ADRL;                      
        BYTE ADRH;                      
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        BYTE* ADR;                      
    };
    DWORD Val;
    BYTE v[4];
} BDT_ENTRY;

#line 213 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 214 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 215 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 216 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 217 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 219 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 220 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 221 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

typedef union
{
    WORD UEP[16];
} _UEP;

#line 228 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

#line 230 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 231 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

typedef union _POINTER
{
    struct
    {
        BYTE bLow;
        BYTE bHigh;
        
    };
    WORD _word;                         
    
    

    BYTE* bRam;                         
                                        
    WORD* wRam;                         
                                        

    rom  BYTE* bRom;                     
    rom  WORD* wRom;
    
    
    
    
} POINTER;

#line 258 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 259 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 260 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 261 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"

    
#line 264 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 265 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 266 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 267 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 268 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 269 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
    

#line 272 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 273 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
    
#line 275 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 276 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
    
#line 278 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 279 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal_pic18.h"
#line 533 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 535 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 537 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 538 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
#line 539 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"

#line 541 "C:/Users/Anthony/Desktop/Oscillator/Include/USB\usb_hal.h"
 

#line 62 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 1 "C:\Users\Anthony\Documents/usb_config.h"

#line 45 "C:\Users\Anthony\Documents/usb_config.h"
 


#line 49 "C:\Users\Anthony\Documents/usb_config.h"
 

#line 179 "C:\Users\Anthony\Documents/usb_config.h"
#line 63 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
                        
                        
                        
 


#line 76 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 78 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 79 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 80 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 81 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 82 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 83 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 84 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 85 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 86 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 87 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 88 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 89 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 90 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 91 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 92 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 93 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 94 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 95 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 96 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 97 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 98 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 99 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 100 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 101 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 102 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 103 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 104 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 105 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 106 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 107 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 108 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 109 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 112 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 113 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 114 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 117 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 118 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 119 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 120 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 123 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 124 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 125 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 126 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 129 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 130 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 131 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 133 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 134 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"



#line 138 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 139 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 144 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
typedef union _CTRL_TRF_SETUP
{
     
    struct
    {
        BYTE bmRequestType; 
        BYTE bRequest; 
        WORD wValue; 
        WORD wIndex; 
        WORD wLength; 
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        WORD_VAL W_Value; 
        WORD_VAL W_Index; 
        WORD_VAL W_Length; 
    };
    struct
    {
        unsigned Recipient:5;   
        unsigned RequestType:2; 
        unsigned DataDir:1;     
        unsigned :8;
        BYTE bFeature;          
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        BYTE bDscIndex;         
        BYTE bDescriptorType;          
        WORD wLangID;           
        unsigned :8;
        unsigned :8;
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        BYTE_VAL bDevADR;       
        BYTE bDevADRH;          
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        BYTE bConfigurationValue;         
        BYTE bCfgRSD;           
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        BYTE bAltID;            
        BYTE bAltID_H;          
        BYTE bIntfID;           
        BYTE bIntfID_H;         
        unsigned :8;
        unsigned :8;
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        BYTE bEPID;             
        BYTE bEPID_H;           
        unsigned :8;
        unsigned :8;
    };
    struct
    {
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned :8;
        unsigned EPNum:4;       
        unsigned :3;
        unsigned EPDir:1;       
        unsigned :8;
        unsigned :8;
        unsigned :8;
    };

     

} CTRL_TRF_SETUP;




typedef struct
{
    union
    {
        
        
        BYTE *bRam;
        rom  BYTE *bRom;
        WORD *wRam;
        rom  WORD *wRom;
    }pSrc;
    union
    {
        struct
        {
            
            BYTE ctrl_trf_mem          :1;
            BYTE reserved              :5;
            
            
            BYTE includeZero           :1;
            
            BYTE busy                  :1;
        }bits;
        BYTE Val;
    }info;
    WORD_VAL wCount;
}IN_PIPE;

#line 282 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 283 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
typedef struct
{
    union
    {
        
        
        BYTE *bRam;
        WORD *wRam;
    }pDst;
    union
    {
        struct
        {
            BYTE reserved              :7;
            
            BYTE busy                  :1;
        }bits;
        BYTE Val;
    }info;
    WORD_VAL wCount;
    void  (*pFunc)(void );
}OUT_PIPE;


#line 308 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 309 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 310 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 311 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 312 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 313 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 315 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 316 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 317 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 318 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 319 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 320 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 324 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 326 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 327 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 328 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 329 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 330 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 331 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 332 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 333 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 334 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 335 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 336 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 339 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 340 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 343 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 344 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 345 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 346 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 347 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 348 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 349 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 352 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 353 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 356 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 358 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 359 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 360 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 362 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 366 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 369 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 372 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 374 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 379 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


 
#line 383 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 384 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 385 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 386 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 387 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
                                    

#line 390 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 391 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 393 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 394 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 396 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 397 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 399 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 400 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 402 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 403 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 424 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 426 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 428 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
    
#line 431 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 433 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 435 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
        extern volatile BDT_ENTRY BDT[(2  + 1) * 4];
#line 437 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 439 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 441 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

    
#line 444 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 447 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
        extern rom  USB_DEVICE_DESCRIPTOR device_dsc ;
#line 449 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

    
    extern rom  BYTE configDescriptor1[];

#line 454 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 457 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
        extern rom  BYTE *rom  USB_CD_Ptr[] ;
#line 459 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

    
    extern rom  BYTE *rom  USB_SD_Ptr[];

#line 464 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 466 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 468 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 469 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

    
    extern volatile CTRL_TRF_SETUP SetupPkt;           
    
    extern volatile BYTE CtrlTrfData[8 ];

#line 476 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 480 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 483 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 486 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 487 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 488 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 491 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 492 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 493 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 496 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 497 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 498 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 501 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 502 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 504 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 505 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 506 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 508 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 509 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 510 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 511 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
#line 514 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
    extern BYTE USBDeviceState;
    extern BYTE USBActiveConfiguration;
    extern  IN_PIPE inPipes[1];
    extern  OUT_PIPE outPipes[1];
    extern volatile BDT_ENTRY *pBDTEntryIn[2 +1];
#line 520 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 


#line 552 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
void USBDeviceTasks(void);


#line 572 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
void USBDeviceInit(void);

void USBRemoteWakeup(void);
void USBSoftDetach(void);
void USBCtrlEPService(void);
void USBCtrlTrfSetupHandler(void);
void USBCtrlTrfInHandler(void);
void USBCheckStdRequest(void);
void USBStdGetDscHandler(void);
void USBCtrlEPServiceComplete(void);
void USBCtrlTrfTxService(void);
void USBPrepareForNextSetupTrf(void);
void USBCtrlTrfRxService(void);
void USBStdSetCfgHandler(void);
void USBStdGetStatusHandler(void);
void USBStdFeatureReqHandler(void);
void USBCtrlTrfOutHandler(void);
BOOL USBIsTxBusy(BYTE EPNumber);
void USBPut(BYTE EPNum, BYTE Data);
void USBEPService(void);
void USBConfigureEndpoint(BYTE EPNum, BYTE direction);

void USBProtocolResetHandler(void);
void USBWakeFromSuspend(void);
void USBSuspend(void);
void USBStallHandler(void);
volatile volatile BDT_ENTRY*  USBTransferOnePacket(BYTE ep, BYTE dir, BYTE* data, BYTE len);
void USBEnableEndpoint(BYTE ep,BYTE options);

#line 603 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 605 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 606 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 607 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 609 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 612 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 613 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 614 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

 
void USBCBSuspend(void);
void USBCBWakeFromSuspend(void);
void USBCB_SOF_Handler(void);
void USBCBErrorHandler(void);
void USBCBCheckOtherReq(void);
void USBCBInitDevClass(void);
void USBCBStdSetDscHandler(void);
void USBCBSendResume(void);
void USBCBInitEP(void);



 

#line 631 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 632 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 633 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 649 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 651 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 666 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 668 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 683 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 685 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 701 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 703 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 719 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 721 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 744 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 746 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 762 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 764 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 789 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 791 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 816 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 818 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 835 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 837 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 854 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 856 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 873 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
void USBClearInterruptFlag(BYTE* reg, BYTE flag);


#line 891 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
#line 893 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 894 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 895 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 897 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 914 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
 
void USBStallEndpoint(BYTE ep, BYTE dir);


#line 919 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 992 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1064 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1065 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1066 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1067 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1068 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1069 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1070 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1071 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1072 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1073 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1074 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1075 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1076 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1077 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1078 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1079 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1080 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1081 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1082 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1083 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1084 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1085 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1086 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1087 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1088 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1089 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1090 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1091 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1092 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1093 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1094 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1095 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1096 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1097 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1098 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1099 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1100 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1101 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1102 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1103 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1104 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1105 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1106 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1107 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1108 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1109 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1110 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1111 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1112 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1113 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1114 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1115 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1116 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1117 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1118 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1119 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1120 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1121 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1122 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1123 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1124 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1125 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1126 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1127 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1128 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1129 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1130 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1131 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 1133 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 1135 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"

#line 1137 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1209 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 1211 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"


#line 1214 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_device.h"
#line 9 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"

#line 14 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
 


#line 49 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
 




#line 55 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"









#line 1 "C:\Users\Anthony\Documents/usb_config.h"

#line 45 "C:\Users\Anthony\Documents/usb_config.h"
 


#line 49 "C:\Users\Anthony\Documents/usb_config.h"
 

#line 179 "C:\Users\Anthony\Documents/usb_config.h"
#line 64 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
             

#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"

#line 9 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 


#line 45 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 





#line 52 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"


#line 1 "C:/MCC18/h/limits.h"

#line 9 "C:/MCC18/h/limits.h"
 


#line 13 "C:/MCC18/h/limits.h"

#line 15 "C:/MCC18/h/limits.h"
#line 16 "C:/MCC18/h/limits.h"

#line 18 "C:/MCC18/h/limits.h"
#line 19 "C:/MCC18/h/limits.h"
#line 20 "C:/MCC18/h/limits.h"

 
#line 23 "C:/MCC18/h/limits.h"
#line 26 "C:/MCC18/h/limits.h"
#line 27 "C:/MCC18/h/limits.h"
#line 28 "C:/MCC18/h/limits.h"
#line 29 "C:/MCC18/h/limits.h"

#line 31 "C:/MCC18/h/limits.h"
#line 32 "C:/MCC18/h/limits.h"
#line 33 "C:/MCC18/h/limits.h"

#line 35 "C:/MCC18/h/limits.h"
#line 36 "C:/MCC18/h/limits.h"
#line 37 "C:/MCC18/h/limits.h"

#line 39 "C:/MCC18/h/limits.h"
#line 40 "C:/MCC18/h/limits.h"
#line 41 "C:/MCC18/h/limits.h"

 
#line 44 "C:/MCC18/h/limits.h"
#line 45 "C:/MCC18/h/limits.h"
#line 46 "C:/MCC18/h/limits.h"

 
#line 49 "C:/MCC18/h/limits.h"
#line 50 "C:/MCC18/h/limits.h"

#line 52 "C:/MCC18/h/limits.h"











#line 54 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"

#line 1 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

#line 45 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
 

#line 52 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 54 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 56 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 58 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 60 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 79 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 81 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 88 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 90 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 93 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 95 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 144 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 183 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 245 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 332 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 549 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 55 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"











#line 67 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 68 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 69 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 70 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 71 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 72 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 73 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 74 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 75 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 76 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 77 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 78 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 79 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 80 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 81 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"

#line 83 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 84 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 85 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 86 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 87 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 88 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 89 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 90 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 91 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 92 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 93 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 94 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"



#line 98 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 99 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 100 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 101 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 102 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 103 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 104 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 105 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 106 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 107 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 108 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 109 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"

#line 111 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"

#line 113 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"










#line 138 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

typedef union
{
    BYTE    bitmap;
    struct
    {
        BYTE ep_num:    4;
        BYTE zero_pkt:  1;
        BYTE dts:       1;
        BYTE force_dts: 1;
        BYTE direction: 1;
    }field;

} TRANSFER_FLAGS;




#line 160 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 
#line 162 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 163 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 164 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 165 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 166 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 167 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 168 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 169 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 170 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 171 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 172 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 173 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 174 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 175 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 176 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 177 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"



#line 183 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 
#line 185 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 186 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 187 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 188 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 189 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 190 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 191 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 192 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 193 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 194 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 195 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"



#line 202 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 
#line 204 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"




#line 213 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

typedef enum
{
    
    EVENT_NONE = 0,
    
    
    
    EVENT_TRANSFER,
    
    
    
    EVENT_SOF,                  
    
    
    EVENT_RESUME,
    
    
    
    EVENT_SUSPEND,
                  
    
    
    EVENT_RESET,                
    
    
    
    
    EVENT_ATTACH,      
             
    
    
    EVENT_DETACH,               
    
    
    EVENT_HUB_ATTACH,           
    
    
    EVENT_STALL,     
               
    
    
    EVENT_SETUP,                
    
    
    EVENT_VBUS_SES_REQUEST,     
    
    
    
    
    EVENT_VBUS_OVERCURRENT,     
    
    
    
    
    
    EVENT_VBUS_REQUEST_POWER,   
    
    
    
    
    EVENT_VBUS_RELEASE_POWER,   
    
    
    
    
    
    
    
    
    EVENT_VBUS_POWER_AVAILABLE, 
    
    
    
    EVENT_UNSUPPORTED_DEVICE,   
    
    
    
    EVENT_CANNOT_ENUMERATE,     
    
    
    
    EVENT_CLIENT_INIT_ERROR,    
    
    
    
    
    
    EVENT_OUT_OF_MEMORY,        
    
    
    EVENT_UNSPECIFIED_ERROR,    

    
    EVENT_GENERIC_BASE  = 100,      

    EVENT_MSD_BASE      = 200,      

    EVENT_HID_BASE      = 300,      

    EVENT_PRINTER_BASE  = 400,      
    
    EVENT_USER_BASE     = 10000,    
                                    

    
    
    EVENT_BUS_ERROR     = 65535U    

} USB_EVENT;




#line 333 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

typedef struct _transfer_event_data
{
    TRANSFER_FLAGS  flags;          
    UINT32          size;           
    BYTE            pid;            

} USB_TRANSFER_EVENT_DATA;




#line 350 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

typedef struct _vbus_power_data
{
    BYTE            port;           
    BYTE            current;        
} USB_VBUS_POWER_EVENT_DATA;




#line 365 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 









#line 404 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

typedef BOOL (*USB_EVENT_HANDLER) ( USB_EVENT event, void *data, unsigned int size );









#line 438 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

   
#line 442 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 443 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 444 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 446 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"

#line 448 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 450 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 451 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 452 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 453 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 454 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 455 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 457 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 459 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 460 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 461 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"



#line 486 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

    
#line 490 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 491 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 492 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 494 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 496 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 497 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 498 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 499 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 500 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 501 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 503 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 505 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 506 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
#line 507 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"


#line 510 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"

#line 512 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_common.h"
 

#line 66 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
         
#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"

#line 10 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"
 


#line 43 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"
 




#line 74 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"

#line 100 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"

#line 125 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"

#line 146 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"

#line 200 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"
#line 390 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"

#line 392 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_ch9.h"
 

#line 67 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
            
#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 8 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
 


#line 51 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
 

#line 58 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 61 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 86 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 89 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 118 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 122 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 124 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 126 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 129 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 137 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 145 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 166 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 189 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 201 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 224 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 230 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 262 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 293 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 297 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 323 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 327 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 352 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 357 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 391 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 445 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 483 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 489 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 496 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 503 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 507 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 527 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 532 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 533 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 535 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 537 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 538 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
#line 539 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"

#line 541 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_hal.h"
 

#line 68 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
            

#line 71 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 10 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
 


#line 54 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
 


#line 76 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 144 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 324 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 352 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 353 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 356 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 358 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 360 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 362 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 366 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 369 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 372 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 374 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 379 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 383 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 403 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 424 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 428 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 431 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 433 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 435 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 437 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 439 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 441 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 444 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 447 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 449 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 454 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 457 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 459 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 464 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 466 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 468 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 469 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 476 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 480 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 483 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 514 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 520 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 552 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 572 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 603 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 605 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 607 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 609 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 612 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 614 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 649 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 666 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 683 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 701 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 719 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 744 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 762 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 789 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 816 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 835 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 854 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 873 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 891 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 893 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 895 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 897 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"

#line 914 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 919 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 992 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 1064 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 1137 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 1209 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 1211 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 1214 "C:/Users/Anthony/Desktop/Oscillator/Include/usb/usb_device.h"
#line 71 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
     
#line 73 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"

#line 75 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
#line 77 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"

#line 79 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
#line 81 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"








#line 90 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
#line 91 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
#line 92 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"


#line 95 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"

#line 97 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb.h"
 

#line 10 "C:\Users\Anthony\Documents\scanxyz.c"

#line 1 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 35 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 

#line 38 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 
#line 1 "C:\Users\Anthony\Documents/GenericTypeDefs.h"

#line 45 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
 

#line 52 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 54 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 56 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 58 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 60 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 79 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 81 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 88 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 90 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 93 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 95 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 144 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 183 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 245 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 332 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 549 "C:\Users\Anthony\Documents/GenericTypeDefs.h"
#line 40 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 1 "C:\Users\Anthony\Documents/usb_config.h"

#line 45 "C:\Users\Anthony\Documents/usb_config.h"
 


#line 49 "C:\Users\Anthony\Documents/usb_config.h"
 

#line 179 "C:\Users\Anthony\Documents/usb_config.h"
#line 41 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


 

 
#line 47 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 48 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 49 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 50 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 51 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 52 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 53 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 54 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 55 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 59 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 
#line 61 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 62 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 63 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


 
#line 67 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 
#line 70 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 
#line 73 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 
#line 76 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


 
#line 80 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 
#line 83 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


 
#line 87 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 88 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 
 
#line 92 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 93 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 
#line 96 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 97 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 98 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 99 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 100 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 101 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 102 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 103 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 104 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 105 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 

 
#line 109 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 110 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 111 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 112 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 114 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 117 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 118 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 119 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 120 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 122 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 125 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 126 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 127 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 128 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 130 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 132 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 133 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 134 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 136 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 138 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 139 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 140 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 142 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 143 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 144 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 146 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 148 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 150 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 151 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 152 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 157 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 158 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 160 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 161 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 162 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 163 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 169 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 170 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

#line 186 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 
#line 188 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 205 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 
#line 207 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 224 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 
#line 226 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 243 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 
#line 245 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 272 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 

#line 279 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 280 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"


#line 307 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
 

#line 314 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 315 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

 

 
#line 320 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"

typedef union _LINE_CODING
{
    struct
    {
        BYTE _byte[0x07 ];
    };
    struct
    {
        DWORD_VAL   dwDTERate;          
        BYTE    bCharFormat;
        BYTE    bParityType;
        BYTE    bDataBits;
    };
} LINE_CODING;

typedef union _CONTROL_SIGNAL_BITMAP
{
    BYTE _byte;
    struct
    {
        unsigned DTE_PRESENT:1;       
        unsigned CARRIER_CONTROL:1;   
    };
} CONTROL_SIGNAL_BITMAP;


 

 
typedef struct   _USB_CDC_HEADER_FN_DSC
{
    BYTE bFNLength;
    BYTE bDscType;
    BYTE bDscSubType;
    WORD bcdCDC;
} USB_CDC_HEADER_FN_DSC;

 
typedef struct   _USB_CDC_ACM_FN_DSC
{
    BYTE bFNLength;
    BYTE bDscType;
    BYTE bDscSubType;
    BYTE bmCapabilities;
} USB_CDC_ACM_FN_DSC;

 
typedef struct   _USB_CDC_UNION_FN_DSC
{
    BYTE bFNLength;
    BYTE bDscType;
    BYTE bDscSubType;
    BYTE bMasterIntf;
    BYTE bSaveIntf0;
} USB_CDC_UNION_FN_DSC;

 
typedef struct   _USB_CDC_CALL_MGT_FN_DSC
{
    BYTE bFNLength;
    BYTE bDscType;
    BYTE bDscSubType;
    BYTE bmCapabilities;
    BYTE bDataInterface;
} USB_CDC_CALL_MGT_FN_DSC;

typedef union   _CDC_NOTICE
{
    LINE_CODING GetLineCoding;
    LINE_CODING SetLineCoding;
    unsigned char packet[8 ];
} CDC_NOTICE, *PCDC_NOTICE;

 
extern BYTE cdc_rx_len;
extern volatile BDT_ENTRY*  lastTransmission;

extern BYTE cdc_trf_state;
extern POINTER pCDCSrc;
extern BYTE cdc_tx_len;
extern BYTE cdc_mem_type;

extern volatile far  CDC_NOTICE cdc_notice;
extern LINE_CODING line_coding;

 
void USBCheckCDCRequest(void);
void CDCInitEP(void);
BYTE getsUSBUSART(char *buffer, BYTE len);
void putrsUSBUSART(const rom  char *data);
void putUSBUSART(char *data, BYTE Length);
void putsUSBUSART(char *data);
void CDCTxService(void);

#line 416 "C:/Users/Anthony/Desktop/Oscillator/Include/./USB/usb_function_cdc.h"
#line 11 "C:\Users\Anthony\Documents\scanxyz.c"








#pragma romdata Lesson3_Table = 0x1100
 const rom char X0C_plus[8] = "X0C+\r"; 
 const rom char X0C_minus[8] = "X0C-\r";
 const rom char X0E[8] = "X0E";
 const rom char X0_abort[8] = "X0!\r";
 const rom char Y0C_plus[8] = "Y0C+\r";
 const rom char Y0C_minus[8] = "Y0C-\r";
 const rom char Y0E[8] = "Y0E";
 const rom char Y0_abort[8] = "Y0!\r";
 const rom char Z0C_plus[8] = "Z0C+\r";
 const rom char Z0C_minus[8] = "Z0C-\r";
 const rom char Z0E[8] = "Z0E";
 const rom char Z0_abort[8] = "Z0!\r";
 const rom char X_LIMIT_LED_ON[8] = "X0O0,0\r";
 const rom char X_LIMIT_LED_OFF[8] = "X0O0,1\r";
 const rom char Y_LIMIT_LED_ON[8] = "Y00O,0\r";
 const rom char Y_LIMIT_LED_OFF[8] = "Y0O0,1\r";
 const rom char Z_LIMIT_LED_ON[8] = "Z0O0,0\r";
 const rom char Z_LIMIT_LED_OFF[8] = "Z0O0,1\r";










int x;
int i;
int speed_ratio;
int speed_mult;
int speed_factor_pos; 
int speed_factor_neg;
int adconx; 
int adconx_old = 0;
int adcony; 
int adcony_old = 0;
int adconz;
int adconz_old = 0;
unsigned int speedx; 
unsigned int speedy;
unsigned int speedz;

int flagx = 0;
int flagy = 0;
int flagz = 0;
int Delay = 130;  
int Sample_Delay = 50;



                             
int xy_upperstart = 138;      
int xy_lowerstart = 118;      
int z_upperstart = 138;      
int z_lowerstart = 118;      
int xy_upperlimit = 135;     
int xy_lowerlimit = 121;        
int z_upperlimit = 135;      
int z_lowerlimit = 121;      
                             

                             
int speed1_low = 50;         
int speed1_high = 250;      
int speed2_low = 500;       
int speed2_high = 2500;      
int speed3_low = 5000;      
int speed3_high = 25000;     
                             



char conv_speedx[8];
char conv_speedy[8];
char conv_speedz[8];
char USB_In_Buffer1[64];
char USB_Out_Buffer1[64];

char anthony_buffer[64];
char *convptr;

rom char *CR = '\r';
rom char *X0Cplus;
rom char *X0Cminus;
rom char *X0E1;
rom char *X0abort;
rom char *Y0Cplus;
rom char *Y0Cminus;
rom char *Y0E1;
rom char *Y0abort;
rom char *Z0Cplus;
rom char *Z0Cminus;
rom char *Z0E1;
rom char *Z0abort;

rom char *XLIMIT_LED_ON;
rom char *YLIMIT_LED_ON;
rom char *ZLIMIT_LED_ON;
rom char *XLIMIT_LED_OFF;
rom char *YLIMIT_LED_OFF;
rom char *ZLIMIT_LED_OFF;


void scanxyz(char speed)
	{
	X0Cplus = X0C_plus;
	X0Cminus = X0C_minus;
	X0E1 = X0E;
	X0abort = X0_abort;
	
	Y0Cplus = Y0C_plus;
	Y0Cminus = Y0C_minus;
	Y0E1 = Y0E;
	Y0abort = Y0_abort;

	Z0Cplus = Z0C_plus;
	Z0Cminus = Z0C_minus;
	Z0E1 = Z0E;
	Z0abort = Z0_abort;

	XLIMIT_LED_ON = X_LIMIT_LED_ON;
	YLIMIT_LED_ON = Y_LIMIT_LED_ON;
	ZLIMIT_LED_ON = Z_LIMIT_LED_ON;
	XLIMIT_LED_OFF = X_LIMIT_LED_OFF;
	YLIMIT_LED_OFF = Y_LIMIT_LED_OFF;
	ZLIMIT_LED_OFF = Z_LIMIT_LED_OFF;




	if (speed == '0') 
				{
				speed_ratio=speed1_high/speed1_low;   
				x=130*speed_ratio-160;                
				speed_factor_pos=x/(speed_ratio-1);
               
				x = speed_ratio*126 - 94;              
				speed_factor_neg = x/(speed_ratio-1);  
			

				 x = 160 - speed_factor_pos;         
				speed_mult = speed1_high/x;


				}
	if (speed == '1') 
				{
				speed_ratio=speed2_high/speed2_low;   
				x=130*speed_ratio-160;                
				speed_factor_pos=x/(speed_ratio-1);
               
				x = speed_ratio*126 - 94;              
				speed_factor_neg = x/(speed_ratio-1);  
			

				 x = 160 - speed_factor_pos;         
				speed_mult = speed2_high/x;


				}
	if (speed == '2') 
				{
				speed_ratio=speed3_high/speed3_low;   
				x=130*speed_ratio-160;                
				speed_factor_pos=x/(speed_ratio-1);
               
				x = speed_ratio*126 - 94;              
				speed_factor_neg = x/(speed_ratio-1);  
			

				 x = 160 - speed_factor_pos;         
				speed_mult = speed3_high/x;


				}

ADCON0bits.ADON = 0;
ADCON0bits.CHS0 = 0; 
ADCON0bits.CHS1 = 0;
ADCON0bits.CHS2 = 0;
ADCON0bits.CHS3 = 0;	
ADCON0bits.ADON = 1; 
ADCON0bits.GO_DONE = 1;  
while (ADCON0bits.GO_DONE == 1) 
	{
	}
adconx = ADRESH; 




ADCON0bits.ADON = 0;
ADCON0bits.CHS0 = 1; 
ADCON0bits.CHS1 = 0;
ADCON0bits.CHS2 = 0;
ADCON0bits.CHS3 = 0;	
ADCON0bits.ADON = 1; 
ADCON0bits.GO_DONE = 1;  
while (ADCON0bits.GO_DONE == 1) 
	{
	}
adcony = ADRESH; 




ADCON0bits.ADON = 0;
ADCON0bits.CHS0 = 0; 
ADCON0bits.CHS1 = 1;
ADCON0bits.CHS2 = 0;
ADCON0bits.CHS3 = 0;	
ADCON0bits.ADON = 1; 
ADCON0bits.GO_DONE = 1;  
while (ADCON0bits.GO_DONE == 1) 
	{
	}
adconz = ADRESH; 




if(adconx >= xy_upperstart || adconx <= xy_lowerstart || adcony >= xy_upperstart || adcony <= xy_lowerstart || adconz >= z_upperstart || adconz <= z_lowerstart)
{

	
	if (LIMIT_LED == TRUE) 
		{
		WriteSimpleStep(ZLIMIT_LED_ON);
		DelayMS(10);
		WriteSimpleStep(XLIMIT_LED_ON);
		DelayMS(10);
		WriteSimpleStep(YLIMIT_LED_ON);	
		DelayMS(10);
		}
		
	while(adconx >= xy_upperlimit || adconx <= xy_lowerlimit || adcony >= xy_upperlimit || adcony <= xy_lowerlimit || adconz >= z_upperlimit || adconz <= z_lowerlimit)
	
		{

#line 332 "C:\Users\Anthony\Documents\scanxyz.c"
 








		

RCSTAbits.CREN = 0;
Delay10KTCYx(Sample_Delay); 



ADCON0bits.ADON = 0;
ADCON0bits.CHS0 = 0; 
ADCON0bits.CHS1 = 0;
ADCON0bits.CHS2 = 0;
ADCON0bits.CHS3 = 0;	
ADCON0bits.ADON = 1; 
ADCON0bits.GO_DONE = 1;  
while (ADCON0bits.GO_DONE == 1) 
	{
	}
adconx = ADRESH; 




	if (adconx >= xy_upperlimit)
			{
			speedx = (adconx - speed_factor_pos);       
			speedx = speedx*speed_mult;                 
			itoa(speedx, conv_speedx);                  
			
			switch (flagx)
				{
				case 0:  
						WriteSimpleStep(X0E1);
						putsUSART(conv_speedx); 
						while((!TXSTAbits.TRMT) ){}
						WriteSimpleStep(CR);
						WriteSimpleStep(X0Cplus);

						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						adconx_old = adconx; 
						flagx = 1;           
						break;
				case 1:		
					if (adconx >= (adconx_old + 1) || adconx <= (adconx_old -1) ) 
							{	
							WriteSimpleStep(X0E1);
							putsUSART(conv_speedx); 
							while((!TXSTAbits.TRMT) ){}
							WriteSimpleStep(CR);
							adconx_old = adconx; 
							}
						flagx = 1;   
						break;		
			 	case 2:  
				
						WriteSimpleStep(X0abort);
						WriteSimpleStep(X0E1);
						putsUSART(conv_speedx); 
						while((!TXSTAbits.TRMT) ){}
						WriteSimpleStep(CR);
						WriteSimpleStep(X0Cplus);

						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						adconx_old = adconx; 
						flagx = 1; 
				}
			}



	if(adconx > xy_lowerlimit && adconx < xy_upperlimit) 
		{
		adconx_old=adconx;  
		if(flagx != 0)   
			{
		
			WriteSimpleStep(X0abort);
			for (i = 0;i<100; i++) 
				{
				Delay10TCYx(5);
				}
			flagx = 0;
			
			}
		}


		if (adconx <= xy_lowerlimit)
			{
			speedx = (speed_factor_neg - adconx);   
			speedx = speedx*speed_mult;             
			itoa(speedx, conv_speedx);              
			RCSTAbits.CREN = 1;
			switch (flagx)
				{
					 case 0:
						
						WriteSimpleStep(X0E1);
						putsUSART(conv_speedx); 
						while((!TXSTAbits.TRMT) ){}
						WriteSimpleStep(CR); 
						WriteSimpleStep(X0Cminus);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						adconx_old = adconx; 
						flagx = 2; 
						break;
			
					  case 1:  
					
						WriteSimpleStep(X0abort);
						WriteSimpleStep(X0E1);
						putsUSART(conv_speedx); 
						while((!TXSTAbits.TRMT) ){}
						WriteSimpleStep(CR);
						WriteSimpleStep(X0Cminus);

						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						adconx_old = adconx; 
						flagx = 2; 
						break;
				    case 2: 
						if (adconx >= (adconx_old + 1) || adconx <= (adconx_old -1) ) 
							{
							WriteSimpleStep(X0E1);
							putsUSART(conv_speedx); 
							while((!TXSTAbits.TRMT) ){}
							WriteSimpleStep(CR);
                        	adconx_old = adconx; 
							}
							
						flagx = 2; 
						break;
					} 
				RCSTAbits.CREN = 1;
				}



ADCON0bits.CHS0 = 1; 
ADCON0bits.CHS1 = 0;
ADCON0bits.CHS2 = 0;
ADCON0bits.CHS3 = 0;	
ADCON0bits.ADON = 1; 
ADCON0bits.GO_DONE = 1;  
while (ADCON0bits.GO_DONE == 1) 
	{
	}
adcony = ADRESH; 




		if (adcony >= xy_upperlimit)
			{
			speedy = (adcony - speed_factor_pos);       
			speedy = speedy*speed_mult;                 
			itoa(speedy, conv_speedy);                  
				
				switch (flagy)  
				{  
					case 0: 
						for(i=0; i<=3; i++)
							{
							WriteUSART(Y0E[i]);  
							while((!TXSTAbits.TRMT) )
								{
								}  
							}
						putsUSART(conv_speedy); 
						while((!TXSTAbits.TRMT) )
							{
							} 
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
							{
							} 
						for(i=0; i<=5; i++)
							{
							WriteUSART(Y0C_minus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}  
							} 
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						flagy = 2; 
				 		break;
					
					case 1:	 
						for(i=0; i<=4; i++)
							{
							WriteUSART(Y0_abort[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}  
							}
					
						for(i=0; i<=3; i++)
							{
							WriteUSART(Y0E[i]);  
							while((!TXSTAbits.TRMT) )
								{
								}  
							}
						putsUSART(conv_speedy); 
						while((!TXSTAbits.TRMT) )
							{
							} 
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
							{
							} 
						for(i=0; i<=5; i++)
							{
							WriteUSART(Y0C_minus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}  
							}  
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						flagy = 2; 
						break;
					case 2: 
						if	(adcony >= (adcony_old + 1) || adcony <= (adcony_old -1) )
							{
							for(i=0; i<=3; i++)
								{
								WriteUSART(Y0E[i]);
								while((!TXSTAbits.TRMT) )
									{
									}  
								}
							putsUSART(conv_speedy);
							while((!TXSTAbits.TRMT) )
									{
									}  
							WriteUSART('\r');
							while((!TXSTAbits.TRMT) )
								{
								} 
							adcony_old = adcony; 
							}
						flagy = 2;   
						break;

							
						}
				}


			if(adcony > xy_lowerlimit && adcony < xy_upperlimit) 
				{                                                
				adcony_old=adcony;  
				if(flagy != 0)
					{
					for(i=0; i<=4; i++)
						{
						WriteUSART(Y0_abort[i]); 
						while((!TXSTAbits.TRMT) )
								{
								}  
						}
				for (i = 0;i<100; i++) 
					{                  
					Delay10TCYx(5);
					}
						
				flagy = 0; 
					}
				}


		if (adcony <= xy_lowerlimit)
			{
			speedy = (speed_factor_neg - adcony);
			speedy = speedy*speed_mult; 
			itoa(speedy, conv_speedy);
			switch (flagy)
				{
					case 0:  
						
						for(i=0; i<=3; i++)
							{
							WriteUSART(Y0E[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}  
							}
						putsUSART(conv_speedy); 
						while((!TXSTAbits.TRMT) )
								{
								}  
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
								{
								}  
						for(i=0; i<=5; i++)
							{
							WriteUSART(Y0C_plus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}  
							} 
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						adcony_old = adcony; 
						flagy = 1;
						break;
					
					case 1:  
						if	(adcony >= (adcony_old + 1) || adcony <= (adcony_old -1) )
							{
							for(i=0; i<=3; i++)
								{
								WriteUSART(Y0E[i]); 
								while((!TXSTAbits.TRMT) )
									{
									}  
								}
							putsUSART(conv_speedy); 
							while((!TXSTAbits.TRMT) )
									{
									}  
							WriteUSART('\r'); 
							while((!TXSTAbits.TRMT) )
									{
									} 
							adcony_old = adcony; 
							} 
						flagy = 1; 
						break;
					case 2:  
						for(i=0; i<=4; i++)
							{
							WriteUSART(Y0_abort[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}   
							}
						
						for(i=0; i<=3; i++)
							{
							WriteUSART(Y0E[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}   
							}
						putsUSART(conv_speedy); 
						while((!TXSTAbits.TRMT) )
								{
								}  
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
								{
								}  
						for(i=0; i<=5; i++)
							{
							WriteUSART(Y0C_plus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}   
							}  
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						flagy = 1; 
						adcony_old = adcony; 
						LATDbits.LATD2 = ~LATDbits.LATD2;   
						break;                    
				}	
			}


ADCON0bits.ADON = 0;
ADCON0bits.CHS0 = 0; 
ADCON0bits.CHS1 = 1;
ADCON0bits.CHS2 = 0;
ADCON0bits.CHS3 = 0;	
ADCON0bits.ADON = 1; 
ADCON0bits.GO_DONE = 1;  
while (ADCON0bits.GO_DONE == 1) 
	{
	}
adconz = ADRESH; 


if (adconz >= z_upperlimit)
			{
			
				
			
				


			speedz = (adconz - speed_factor_pos);       
			speedz = speedz*speed_mult;                 
			if (speedz > 30000 && (adconz-speed_factor_pos) > 0) 
				{
				speedz = 30000;
				adconz = (speedz/speed_mult) + speed_factor_pos;   
				}
			itoa(speedz, conv_speedz);                  
				
				switch (flagz)  
				{  
					case 0: 
						for(i=0; i<=3; i++)
							{
							WriteUSART(Z0E[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}    
							}
						putsUSART(conv_speedz); 
						while((!TXSTAbits.TRMT) )
								{
								}   
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
								{
								}  
						for(i=0; i<=5; i++)
							{
							WriteUSART(Z0C_plus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}   
							}
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						flagz = 1; 
						adconz_old=adconz; 
				 		break;
					case 1: 
						if	(adconz >= (adconz_old + 1) || adconz <= (adconz_old -1) )
							{
							for(i=0; i<=3; i++)
								{
								WriteUSART(Z0E[i]); 
								while((!TXSTAbits.TRMT) )
									{
									}   
								}
							putsUSART(conv_speedz); 
							while((!TXSTAbits.TRMT) )
									{
									}   
							WriteUSART('\r'); 
							while((!TXSTAbits.TRMT) )
									{
									} 
							adconz_old=adconz;  
							}
						flagz = 1; 
						break;
					case 2:	
						for(i=0; i<=4; i++)
							{
							WriteUSART(Z0_abort[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}    
							}
					
						for(i=0; i<=3; i++)
							{
							WriteUSART(Z0E[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}    
							}
						putsUSART(conv_speedz); 
						while((!TXSTAbits.TRMT) )
								{
								}   
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
								{
								}   
						for(i=0; i<=5; i++)
							{
							WriteUSART(Z0C_plus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}    
							}
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						flagz = 1; 
						adconz_old=adconz;  
						break;
						}
				}

		if(adconz > z_lowerlimit && adconz < z_upperlimit) 
				{
				adconz_old=adconz;  
				if(flagz != 0)
					{
					for(i=0; i<=4; i++)
						{
						WriteUSART(Z0_abort[i]); 
						while((!TXSTAbits.TRMT) )
							{
							}  
						}
					for (i = 0;i<100; i++) 
						{                  
						Delay10TCYx(5);
						}
					flagz = 0;
					}
				}

		if (adconz <= z_lowerlimit)
			{


					
					
		


			speedz = (speed_factor_neg - adconz);
			speedz = speedz*speed_mult; 
			if (speedz > 30000 && (speed_factor_neg - adconz) >0 ) 
				{
				speedz = 30000;
	  			adconz = speed_factor_neg -(speedz/speed_mult);
				}
			itoa(speedz, conv_speedz);
			switch (flagz)
				{
					case 0:  
					
						for(i=0; i<=3; i++)
							{
							WriteUSART(Z0E[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}    
							}
						putsUSART(conv_speedz); 
						while((!TXSTAbits.TRMT) )
								{
								}   
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
								{
								}   
						for(i=0; i<=5; i++)
							{
							WriteUSART(Z0C_minus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}    
							}
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						flagz = 2; 
						adconz_old=adconz;  
						break;
					case 1:  
						for(i=0; i<=4; i++)
							{
							WriteUSART(Z0_abort[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}   
							}
					
						for(i=0; i<=3; i++)
							{
							WriteUSART(Z0E[i]); 
							while((!TXSTAbits.TRMT) )
								{
								}    
							}
						putsUSART(conv_speedz); 
						WriteUSART('\r'); 
						while((!TXSTAbits.TRMT) )
								{
								}  
						for(i=0; i<=5; i++)
							{
							WriteUSART(Z0C_minus[i]); 
							while((!TXSTAbits.TRMT) )
								{
								} 
							adconz_old=adconz;  
							}
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						flagz = 2;   
						break;                   
					case 2:  
						if	(adconz >= (adconz_old + 1) || adconz <= (adconz_old -1) )
							{
							for(i=0; i<=3; i++)
								{
								WriteUSART(Z0E[i]); 
								while((!TXSTAbits.TRMT) )
									{
									}    
								}
							putsUSART(conv_speedz); 
							while((!TXSTAbits.TRMT) )
									{
									}   
							WriteUSART('\r'); 
							while((!TXSTAbits.TRMT) )
									{
									}  
						adconz_old=adconz;  
						}
						flagz = 2; 
						
						break;
				}	
			}




	
	}
		if (LIMIT_LED == TRUE) 
		{
		WriteSimpleStep(XLIMIT_LED_OFF);
		DelayMS(10);
		WriteSimpleStep(ZLIMIT_LED_OFF	);
		DelayMS(10);
		WriteSimpleStep(YLIMIT_LED_OFF);
		DelayMS(10);
		}
}
	if (flagz != 0)
		{
	flagz = 0;
	
	for(i=0; i<=4; i++)
			{

			WriteUSART(Z0_abort[i]);
			while((!TXSTAbits.TRMT) )
						{
						}
			}
		for (i = 0;i<100; i++) 
			{
			Delay10TCYx(5);
			}
	
		}
	if (flagy != 0)
		{
		flagy = 0;
		for(i=0; i<=4; i++)
			{
			WriteUSART(Y0_abort[i]);
			while((!TXSTAbits.TRMT) )
						{
						} 
			}
		for (i = 0;i<100; i++) 
			{
			Delay10TCYx(5);
			}
		}
	if(flagx != 0)
		{
		flagx = 0;
	
			for(i=0; i<=4; i++)
				{
				
				WriteUSART(X0_abort[i]);
				while((!TXSTAbits.TRMT) )
					{
					}
				}
			for (i = 0;i<100; i++) 
				{
				Delay10TCYx(5);
				}
		
		
		}
	
}



void scanz(char speed)
{

char temp[];
flagz = 0;


	if (speed == '0') 
				{
				speed_ratio=speed1_high/speed1_low;   
				x=130*speed_ratio-160;                
				speed_factor_pos=x/(speed_ratio-1);
               
				x = speed_ratio*126 - 94;              
				speed_factor_neg = x/(speed_ratio-1);  
			

				 x = 160 - speed_factor_pos;         
				speed_mult = speed1_high/x;
				}
	if (speed == '1') 
				{
				speed_ratio=speed2_high/speed2_low;   
				x=130*speed_ratio-160;                
				speed_factor_pos=x/(speed_ratio-1);
               
				x = speed_ratio*126 - 94;              
				speed_factor_neg = x/(speed_ratio-1);  
			

				 x = 160 - speed_factor_pos;         
				speed_mult = speed2_high/x;
				}
	if (speed == '2') 
				{
				speed_ratio=speed3_high/speed3_low;   
				x=130*speed_ratio-160;                
				speed_factor_pos=x/(speed_ratio-1);
               
				x = speed_ratio*126 - 94;              
				speed_factor_neg = x/(speed_ratio-1);  
			

				 x = 160 - speed_factor_pos;         
				speed_mult = speed3_high/x;
				}


	
	ADCON0bits.ADON = 0;
	ADCON0bits.CHS0 = 0; 
	ADCON0bits.CHS1 = 1;
	ADCON0bits.CHS2 = 0;
	ADCON0bits.CHS3 = 0;	
	ADCON0bits.ADON = 1; 
	ADCON0bits.GO_DONE = 1;  
	while (ADCON0bits.GO_DONE == 1) 
		{
		}
	adconz = ADRESH; 

	if(adconz > z_upperstart)
		{
		adconz_old = 128;
		if (LIMIT_LED == TRUE) {WriteSimpleStep(ZLIMIT_LED_ON);} 
	
		while(adconz > xy_upperlimit)
			{
			Delay10KTCYx(Sample_Delay); 
			ADCON0bits.ADON = 0;
			ADCON0bits.CHS0 = 0; 
			ADCON0bits.CHS1 = 1;
			ADCON0bits.CHS2 = 0;
			ADCON0bits.CHS3 = 0;	
			ADCON0bits.ADON = 1; 
			ADCON0bits.GO_DONE = 1;  
			while (ADCON0bits.GO_DONE == 1) 
				{
				}
			adconz = ADRESH; 
			speedz = (adconz - speed_factor_pos);       
			speedz = speedz*speed_mult;               
			if (speedz > 30000 && (adconz-speed_factor_pos)>0)  
				{
				speedz = 30000;
				adconz = (speedz/speed_mult) + speed_factor_pos;
				}
			itoa(speedz, conv_speedz);
			if (flagz == 2) 
				{
				for(i=0; i<=4; i++)
					{
					WriteUSART(Z0_abort[i]); 
					while((!TXSTAbits.TRMT) )
						{
						}
					}
				flagz == 0; 
				}
	
			if	(adconz >= (adconz_old + 1) || adconz <= (adconz_old -1) )
				{
				for(i=0; i<=3; i++)
					{
					WriteUSART(Z0E[i]); 
					while((!TXSTAbits.TRMT) )
						{
						}    
					}
				putsUSART(conv_speedz); 
				while((!TXSTAbits.TRMT) )
					{
					}   
				WriteUSART('\r'); 
				while((!TXSTAbits.TRMT) )
					{
					} 
				adconz_old = adconz;
				}  
			if (flagz == 0)
				{
				for(i=0; i<=5; i++)
					{
					WriteUSART(Z0C_plus[i]); 
					while((!TXSTAbits.TRMT) )
						{
						}   
					}
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay);
						Delay10KTCYx(Delay); 
				flagz = 1; 
				}	
		     
				                       
					
				
			}
		flagz = 0;
		for(i=0; i<=4; i++)
			{
			WriteUSART(Z0_abort[i]);
			while((!TXSTAbits.TRMT) )
				{
				}
			}
		
		for (i = 0;i<100; i++) 
			{
			Delay10TCYx(5);
			}
		if (LIMIT_LED == TRUE) {WriteSimpleStep(ZLIMIT_LED_OFF);}	
	}

	if(adconz < z_lowerstart)
		{
		adconz_old = 128;
		if (LIMIT_LED == TRUE) {WriteSimpleStep(ZLIMIT_LED_ON);}
		while(adconz < z_lowerlimit)
			{
			Delay10KTCYx(Sample_Delay); 
			
			ADCON0bits.ADON = 0;
			ADCON0bits.CHS0 = 0; 
			ADCON0bits.CHS1 = 1;
			ADCON0bits.CHS2 = 0;
			ADCON0bits.CHS3 = 0;	
			ADCON0bits.ADON = 1; 
			ADCON0bits.GO_DONE = 1;  
			while (ADCON0bits.GO_DONE == 1) 
				{
				}
			adconz = ADRESH; 
			speedz = (speed_factor_neg - adconz);
			speedz = speedz*speed_mult; 
	
			if (speedz > 30000 && (speed_factor_neg - adconz) >0 )  
				{
				speedz = 30000;
				adconz = speed_factor_neg -(speedz/speed_mult);
				}
			
			itoa(speedz, conv_speedz); 
	
			if (flagz == 1) 
				{
				for(i=0; i<=4; i++)
					{
					WriteUSART(Z0_abort[i]); 
					while((!TXSTAbits.TRMT) )
						{
						}
					}
				flagz == 0; 
				}
	
	  		if	(adconz >= (adconz_old + 1) || adconz <= (adconz_old -1) )
				{                       
				for(i=0; i<=3; i++)
					{
					WriteUSART(Z0E[i]); 
					while((!TXSTAbits.TRMT) )
						{
						}    
					}
					putsUSART(conv_speedz); 
					while((!TXSTAbits.TRMT) )
						{
						}   
					WriteUSART('\r'); 
					while((!TXSTAbits.TRMT) )
						{
						} 
				adconz_old = adconz;
				} 
				if (flagz == 0)
					{ 
					for(i=0; i<=5; i++)
						{
						WriteUSART(Z0C_minus[i]); 
						while((!TXSTAbits.TRMT) )
							{
							}   
						}
					Delay10KTCYx(Delay);
					Delay10KTCYx(Delay);
					Delay10KTCYx(Delay);
					Delay10KTCYx(Delay);
					flagz = 2; 
					}	
			
			}
		flagz = 0;
		for(i=0; i<=4; i++)
			{
			WriteUSART(Z0_abort[i]);
			while((!TXSTAbits.TRMT) )
				{
				}
			}
		for (i = 0;i<100; i++) 
			{
			Delay10TCYx(5);
			}	
		if (LIMIT_LED == TRUE) {WriteSimpleStep(ZLIMIT_LED_OFF);}
		}

	
		
}


