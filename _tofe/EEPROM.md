---
layout: default
title: TOFE - ID EEPROM Format
published: true
tags: hardware, tofe, eeprom
---

# TOFE ID EEPROM Format

All TOFE boards are required to have an I2C compatible EEPROM (or something
which emulates an ID EEPROM) which describes the expansion board.

The EEPROM must be at either;

 * 0x50 for single byte addressable EEPROMs (1 byte address gives 256 max contents)
 * 0x51 for double byte addressable EEPROMs (2 bytes address gives ~64k max contents)

TODO: This information should be in something other then Google Docs.
TODO: Publish tools for working with this format.

<iframe 
 style="width: 100%; height: 100%; min-height: 500px;"
 src="https://docs.google.com/document/d/11qzkDz9E9mbkypsG3IesmIMugjmczAcLZrlxBgfmpLU/pub?embedded=true"></iframe>

