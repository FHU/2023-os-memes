---
title:  Privileged Mode
author: Sam
image: privileged_mode_meme.jpg
chapter: 15
---
The hardware should provide special instructions to modify the base and bounds registers, allowing the OS to change them when different processes run. These instructions are privileged; only in kernel (or privileged) mode can the registers be modified.
Privileged mode is needed to prevent user-mode processes from executing privileged operations. 