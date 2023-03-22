---
title: Spin Lock
author: lisa
image: LRSpinningThread.jpg
chapter: 28
---
A spin lock is a working approach that provides mutual exclusion to threads and gives more control to developers when writing processes that run concurrently. The problem is that they are not very efficient. When one thread has the lock and is executing the critical section of code, any other thread that wants to run that critical section has to continually wait for the first thread to finish. This waiting, with a spin lock implementation, is not efficient at all and even requires excess and unnecessary CPU output (pg. 9-10).
