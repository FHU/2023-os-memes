---
title: Segmentation 
author: Griz
image: external_frag.jpg
chapter: 16
---
The OS could stop whichever processes are running, copy their data to one contiguous region of memory, change their segment register values to point to the new physical locations, and thus have a large free extent of memory with which to work. By doing so, the OS enables the new allocation request to succeed but compacting is also expensive. Just something you have to think about.