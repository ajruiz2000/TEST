/*******************************************************************************
  GPIO PLIB

  Company:
    Microchip Technology Inc.

  File Name:
    plib_gpio.h

  Summary:
    GPIO PLIB Header File

  Description:
    This library provides an interface to control and interact with Parallel
    Input/Output controller (GPIO) module.

*******************************************************************************/

/*******************************************************************************
* Copyright (C) 2019 Microchip Technology Inc. and its subsidiaries.
*
* Subject to your compliance with these terms, you may use Microchip software
* and any derivatives exclusively with Microchip products. It is your
* responsibility to comply with third party license terms applicable to your
* use of third party software (including open source software) that may
* accompany Microchip software.
*
* THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
* EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
* WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
* PARTICULAR PURPOSE.
*
* IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
* INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
* WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
* BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
* FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
* ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
* THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.
*******************************************************************************/

#ifndef PLIB_GPIO_H
#define PLIB_GPIO_H

#include <device.h>
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif
// DOM-IGNORE-END

// *****************************************************************************
// *****************************************************************************
// Section: Data types and constants
// *****************************************************************************
// *****************************************************************************


/*** Macros for Chiller_cont pin ***/
#define Chiller_cont_Set()               (LATESET = (1<<5))
#define Chiller_cont_Clear()             (LATECLR = (1<<5))
#define Chiller_cont_Toggle()            (LATEINV= (1<<5))
#define Chiller_cont_OutputEnable()      (TRISECLR = (1<<5))
#define Chiller_cont_InputEnable()       (TRISESET = (1<<5))
#define Chiller_cont_Get()               ((PORTE >> 5) & 0x1)
#define Chiller_cont_PIN                  GPIO_PIN_RE5

/*** Macros for Athena_cont pin ***/
#define Athena_cont_Set()               (LATESET = (1<<6))
#define Athena_cont_Clear()             (LATECLR = (1<<6))
#define Athena_cont_Toggle()            (LATEINV= (1<<6))
#define Athena_cont_OutputEnable()      (TRISECLR = (1<<6))
#define Athena_cont_InputEnable()       (TRISESET = (1<<6))
#define Athena_cont_Get()               ((PORTE >> 6) & 0x1)
#define Athena_cont_PIN                  GPIO_PIN_RE6

/*** Macros for HT_cont pin ***/
#define HT_cont_Set()               (LATGSET = (1<<6))
#define HT_cont_Clear()             (LATGCLR = (1<<6))
#define HT_cont_Toggle()            (LATGINV= (1<<6))
#define HT_cont_OutputEnable()      (TRISGCLR = (1<<6))
#define HT_cont_InputEnable()       (TRISGSET = (1<<6))
#define HT_cont_Get()               ((PORTG >> 6) & 0x1)
#define HT_cont_PIN                  GPIO_PIN_RG6

/*** Macros for OH_LED pin ***/
#define OH_LED_Set()               (LATGSET = (1<<7))
#define OH_LED_Clear()             (LATGCLR = (1<<7))
#define OH_LED_Toggle()            (LATGINV= (1<<7))
#define OH_LED_OutputEnable()      (TRISGCLR = (1<<7))
#define OH_LED_InputEnable()       (TRISGSET = (1<<7))
#define OH_LED_Get()               ((PORTG >> 7) & 0x1)
#define OH_LED_PIN                  GPIO_PIN_RG7

/*** Macros for FF_LED pin ***/
#define FF_LED_Set()               (LATGSET = (1<<8))
#define FF_LED_Clear()             (LATGCLR = (1<<8))
#define FF_LED_Toggle()            (LATGINV= (1<<8))
#define FF_LED_OutputEnable()      (TRISGCLR = (1<<8))
#define FF_LED_InputEnable()       (TRISGSET = (1<<8))
#define FF_LED_Get()               ((PORTG >> 8) & 0x1)
#define FF_LED_PIN                  GPIO_PIN_RG8

/*** Macros for FL_LED pin ***/
#define FL_LED_Set()               (LATGSET = (1<<9))
#define FL_LED_Clear()             (LATGCLR = (1<<9))
#define FL_LED_Toggle()            (LATGINV= (1<<9))
#define FL_LED_OutputEnable()      (TRISGCLR = (1<<9))
#define FL_LED_InputEnable()       (TRISGSET = (1<<9))
#define FL_LED_Get()               ((PORTG >> 9) & 0x1)
#define FL_LED_PIN                  GPIO_PIN_RG9

/*** Macros for LVL_switch pin ***/
#define LVL_switch_Set()               (LATBSET = (1<<5))
#define LVL_switch_Clear()             (LATBCLR = (1<<5))
#define LVL_switch_Toggle()            (LATBINV= (1<<5))
#define LVL_switch_OutputEnable()      (TRISBCLR = (1<<5))
#define LVL_switch_InputEnable()       (TRISBSET = (1<<5))
#define LVL_switch_Get()               ((PORTB >> 5) & 0x1)
#define LVL_switch_PIN                  GPIO_PIN_RB5

/*** Macros for OH_switch pin ***/
#define OH_switch_Set()               (LATBSET = (1<<4))
#define OH_switch_Clear()             (LATBCLR = (1<<4))
#define OH_switch_Toggle()            (LATBINV= (1<<4))
#define OH_switch_OutputEnable()      (TRISBCLR = (1<<4))
#define OH_switch_InputEnable()       (TRISBSET = (1<<4))
#define OH_switch_Get()               ((PORTB >> 4) & 0x1)
#define OH_switch_PIN                  GPIO_PIN_RB4

/*** Macros for RST_switch pin ***/
#define RST_switch_Set()               (LATBSET = (1<<3))
#define RST_switch_Clear()             (LATBCLR = (1<<3))
#define RST_switch_Toggle()            (LATBINV= (1<<3))
#define RST_switch_OutputEnable()      (TRISBCLR = (1<<3))
#define RST_switch_InputEnable()       (TRISBSET = (1<<3))
#define RST_switch_Get()               ((PORTB >> 3) & 0x1)
#define RST_switch_PIN                  GPIO_PIN_RB3

/*** Macros for PS_shut_off pin ***/
#define PS_shut_off_Set()               (LATBSET = (1<<2))
#define PS_shut_off_Clear()             (LATBCLR = (1<<2))
#define PS_shut_off_Toggle()            (LATBINV= (1<<2))
#define PS_shut_off_OutputEnable()      (TRISBCLR = (1<<2))
#define PS_shut_off_InputEnable()       (TRISBSET = (1<<2))
#define PS_shut_off_Get()               ((PORTB >> 2) & 0x1)
#define PS_shut_off_PIN                  GPIO_PIN_RB2

/*** Macros for FAN_cont pin ***/
#define FAN_cont_Set()               (LATBSET = (1<<1))
#define FAN_cont_Clear()             (LATBCLR = (1<<1))
#define FAN_cont_Toggle()            (LATBINV= (1<<1))
#define FAN_cont_OutputEnable()      (TRISBCLR = (1<<1))
#define FAN_cont_InputEnable()       (TRISBSET = (1<<1))
#define FAN_cont_Get()               ((PORTB >> 1) & 0x1)
#define FAN_cont_PIN                  GPIO_PIN_RB1

/*** Macros for Temp_switch pin ***/
#define Temp_switch_Set()               (LATBSET = (1<<0))
#define Temp_switch_Clear()             (LATBCLR = (1<<0))
#define Temp_switch_Toggle()            (LATBINV= (1<<0))
#define Temp_switch_OutputEnable()      (TRISBCLR = (1<<0))
#define Temp_switch_InputEnable()       (TRISBSET = (1<<0))
#define Temp_switch_Get()               ((PORTB >> 0) & 0x1)
#define Temp_switch_PIN                  GPIO_PIN_RB0

/*** Macros for GPIO_RD1 pin ***/
#define GPIO_RD1_Set()               (LATDSET = (1<<1))
#define GPIO_RD1_Clear()             (LATDCLR = (1<<1))
#define GPIO_RD1_Toggle()            (LATDINV= (1<<1))
#define GPIO_RD1_OutputEnable()      (TRISDCLR = (1<<1))
#define GPIO_RD1_InputEnable()       (TRISDSET = (1<<1))
#define GPIO_RD1_Get()               ((PORTD >> 1) & 0x1)
#define GPIO_RD1_PIN                  GPIO_PIN_RD1

/*** Macros for R_LED_2 pin ***/
#define R_LED_2_Set()               (LATESET = (1<<1))
#define R_LED_2_Clear()             (LATECLR = (1<<1))
#define R_LED_2_Toggle()            (LATEINV= (1<<1))
#define R_LED_2_OutputEnable()      (TRISECLR = (1<<1))
#define R_LED_2_InputEnable()       (TRISESET = (1<<1))
#define R_LED_2_Get()               ((PORTE >> 1) & 0x1)
#define R_LED_2_PIN                  GPIO_PIN_RE1

/*** Macros for G_LED_2 pin ***/
#define G_LED_2_Set()               (LATESET = (1<<2))
#define G_LED_2_Clear()             (LATECLR = (1<<2))
#define G_LED_2_Toggle()            (LATEINV= (1<<2))
#define G_LED_2_OutputEnable()      (TRISECLR = (1<<2))
#define G_LED_2_InputEnable()       (TRISESET = (1<<2))
#define G_LED_2_Get()               ((PORTE >> 2) & 0x1)
#define G_LED_2_PIN                  GPIO_PIN_RE2

/*** Macros for R_LED_1 pin ***/
#define R_LED_1_Set()               (LATESET = (1<<3))
#define R_LED_1_Clear()             (LATECLR = (1<<3))
#define R_LED_1_Toggle()            (LATEINV= (1<<3))
#define R_LED_1_OutputEnable()      (TRISECLR = (1<<3))
#define R_LED_1_InputEnable()       (TRISESET = (1<<3))
#define R_LED_1_Get()               ((PORTE >> 3) & 0x1)
#define R_LED_1_PIN                  GPIO_PIN_RE3

/*** Macros for G_LED_1 pin ***/
#define G_LED_1_Set()               (LATESET = (1<<4))
#define G_LED_1_Clear()             (LATECLR = (1<<4))
#define G_LED_1_Toggle()            (LATEINV= (1<<4))
#define G_LED_1_OutputEnable()      (TRISECLR = (1<<4))
#define G_LED_1_InputEnable()       (TRISESET = (1<<4))
#define G_LED_1_Get()               ((PORTE >> 4) & 0x1)
#define G_LED_1_PIN                  GPIO_PIN_RE4


// *****************************************************************************
/* GPIO Port

  Summary:
    Identifies the available GPIO Ports.

  Description:
    This enumeration identifies the available GPIO Ports.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all ports are available on all devices.  Refer to the specific
    device data sheet to determine which ports are supported.
*/

typedef enum
{
    GPIO_PORT_B = 0,
    GPIO_PORT_C = 1,
    GPIO_PORT_D = 2,
    GPIO_PORT_E = 3,
    GPIO_PORT_F = 4,
    GPIO_PORT_G = 5,
} GPIO_PORT;

// *****************************************************************************
/* GPIO Port Pins

  Summary:
    Identifies the available GPIO port pins.

  Description:
    This enumeration identifies the available GPIO port pins.

  Remarks:
    The caller should not rely on the specific numbers assigned to any of
    these values as they may change from one processor to the next.

    Not all pins are available on all devices.  Refer to the specific
    device data sheet to determine which pins are supported.
*/

typedef enum
{
    GPIO_PIN_RB0 = 0,
    GPIO_PIN_RB1 = 1,
    GPIO_PIN_RB2 = 2,
    GPIO_PIN_RB3 = 3,
    GPIO_PIN_RB4 = 4,
    GPIO_PIN_RB5 = 5,
    GPIO_PIN_RB6 = 6,
    GPIO_PIN_RB7 = 7,
    GPIO_PIN_RB8 = 8,
    GPIO_PIN_RB9 = 9,
    GPIO_PIN_RB10 = 10,
    GPIO_PIN_RB11 = 11,
    GPIO_PIN_RB12 = 12,
    GPIO_PIN_RB13 = 13,
    GPIO_PIN_RB14 = 14,
    GPIO_PIN_RB15 = 15,
    GPIO_PIN_RC12 = 28,
    GPIO_PIN_RC13 = 29,
    GPIO_PIN_RC14 = 30,
    GPIO_PIN_RC15 = 31,
    GPIO_PIN_RD0 = 32,
    GPIO_PIN_RD1 = 33,
    GPIO_PIN_RD2 = 34,
    GPIO_PIN_RD3 = 35,
    GPIO_PIN_RD4 = 36,
    GPIO_PIN_RD5 = 37,
    GPIO_PIN_RD6 = 38,
    GPIO_PIN_RD7 = 39,
    GPIO_PIN_RD8 = 40,
    GPIO_PIN_RD9 = 41,
    GPIO_PIN_RD10 = 42,
    GPIO_PIN_RD11 = 43,
    GPIO_PIN_RE0 = 48,
    GPIO_PIN_RE1 = 49,
    GPIO_PIN_RE2 = 50,
    GPIO_PIN_RE3 = 51,
    GPIO_PIN_RE4 = 52,
    GPIO_PIN_RE5 = 53,
    GPIO_PIN_RE6 = 54,
    GPIO_PIN_RE7 = 55,
    GPIO_PIN_RF0 = 64,
    GPIO_PIN_RF1 = 65,
    GPIO_PIN_RF3 = 67,
    GPIO_PIN_RF4 = 68,
    GPIO_PIN_RF5 = 69,
    GPIO_PIN_RG2 = 82,
    GPIO_PIN_RG3 = 83,
    GPIO_PIN_RG6 = 86,
    GPIO_PIN_RG7 = 87,
    GPIO_PIN_RG8 = 88,
    GPIO_PIN_RG9 = 89,

    /* This element should not be used in any of the GPIO APIs.
       It will be used by other modules or application to denote that none of the GPIO Pin is used */
    GPIO_PIN_NONE = -1

} GPIO_PIN;

typedef enum
{
  CN0_PIN = 1 << 0,
  CN1_PIN = 1 << 1,
  CN2_PIN = 1 << 2,
  CN3_PIN = 1 << 3,
  CN4_PIN = 1 << 4,
  CN5_PIN = 1 << 5,
  CN6_PIN = 1 << 6,
  CN7_PIN = 1 << 7,
  CN8_PIN = 1 << 8,
  CN9_PIN = 1 << 9,
  CN10_PIN = 1 << 10,
  CN11_PIN = 1 << 11,
  CN12_PIN = 1 << 12,
  CN13_PIN = 1 << 13,
  CN14_PIN = 1 << 14,
  CN15_PIN = 1 << 15,
  CN16_PIN = 1 << 16,
  CN17_PIN = 1 << 17,
  CN18_PIN = 1 << 18,
}CN_PIN;


void GPIO_Initialize(void);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on multiple pins of a port
// *****************************************************************************
// *****************************************************************************

uint32_t GPIO_PortRead(GPIO_PORT port);

void GPIO_PortWrite(GPIO_PORT port, uint32_t mask, uint32_t value);

uint32_t GPIO_PortLatchRead ( GPIO_PORT port );

void GPIO_PortSet(GPIO_PORT port, uint32_t mask);

void GPIO_PortClear(GPIO_PORT port, uint32_t mask);

void GPIO_PortToggle(GPIO_PORT port, uint32_t mask);

void GPIO_PortInputEnable(GPIO_PORT port, uint32_t mask);

void GPIO_PortOutputEnable(GPIO_PORT port, uint32_t mask);

// *****************************************************************************
// *****************************************************************************
// Section: GPIO Functions which operates on one pin at a time
// *****************************************************************************
// *****************************************************************************

static inline void GPIO_PinWrite(GPIO_PIN pin, bool value)
{
    GPIO_PortWrite((GPIO_PORT)(pin>>4), (uint32_t)(0x1) << (pin & 0xF), (uint32_t)(value) << (pin & 0xF));
}

static inline bool GPIO_PinRead(GPIO_PIN pin)
{
    return (bool)(((GPIO_PortRead((GPIO_PORT)(pin>>4))) >> (pin & 0xF)) & 0x1);
}

static inline bool GPIO_PinLatchRead(GPIO_PIN pin)
{
    return (bool)((GPIO_PortLatchRead((GPIO_PORT)(pin>>4)) >> (pin & 0xF)) & 0x1);
}

static inline void GPIO_PinToggle(GPIO_PIN pin)
{
    GPIO_PortToggle((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinSet(GPIO_PIN pin)
{
    GPIO_PortSet((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinClear(GPIO_PIN pin)
{
    GPIO_PortClear((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinInputEnable(GPIO_PIN pin)
{
    GPIO_PortInputEnable((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}

static inline void GPIO_PinOutputEnable(GPIO_PIN pin)
{
    GPIO_PortOutputEnable((GPIO_PORT)(pin>>4), 0x1 << (pin & 0xF));
}


// DOM-IGNORE-BEGIN
#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif
// DOM-IGNORE-END
#endif // PLIB_GPIO_H
