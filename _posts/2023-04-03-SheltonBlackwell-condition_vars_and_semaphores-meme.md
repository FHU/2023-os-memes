---
title:  all about semaphores
author: tbone
image: semaphore.jpg
chapter: 30
---
the introduction of a synchronization primitive called the semaphore. 
A semaphore is an object with an integer value that we can manipulate with two routines. Because the initial value of the semaphore determines its behavior, before calling any other routine to interact with the semaphore, we must first initialize it with a value. Semaphore can also be used as a lock (aka binary semaphore). additionally semaphores are also useful to order events in a concurrent program.