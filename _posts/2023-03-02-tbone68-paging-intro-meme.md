---
title: Paging
author: Griz
image: invalid_termination.jpg
chapter: 18
---
All the unused space in-between the address space and stack will be marked invalid, and if the process tries to access such memory, it will generate a trap to the OS which will likely terminate the process.