---
title:  The Background Thread
author: savannah
image: background-thread.png
chapter: 21
---
The background thread, which is responsible for freeing memory, runs when the OS notices that there are fewer than a low watermark amount of pages available. It evicts pages until a high watermark amount of free pages is available. After it's done, the background thread "goes to sleep," happy that it has freed some memory for running processes and the OS to use. (chapter 21, page 7)
