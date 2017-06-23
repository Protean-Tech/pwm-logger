_CLKMODE = XTAL1 + PLL16X
_CLKFREQ = 80_000_000

VAR
	LONG SPIN_SHOULD_ECHO

PUB main

	SPIN_SHOULD_ECHO := 1
	HUB_SHOULD_ECHO := @SPIN_SHOULD_ECHO
   	cognew(@I2C_DRIVER, 0)
   	cognew(@PWM_WATCHER, 0)

DAT
#include "pwm-cog.s"
#include "i2c-cog.s"
